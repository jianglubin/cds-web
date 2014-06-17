/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.biz.test;

/**
 * 测试本地jvm一些监控功能接口
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/8 17:41 Exp $$
 */
public interface LocalMBean {

    /**
     * 获取操作系统名字
     * @return
     */
    public String getName();

    /**
     * 获取操作系统版本
     * @return
     */
    public String getVersion();
}
