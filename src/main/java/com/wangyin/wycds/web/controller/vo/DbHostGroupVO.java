/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.vo;

import org.hibernate.validator.constraints.NotBlank;

import java.util.List;

/**
 * 监控数据库组VO
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/25 15:17 Exp $$
 */
public class DbHostGroupVO extends BaseVO{

    /**
     * 群组id
     */
    private String id;

    /**
     * 群组名称
     */
    @NotBlank(message = "监控数据库组名不能为空!")
    private String groupName;

    /**
     * 群组名称
     */
    @NotBlank(message = "监控组类型不能为空!")
    private String dbType;

    /**
     * 监控组下包含数据库列表
     */
    List<DbInfoVO> dbinfoVOs;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public List<DbInfoVO> getDbinfoVOs() {
        return dbinfoVOs;
    }

    public void setDbinfoVOs(List<DbInfoVO> dbinfoVOs) {
        this.dbinfoVOs = dbinfoVOs;
    }

    public String getDbType() {
        return dbType;
    }

    public void setDbType(String dbType) {
        this.dbType = dbType;
    }
}
