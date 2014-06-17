/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.vo;

import org.hibernate.validator.constraints.NotBlank;

/**
 * 切分键视图页面
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 15:43 Exp $$
 */
public class SplittingKeyVO extends BaseVO{
    /**
     * 切分键ID
     */
    private Long id;
    /**
     * 切分键名称
     */
    @NotBlank(message = "切分键名称不能为空!")
    private String splitName;
    /**
     * 数据库集群ID,非空
     */
    @NotBlank(message = "集群名称不能为空!")
    private String clusterId;

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("SplittingKeyVO{");
        sb.append("id=").append(id);
        sb.append(", splitName='").append(splitName).append('\'');
        sb.append(", clusterId='").append(clusterId).append('\'');
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

    public String getSplitName() {
        return splitName;
    }

    public void setSplitName(String splitName) {
        this.splitName = splitName;
    }

    public String getClusterId() {
        return clusterId;
    }

    public void setClusterId(String clusterId) {
        this.clusterId = clusterId;
    }
}
