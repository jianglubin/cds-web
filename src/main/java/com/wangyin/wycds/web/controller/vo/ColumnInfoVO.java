/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.vo;

import org.hibernate.validator.constraints.NotBlank;

/**
 * 切分键映射表字段VO
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 17:08 Exp $$
 */
public class ColumnInfoVO extends BaseVO{

    /**
     * 主键ID
     */
    private Long id;
    /**
     * 切分键ID
     */
    @NotBlank(message = "切分键ID不能为空!")
    private String splittingKeyId;

    /**
     * 数据库集群ID,非空
     */
    @NotBlank(message = "集群名称不能为空!")
    private String clusterId;

    /**
     * 表名
     */
    @NotBlank(message = "表名不能为空!")
    private String tableName;

    /**
     * 字段名
     */
    @NotBlank(message = "字段名不能为空!")
    private String columnName;

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("DolumnInfoVO{");
        sb.append("id=").append(id);
        sb.append(", splittingKeyId='").append(splittingKeyId).append('\'');
        sb.append(", clusterId='").append(clusterId).append('\'');
        sb.append(", tableName='").append(tableName).append('\'');
        sb.append(", columnName='").append(columnName).append('\'');
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

    public String getSplittingKeyId() {
        return splittingKeyId;
    }

    public void setSplittingKeyId(String splittingKeyId) {
        this.splittingKeyId = splittingKeyId;
    }

    public String getClusterId() {
        return clusterId;
    }

    public void setClusterId(String clusterId) {
        this.clusterId = clusterId;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getColumnName() {
        return columnName;
    }

    public void setColumnName(String columnName) {
        this.columnName = columnName;
    }
}
