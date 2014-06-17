/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * 数据库状态浏览控制类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/8 11:37 Exp $$
 */
@Controller
public class DataStatusController {
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "monitor/dataStatus";

    @RequestMapping("/datastatus/show")
    public ModelAndView doGet(ModelMap modelMap) {
        return new ModelAndView(RETURN_PAGE, modelMap);
    }
}
