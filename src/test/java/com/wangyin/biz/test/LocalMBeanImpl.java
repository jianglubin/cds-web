/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.biz.test;

import java.lang.management.ManagementFactory;
import java.lang.management.OperatingSystemMXBean;

/**
 * 测试本地jvm一些监控功能实现
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/8 17:44 Exp $$
 */
public class LocalMBeanImpl implements LocalMBean{

    OperatingSystemMXBean osbean = ManagementFactory
            .getOperatingSystemMXBean();

    @Override
    public String getName() {
        return osbean.getName();
    }

    @Override
    public String getVersion() {
        return osbean.getVersion();
    }
}
