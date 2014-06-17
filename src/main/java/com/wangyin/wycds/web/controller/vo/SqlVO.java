/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.vo;

/**
 * 解析的SQL语句转换成对象方便操作
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/10 17:33 Exp $$
 */
public class SqlVO {
    /**
     * 操作的表名
     */
    private String tableName;

    /**
     * 操作动作,新增 更新 删除?
     */
    private String action;

    /**
     * 操作的字段,可能为空
     */
    private String column;

    /**
     * 作用于表还是字段
     */
    private String scope;

    /**
     * 修改前名称
     */
    private String oldName;

    /**
     * 修改后名称
     */
    private String newName;

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getColumn() {
        return column;
    }

    public void setColumn(String column) {
        this.column = column;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public String getOldName() {
        return oldName;
    }

    public void setOldName(String oldName) {
        this.oldName = oldName;
    }

    public String getNewName() {
        return newName;
    }

    public void setNewName(String newName) {
        this.newName = newName;
    }
}

