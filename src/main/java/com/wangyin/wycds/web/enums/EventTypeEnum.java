/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.enums;

import org.apache.commons.lang.StringUtils;

/**
 * 事件类型枚举
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/30 15:54 Exp $$
 */
public enum EventTypeEnum {

    /**启动监控任务*/
    MONITOR_START("MONITOR_START", "启动监控任务"),

    /**关闭监控任务*/
    MONITOR_STOP("MONITOR_STOP", "关闭监控任务");

    // 成员变量
    private String code;
    private String value;

    private EventTypeEnum(String code, String value) {
        this.code = code;
        this.value = value;
    }

    /**
     * 根据业务码获得业务类型
     *
     * @param code 业务码
     * @return 业务类型
     */
    public static EventTypeEnum getEnumByCode(String code) {
        EventTypeEnum[] values = EventTypeEnum.values();
        for (EventTypeEnum operate : values) {
            if (StringUtils.equals(operate.getCode(), code)) {
                return operate;
            }
        }
        return null;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
