/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.exception;

/**
 * 异常处理基类
 * 业务异常基类都继承此类
 * @author 蒋鲁宾
 * @version v 0.1 2014/4/27 11:14 Exp $$
 */
public class CommonException extends RuntimeException{

    public CommonException() {
        super();
    }

    public CommonException(String message) {
        super(message);
    }

    public CommonException(String message, Throwable cause) {
        super(message, cause);
    }

    public CommonException(Throwable cause) {
        super(cause);
    }
}
