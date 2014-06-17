/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.form;

/**
 * 查询信息扩展表单
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 8:59 Exp $$
 */
public class DbInfoForm {

    /**
     * 数据库ID
     */
    private Long id;
    /**
     * 数据库地址
     */
    private String ip;

    /**
     * 数据库名称
     */
    private String dbName;

    /**
     * 对应群组ID
     */
    private String groupId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }
}
