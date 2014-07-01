/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.util;

import java.util.Date;

/**
 * 时间工具类
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/29 23:22 Exp $$
 */
public class DateUtils {

    /**
     * 计算当前时间几分钟之前的时间
     *
     * @param date
     * @param minutes
     *
     * @return
     */
    public static Date decreaseMinutes(Date date, long minutes) {
        return decreaseSeconds(date, minutes * 60);
    }

    /**
     * 计算当前时间几秒钟之前的时间
     *
     * @param date1
     * @param secs
     * @return
     */

    public static Date decreaseSeconds(Date date1, long secs) {
        return new Date(date1.getTime() - (secs * 1000));
    }
}
