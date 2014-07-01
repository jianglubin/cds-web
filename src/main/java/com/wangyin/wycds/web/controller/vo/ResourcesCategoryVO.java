/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.vo;

import java.util.List;

/**
 * 部门视图
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/7/1 16:27 Exp $$
 */
public class ResourcesCategoryVO extends BaseVO{
    /**
     * id
     */
    private String id;

    /**
     * 类目名称
     */
    private String name;

    /**
     * 父类目id
     */
    private String parentId;

    /**
     * 下级部门列表
     */
    List<ResourcesCategoryVO> childResourcesCategoryVOs;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public List<ResourcesCategoryVO> getChildResourcesCategoryVOs() {
        return childResourcesCategoryVOs;
    }

    public void setChildResourcesCategoryVOs(List<ResourcesCategoryVO> childResourcesCategoryVOs) {
        this.childResourcesCategoryVOs = childResourcesCategoryVOs;
    }
}
