/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.controller.vo.ColumnInfoVO;
import com.wangyin.wycds.web.dal.datainterface.ColumnInfoDAO;
import com.wangyin.wycds.web.dal.dataobject.ColumnInfoDO;
import com.wangyin.wycds.web.util.ColumnInfoUtil;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 切分键映射表字段信息管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 17:26 Exp $$
 */
@Service
public class ColumnInfoService {

    @Autowired
    private ColumnInfoDAO columnInfoDAO;

    public List<ColumnInfoVO> getColumnInfoList(Paginator paginator) {
        List<ColumnInfoDO> columnInfoDOList = columnInfoDAO.getColumnInfoList(paginator);
        return ColumnInfoUtil.convert2VOList(columnInfoDOList);
    }

    public Integer getColumnInfoListCount() {
        return columnInfoDAO.getColumnInfoListCount();
    }

    public Integer getColumnInfoAndClassCount(ColumnInfoVO columnInfoVO) {
        return columnInfoDAO.getColumnInfoAndClassCount(columnInfoVO);
    }

    public List<ColumnInfoVO> getColumnInfoAndClass(ColumnInfoVO columnInfoVO, Paginator paginator) {
        List<ColumnInfoDO> columnInfoDOList = columnInfoDAO.getColumnInfoAndClass(columnInfoVO, paginator.getBeginIndex(), paginator.getItemsPerPage());
        return ColumnInfoUtil.convert2VOList(columnInfoDOList);
    }

    public ColumnInfoVO getColumnInfo(String id) {
        return ColumnInfoUtil.convert2VO(columnInfoDAO.getColumnInfo(id));
    }

    public boolean insertColumnInfo(String[] columns, String splittingKeyId, String clusterId,String tableName,String userName) {
        if(ArrayUtils.isEmpty(columns)|| StringUtils.isBlank(splittingKeyId)||StringUtils.isBlank(tableName)){
            return false;
        }
        ColumnInfoDO columnInfoDO=new ColumnInfoDO();
        columnInfoDO.setSplittingKeyId(splittingKeyId);
        columnInfoDO.setTableName(tableName);
        columnInfoDO.setClusterId(clusterId);
        columnInfoDO.setCreateBy(userName);
        columnInfoDO.setModifiedBy(userName);
        for(String column :columns){
            columnInfoDO.setColumnName(column);
            columnInfoDAO.insertColumnInfo(columnInfoDO);
        }
        return true;
    }

    public boolean updateColumnInfo(ColumnInfoVO columnInfoVO) {
        return ColumnInfoUtil.checkIsOne(columnInfoDAO.updateColumnInfo(ColumnInfoUtil.convert2DO(columnInfoVO)));
    }

    public boolean deleteColumnInfo(String id,String modifiedBy) {
        return ColumnInfoUtil.checkIsOne(columnInfoDAO.deleteColumnInfo(id,modifiedBy));
    }
}
