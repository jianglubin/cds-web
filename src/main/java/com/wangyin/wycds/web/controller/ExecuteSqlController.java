/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbClusterService;
import com.wangyin.wycds.web.biz.ParseDDLService;
import com.wangyin.wycds.web.controller.vo.DbClusterVO;
import com.wangyin.wycds.web.controller.vo.SqlVO;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * sql执行控制类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/11 11:24 Exp $$
 */
@Controller
public class ExecuteSqlController extends BaseController{
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "dbmanage/executeSql";

    @Resource(name = "dbClusterService")
    private DbClusterService dbClusterService;

    @Resource(name = "parseDDLService")
    private ParseDDLService parseDDLService;

    @RequestMapping("/executesql/show")
    public ModelAndView doGet() {
        if (dbClusterService.getDbClusterListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        List<DbClusterVO> dbClusterVOList = dbClusterService.getDbClusterList();
        return new ModelAndView(RETURN_PAGE, "dbClusterVOList", dbClusterVOList);
    }
    @RequestMapping("/executesql/execute")
    public ModelAndView doGet(String dbClusterId,String sql,ModelMap modelMap) {
        List<DbClusterVO> dbClusterVOList = dbClusterService.getDbClusterList();
        modelMap.addAttribute("dbClusterVOList",dbClusterVOList);
        if (StringUtils.isBlank(dbClusterId)||StringUtils.isBlank(sql)) {
            modelMap.addAttribute(ERROR, "群组和sql语句不能为空!");
            return new ModelAndView(RETURN_PAGE,modelMap);
        }
        StringUtils.replace(sql, "\\\"", "`");
        StringUtils.replace(sql,"＂","`");
        StringUtils.replace(sql,"＇","`");
        StringUtils.replace(sql,"'","`");
        SqlVO sqlVO =parseDDLService.executeSQL(sql,dbClusterId);
        if(StringUtils.isBlank(sqlVO.getTableName())){
            modelMap.addAttribute(ERROR, "无操作的表,请检查sql语句!");
            return new ModelAndView(RETURN_PAGE,modelMap);
        }
        modelMap.addAttribute("sql",sql);
        modelMap.addAttribute(MESSAGE, "执行成功!");
        return new ModelAndView(RETURN_PAGE,modelMap );
    }
}
