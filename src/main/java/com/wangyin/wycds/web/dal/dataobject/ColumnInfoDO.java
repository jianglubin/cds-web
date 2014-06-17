/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.dataobject;

import java.io.Serializable;

/**
 * 切分键关联表信息DO对象
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 17:11 Exp $$
 */
public class ColumnInfoDO implements Serializable {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 2879461269976243862L;
    /**
     * 主键ID
     */
    private Long id;
    /**
     * 切分键ID
     */
    private String splittingKeyId;
    /**
     * 数据库集群ID,非空
     */
    private String clusterId;
    /**
     * 表名
     */
    private String tableName;

    /**
     * 字段名
     */
    private String columnName;

    /**
     * 创建人
     */
    private String createBy;
    /**
     * 创建时间
     */
    private String creationDate;
    /**
     * 最后修改人
     */
    private String modifiedBy;
    /**
     * 最后修改时间
     */
    private String modificationDate;
    /**
     * 删除状态(true已删除,false未删除)
     */
    private String deleteStatus;

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

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public String getModificationDate() {
        return modificationDate;
    }

    public void setModificationDate(String modificationDate) {
        this.modificationDate = modificationDate;
    }

    public String getDeleteStatus() {
        return deleteStatus;
    }

    public void setDeleteStatus(String deleteStatus) {
        this.deleteStatus = deleteStatus;
    }
}
