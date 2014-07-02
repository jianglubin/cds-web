/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.controller.vo.ResourcesCategoryVO;
import com.wangyin.wycds.web.controller.vo.TreeVO;
import com.wangyin.wycds.web.dal.datainterface.ResourcesCategoryDAO;
import com.wangyin.wycds.web.dal.dataobject.ResourcesCategoryDO;
import com.wangyin.wycds.web.util.ConvertUtil;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 资源类目业务类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/7/1 16:25 Exp $$
 */
@Service
public class ResourcesCategoryService {

    @Autowired
    private ResourcesCategoryDAO resourcesCategoryDAO;

    /**
     * 根据类目id获取类目信息
     *
     * @param id
     * @return
     */
    public ResourcesCategoryVO getCategoryById(String id) {
        ResourcesCategoryDO resourcesCategoryDO = resourcesCategoryDAO.getCategoryById(id);
        if (resourcesCategoryDO == null) {
            return null;
        }
        ResourcesCategoryVO resourcesCategoryVO = new ResourcesCategoryVO();
        ConvertUtil.copyProperties(resourcesCategoryDO, resourcesCategoryVO);
        getCategoryByParent(resourcesCategoryVO);
        return resourcesCategoryVO;
    }

    /**
     * 获取所有类目信息
     *
     * @return
     */
    public List<ResourcesCategoryVO> getAllCategory() {
        List<ResourcesCategoryVO> resourcesCategoryVOs = new ArrayList<ResourcesCategoryVO>();
        List<ResourcesCategoryDO> resourcesCategoryDOs = resourcesCategoryDAO.getCategoryByParentId("0");
        if (CollectionUtils.isEmpty(resourcesCategoryDOs)) {
            ResourcesCategoryVO resourcesCategoryVO = new ResourcesCategoryVO();
            resourcesCategoryVO.setId("0");
            resourcesCategoryVO.setName("");
            resourcesCategoryVO.setParentId("#");
            getCategoryByParent(resourcesCategoryVO);
            resourcesCategoryVOs.add(resourcesCategoryVO);
        } else {
            for (ResourcesCategoryDO resourcesCategoryDO : resourcesCategoryDOs) {
                ResourcesCategoryVO resourcesCategoryVO = new ResourcesCategoryVO();
                ConvertUtil.copyProperties(resourcesCategoryDO, resourcesCategoryVO);
                resourcesCategoryVO.setParentId("#");
                getCategoryByParent(resourcesCategoryVO);
                resourcesCategoryVOs.add(resourcesCategoryVO);
            }
        }
        return resourcesCategoryVOs;
    }

    /**
     * 新增类目信息
     *
     * @param parentId
     * @param categoryName
     * @param createBy
     */
    public void addCategory(String parentId, String categoryName, String createBy) {
        ResourcesCategoryDO resourcesCategoryDO = new ResourcesCategoryDO();
        resourcesCategoryDO.setParentId(parentId);
        resourcesCategoryDO.setName(categoryName);
        resourcesCategoryDO.setCreateBy(createBy);
        resourcesCategoryDO.setModifiedBy(createBy);
        resourcesCategoryDAO.insertCategory(resourcesCategoryDO);
    }

    /**
     * 更新类目信息
     *
     * @param id
     * @param parentId
     * @param name
     * @param modifiedBy
     */
    public void updateCategory(String id, String parentId, String name, String modifiedBy) {
        ResourcesCategoryDO resourcesCategoryDO = new ResourcesCategoryDO();
        resourcesCategoryDO.setId(id);
        resourcesCategoryDO.setParentId(parentId);
        resourcesCategoryDO.setName(name);
        resourcesCategoryDO.setModifiedBy(modifiedBy);
        resourcesCategoryDAO.updateCategory(resourcesCategoryDO);
    }

    /**
     * 删除类目信息
     *
     * @param id
     * @param modifiedBy
     */
    public void deleteCategory(String id, String modifiedBy) {
        resourcesCategoryDAO.deleteCategory(id, modifiedBy);
    }

    /**
     * 递归获取子类目信息
     *
     * @param parentResourcesCategoryVO
     */
    private void getCategoryByParent(ResourcesCategoryVO parentResourcesCategoryVO) {
        List<ResourcesCategoryDO> resourcesCategoryDOs = resourcesCategoryDAO.getCategoryByParentId(parentResourcesCategoryVO.getId());
        if (CollectionUtils.isEmpty(resourcesCategoryDOs)) {
            return;
        }
        List<ResourcesCategoryVO> resourcesCategoryVOs = new ArrayList<ResourcesCategoryVO>();
        for (ResourcesCategoryDO childResourcesCategoryDO : resourcesCategoryDOs) {
            ResourcesCategoryVO resourcesCategoryVO = new ResourcesCategoryVO();
            ConvertUtil.copyProperties(childResourcesCategoryDO, resourcesCategoryVO);
            getCategoryByParent(resourcesCategoryVO);
            resourcesCategoryVOs.add(resourcesCategoryVO);
        }
        parentResourcesCategoryVO.setChildResourcesCategoryVOs(resourcesCategoryVOs);
    }

    /**
     * 获取类目树形结构对象
     *
     * @param resourcesCategoryVOs
     * @return
     */
    public List<TreeVO> getCategoryTreeJson(List<ResourcesCategoryVO> resourcesCategoryVOs) {
        List<TreeVO> treeVO = new ArrayList<TreeVO>();
        if (CollectionUtils.isEmpty(resourcesCategoryVOs)) {
            return treeVO;
        }
        for (ResourcesCategoryVO resourcesCategoryVO : resourcesCategoryVOs) {
            convert(resourcesCategoryVO, treeVO);
        }
        return treeVO;
    }

    /**
     * 把类目对象转换成树形结构在页面展示
     *
     * @param resourcesCategoryVO
     * @param treeVOs
     */
    private void convert(ResourcesCategoryVO resourcesCategoryVO, List<TreeVO> treeVOs) {
        TreeVO treeVO = new TreeVO();
        treeVO.setId(resourcesCategoryVO.getId());
        treeVO.setText(resourcesCategoryVO.getName());
        treeVO.setParent(resourcesCategoryVO.getParentId());
        treeVOs.add(treeVO);
        if (CollectionUtils.isEmpty(resourcesCategoryVO.getChildResourcesCategoryVOs())) {
            return;
        }
        for (ResourcesCategoryVO vo : resourcesCategoryVO.getChildResourcesCategoryVOs()) {
            convert(vo, treeVOs);
        }
    }
}
