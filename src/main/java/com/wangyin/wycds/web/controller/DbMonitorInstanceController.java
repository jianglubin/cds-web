/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbMonitorInstanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * 监控展示
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/29 13:30 Exp $$
 */
@Controller
public class DbMonitorInstanceController extends BaseController {
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/monitorShow";

    @Autowired
    private DbMonitorInstanceService dbMonitorInstanceService;

    @RequestMapping("/monitor/get")
    public ModelAndView doGet() {
        List<String> monitorItems = dbMonitorInstanceService.getMonitorItem();
        return new ModelAndView(RETURN_PAGE, "monitorItems", monitorItems);
    }

    @RequestMapping("/monitor/allInstance/{item}")
    public @ResponseBody List<double[]> getAllInstance(@PathVariable String item) {
        List<double[]> doubles = dbMonitorInstanceService.getAllInstances(item);
        return doubles;
    }

    //    public @ResponseBody List<String> getShopInJSON() {
//        List<String> departmentVOs = new ArrayList<String>();
//        departmentVOs.add("1161043200000,74.29");
//        departmentVOs.add("1161129600000,74.53");
//        return departmentVOs;
//    }
    @RequestMapping("/monitor/newInstance/{item}/{minute}")
    public @ResponseBody List<double[]> getNewInstance(@PathVariable String item,@PathVariable int minute) {
        List<double[]> doubles = dbMonitorInstanceService.getNewInstances(item,minute);
        return doubles;
    }

    @RequestMapping("/monitor/showJson1")
    public ModelAndView getShopJSON() {
        List<double[]> departmentVOs = new ArrayList<double[]>();
//        double[] a1={1161043200000L,74.53};
//        double[] a2={1161216000000L,78.99};
//        double[] a3={1161302400000L,79.95};
//        double[] a4={1161561600000L,81.46};
//        double[] a5={1161648000000L,81.05};
//        double[] a6={1161734400000L,81.68};
//        double[] a7={1161820800000L,82.19};
//        departmentVOs.add(a1);
//        departmentVOs.add(a2);
//        departmentVOs.add(a3);
//        departmentVOs.add(a4);
//        departmentVOs.add(a5);
//        departmentVOs.add(a6);
//        departmentVOs.add(a7);

        return new ModelAndView(RETURN_PAGE, "data", departmentVOs);
    }
}
