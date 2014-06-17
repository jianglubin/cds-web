/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.vo;

import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Size;

/**
 * 数据库集群基本信息视图
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 15:49 Exp $$
 */
public class DbClusterVO extends BaseVO{
    /**
     * 数据库集群ID
     */
    private Long id;

    /**
     * 数据库集群信息视图
     */
    @NotBlank(message = "集群名称不能为空!")
    @Size(min = 0, max = 30, message = "集群名称长度不能大于30字!")
    private String clusterName;

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("DbClusterVO{");
        sb.append("id=").append(id);
        sb.append(", clusterName='").append(clusterName).append('\'');
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

    public String getClusterName() {
        return clusterName;
    }

    public void setClusterName(String clusterName) {
        this.clusterName = clusterName;
    }
}
