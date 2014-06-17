/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.vo;

import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Size;

/**
 * 群组基本信息视图
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/4/29 16:29 Exp $$
 */
public class DbGroupVO extends BaseVO {

    /**
     * 群组ID
     */
    private Long id;
    /**
     * 群组名称
     */
    @NotBlank(message = "群组名称不能为空!")
    @Size(min = 0, max = 30, message = "群组名称长度不能大于30字!")
    private String groupName;

    /**
     * 数据库类型(Oralce或者MySql)
     */
    @NotBlank(message = "数据库类型不能为空!")
    private String dbType;

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("DbGroupVO{");
        sb.append("id='").append(id).append('\'');
        sb.append(", groupName='").append(groupName).append('\'');
        sb.append(", dbType='").append(dbType).append('\'');
        sb.append(", createBy='").append(getCreateBy()).append('\'');
        sb.append(", creationDate='").append(getCreationDate()).append('\'');
        sb.append(", modifiedBy='").append(getModifiedBy()).append('\'');
        sb.append(", modificationDate='").append(getModificationDate()).append('\'');
        sb.append(", deleteStatus='").append(getDeleteStatus()).append('\'');
        sb.append('}');
        return sb.toString();
    }

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

    public String getDbType() {
        return dbType;
    }

    public void setDbType(String dbType) {
        this.dbType = dbType;
    }
}
