/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.controller.vo.SplittingKeyVO;
import com.wangyin.wycds.web.dal.datainterface.SplittingKeyDAO;
import com.wangyin.wycds.web.dal.dataobject.SplittingKeyDO;
import com.wangyin.wycds.web.util.SplittingKeyUtil;
import com.wangyin.wycds.web.util.Paginator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 切分键基本信息管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 15:57 Exp $$
 */
@Service
public class SplittingKeyService {
    @Autowired
    private SplittingKeyDAO splittingKeyDAO;

    public List<SplittingKeyVO> getSplittingKeyListNoPaginator() {
        List<SplittingKeyDO> splittingKeyDOList = splittingKeyDAO.getSplittingKeyListNoPaginator();
        return SplittingKeyUtil.convert2VOList(splittingKeyDOList);
    }
    
    public List<SplittingKeyVO> getSplittingKeyList(Paginator paginator) {
        List<SplittingKeyDO> splittingKeyDOList = splittingKeyDAO.getSplittingKeyList(paginator);
        return SplittingKeyUtil.convert2VOList(splittingKeyDOList);
    }

    public Integer getSplittingKeyListCount() {
        return splittingKeyDAO.getSplittingKeyListCount();
    }

    public Integer getSplittingKeyAndClassCount(SplittingKeyVO splittingKeyVO) {
        return splittingKeyDAO.getSplittingKeyAndClassCount(splittingKeyVO);
    }

    public List<SplittingKeyVO> getSplittingKeyAndClass(SplittingKeyVO splittingKeyVO, Paginator paginator) {
        List<SplittingKeyDO> splittingKeyDOList = splittingKeyDAO.getSplittingKeyAndClass(splittingKeyVO, paginator.getBeginIndex(), paginator.getItemsPerPage());
        return SplittingKeyUtil.convert2VOList(splittingKeyDOList);
    }

    public SplittingKeyVO getSplittingKey(String id) {
        return SplittingKeyUtil.convert2VO(splittingKeyDAO.getSplittingKey(id));
    }

    public boolean insertSplittingKey(SplittingKeyVO splittingKeyVO) {
        return SplittingKeyUtil.checkIsOne(splittingKeyDAO.insertSplittingKey(SplittingKeyUtil.convert2DO(splittingKeyVO)));
    }

    public boolean updateSplittingKey(SplittingKeyVO splittingKeyVO) {
        return SplittingKeyUtil.checkIsOne(splittingKeyDAO.updateSplittingKey(SplittingKeyUtil.convert2DO(splittingKeyVO)));
    }

    public boolean deleteSplittingKey(String id,String modifiedBy) {
        return SplittingKeyUtil.checkIsOne(splittingKeyDAO.deleteSplittingKey(id,modifiedBy));
    }
}
