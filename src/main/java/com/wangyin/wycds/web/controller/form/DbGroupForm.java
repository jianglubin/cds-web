/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.form;

/**
 * 群组查询扩展Form表单
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 9:15 Exp $$
 */
public class DbGroupForm {

    /**
     * 群组ID
     */
    private Long id;
    /**
     * 群组名称
     */
    private String groupName;

    /**
     * 对应集群ID
     */
    private String  clusterId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getClusterId() {
        return clusterId;
    }

    public void setClusterId(String clusterId) {
        this.clusterId = clusterId;
    }
}
