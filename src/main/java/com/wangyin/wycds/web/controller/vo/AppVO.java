/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.vo;

import org.hibernate.validator.constraints.NotBlank;

/**
 * 应用维护VO
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/7 17:50 Exp $$
 */
public class AppVO extends BaseVO {

    /**
     * 主键ID
     */
    private Long id;
    /**
     * 应用名,非空
     */
    @NotBlank(message = "应用名不能为空!")
    private String appName;
    /**
     * 负责人,非空
     */
    @NotBlank(message = "负责人不能为空!")
    private String owner;
    /**
     * 联系电话,可空
     */
    private String phone;
    /**
     * 邮箱,可空
     */
    private String email;
    /**
     * 关联属性,可空
     */
    private String attribute;

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("AppVO{");
        sb.append("id=").append(id);
        sb.append(", appName='").append(appName).append('\'');
        sb.append(", owner='").append(owner).append('\'');
        sb.append(", phone='").append(phone).append('\'');
        sb.append(", email='").append(email).append('\'');
        sb.append(", attribute='").append(attribute).append('\'');
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

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAttribute() {
        return attribute;
    }

    public void setAttribute(String attribute) {
        this.attribute = attribute;
    }
}
