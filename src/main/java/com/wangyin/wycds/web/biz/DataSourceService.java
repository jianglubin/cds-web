/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.dal.datainterface.DataSourceDAO;
import com.wangyin.wycds.web.dal.dataobject.DataSourceDO;
import com.wangyin.wycds.web.util.DataSourceUtil;
import com.wangyin.wycds.web.util.Paginator;
import com.wangyin.wycds.web.controller.vo.DataSourceVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 数据源管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 21:08 Exp $$
 */
@Service
public class DataSourceService {

    @Autowired
    private DataSourceDAO dataSourceDAO;

    public List<DataSourceVO> getDataSourceList(Paginator paginator) {
        List<DataSourceDO> dataSourceDOList = dataSourceDAO.getDataSourceList(paginator);
        return DataSourceUtil.convert2VOList(dataSourceDOList);
    }

    public Integer getDataSourceListCount() {
        return dataSourceDAO.getDataSourceListCount();
    }

    public Integer getDataSourceAndClassCount(DataSourceVO dataSourceVO) {
        return dataSourceDAO.getDataSourceAndClassCount(dataSourceVO);
    }

    public List<DataSourceVO> getDataSourceAndClass(DataSourceVO dataSourceVO, Paginator paginator) {
        List<DataSourceDO> dataSourceDOList = dataSourceDAO.getDataSourceAndClass(dataSourceVO, paginator.getBeginIndex(), paginator.getItemsPerPage());
        return DataSourceUtil.convert2VOList(dataSourceDOList);
    }

    public DataSourceVO getDataSource(String id) {
        return DataSourceUtil.convert2VO(dataSourceDAO.getDataSource(id));
    }

    public boolean insertDataSource(DataSourceVO dataSourceVO) {
        return DataSourceUtil.checkIsOne(dataSourceDAO.insertDataSource(DataSourceUtil.convert2DO(dataSourceVO)));
    }

    public boolean updateDataSource(DataSourceVO dataSourceVO) {
        return DataSourceUtil.checkIsOne(dataSourceDAO.updateDataSource(DataSourceUtil.convert2DO(dataSourceVO)));
    }

    public boolean deleteDataSource(String id, String modifiedBy) {
        return DataSourceUtil.checkIsOne(dataSourceDAO.deleteDataSource(id, modifiedBy));
    }
}
