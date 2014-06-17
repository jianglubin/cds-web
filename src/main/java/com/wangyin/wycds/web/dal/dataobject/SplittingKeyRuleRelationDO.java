/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.dataobject;

import java.io.Serializable;

/**
 * 切分键与分库分表规则关系DO
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/6 22:05 Exp $$
 */
public class SplittingKeyRuleRelationDO implements Serializable {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = -8239609375160722710L;
    /**
     * 主键ID
     */
    private Long id;
    /**
     * 切分键ID
     */
    private String splittingKeyId;

    /**
     * 分库分表规则ID
     */
    private String depotsTableRulesId;

    /**
     * 规则类型
     */
    private String ruleType;

    /**
     * 群组ID
     */
    private String dbGroupId;

    /**
     * 表后缀
     */
    private String tableSuffix;

    /**
     * 规则上限
     */
    private String upperLimit;

    /**
     * 规则下限
     */
    private String lowerLimit;

    /**
     * 哈希值
     */
    private String hashValue;

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

    public String getDepotsTableRulesId() {
        return depotsTableRulesId;
    }

    public void setDepotsTableRulesId(String depotsTableRulesId) {
        this.depotsTableRulesId = depotsTableRulesId;
    }

    public String getRuleType() {
        return ruleType;
    }

    public void setRuleType(String ruleType) {
        this.ruleType = ruleType;
    }

    public String getDbGroupId() {
        return dbGroupId;
    }

    public void setDbGroupId(String dbGroupId) {
        this.dbGroupId = dbGroupId;
    }

    public String getTableSuffix() {
        return tableSuffix;
    }

    public void setTableSuffix(String tableSuffix) {
        this.tableSuffix = tableSuffix;
    }

    public String getUpperLimit() {
        return upperLimit;
    }

    public void setUpperLimit(String upperLimit) {
        this.upperLimit = upperLimit;
    }

    public String getLowerLimit() {
        return lowerLimit;
    }

    public void setLowerLimit(String lowerLimit) {
        this.lowerLimit = lowerLimit;
    }

    public String getHashValue() {
        return hashValue;
    }

    public void setHashValue(String hashValue) {
        this.hashValue = hashValue;
    }
}
