/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.dal.datainterface.DbMonitorInstanceDAO;
import com.wangyin.wycds.web.dal.dataobject.DbMonitorInstanceDO;
import com.wangyin.wycds.web.util.DateUtils;
import org.apache.commons.collections.CollectionUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.SimpleTimeZone;

/**
 * 监控数据展示业务封装类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/29 18:09 Exp $$
 */
@Service
public class DbMonitorInstanceService {

    Logger logger = Logger.getLogger(DbMonitorInstanceService.class);
    @Autowired
    private DbMonitorInstanceDAO dbMonitorInstanceDAO;

    public List<String> getMonitorItem() {
        return dbMonitorInstanceDAO.getDbMonitorItem();
    }

    public List<double[]> getAllInstances(String item) {
        List<double[]> instances = new ArrayList<double[]>();
        DbMonitorInstanceDO dbMonitorInstanceDO = new DbMonitorInstanceDO();
        dbMonitorInstanceDO.setMonitorItem(item);
        List<DbMonitorInstanceDO> dbMonitorInstanceDOs = dbMonitorInstanceDAO.getDbMonitorInstanceAndClass(dbMonitorInstanceDO, null, null);
        if (CollectionUtils.isEmpty(dbMonitorInstanceDOs)) {
            return null;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        sdf.setTimeZone(new SimpleTimeZone(SimpleTimeZone.UTC_TIME, "UTC"));
        for (DbMonitorInstanceDO instanceDO : dbMonitorInstanceDOs) {
            Date createDate = null;
            try {
                createDate = sdf.parse(instanceDO.getCreationDate());
            } catch (ParseException e) {
                logger.error("时间转换错误", e);
            }
            double[] showData = {createDate.getTime(), Double.valueOf(instanceDO.getMonitorValue())};
            instances.add(showData);
        }
        return instances;
    }

    public List<double[]> getNewInstances(String item, int timeStep) {
        List<double[]> instances = new ArrayList<double[]>();
        DbMonitorInstanceDO dbMonitorInstanceDO = new DbMonitorInstanceDO();
        dbMonitorInstanceDO.setMonitorItem(item);
        Date endTime = new Date();
        Date beginTime = DateUtils.decreaseMinutes(endTime, timeStep);
        List<DbMonitorInstanceDO> dbMonitorInstanceDOs = dbMonitorInstanceDAO.getDbMonitorInstanceAndClass(dbMonitorInstanceDO, beginTime, endTime);
        if (CollectionUtils.isEmpty(dbMonitorInstanceDOs)) {
            return null;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        sdf.setTimeZone(new SimpleTimeZone(SimpleTimeZone.UTC_TIME, "UTC"));
        for (DbMonitorInstanceDO instanceDO : dbMonitorInstanceDOs) {
            Date createDate = null;
            try {
                createDate = sdf.parse(instanceDO.getCreationDate());
            } catch (ParseException e) {
                logger.error("时间转换错误", e);
            }
            double[] showData = {createDate.getTime(), Double.valueOf(instanceDO.getMonitorValue())};
            instances.add(showData);
        }
        return instances;
    }
}
