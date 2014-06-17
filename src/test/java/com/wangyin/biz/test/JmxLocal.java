/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.biz.test;

import org.apache.commons.collections.CollectionUtils;

import java.lang.management.ManagementFactory;
import java.lang.management.MemoryPoolMXBean;
import java.lang.management.OperatingSystemMXBean;
import java.lang.management.ThreadMXBean;
import java.util.List;

/**
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/8 16:33 Exp $$
 */
public class JmxLocal {
    public static void main(String[] args) {
        OperatingSystemMXBean osbean = ManagementFactory
                .getOperatingSystemMXBean();
        System.out.println(osbean.getArch());//操作系统体系结构
        System.out.println(osbean.getName());//操作系统名字
        System.out.println(osbean.getAvailableProcessors());//处理器数目
        System.out.println(osbean.getVersion());//操作系统版本
        ThreadMXBean threadBean=ManagementFactory.getThreadMXBean();
        System.out.println(threadBean.getThreadCount());//总线程数
    }
}
