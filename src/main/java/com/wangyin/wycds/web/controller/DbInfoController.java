/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbHostGroupService;
import com.wangyin.wycds.web.biz.DbInfoService;
import com.wangyin.wycds.web.controller.vo.DbInfoVO;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

/**
 * 数据库基本信息控制类,用来操作数据库信息的CRUD
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/4/27 10:02 Exp $$
 */
@Controller
public class DbInfoController extends BaseController {
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/dbInfoManage";

    @Resource(name = "dbInfoService")
    private DbInfoService dbInfoService;

    @Resource(name = "dbHostGroupService")
    private DbHostGroupService dbHostGroupService;

    @RequestMapping("/dbinfo/show")
    public ModelAndView doGet(ModelMap modelMap) {
        return queryAll(modelMap);
    }

    private ModelAndView queryAll(ModelMap modelMap) {
        List<DbInfoVO> dbInfoVOList;
        Paginator paginator = new Paginator();
        if (dbInfoService.getDbInfoListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        paginator.setItems(dbInfoService.getDbInfoListCount());
        paginator.setItemsPerPage(PAGE_SIZE);
        paginator.setPage(1);
        dbInfoVOList = dbInfoService.getDbInfoList(paginator);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dbInfoVOList", dbInfoVOList);
        modelMap.addAttribute("dbGroupVOList",dbHostGroupService.getDbHostGroupList());
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/dbinfo/query")
    public ModelAndView query(DbInfoVO dbInfoVO, Integer page, ModelMap modelMap) {
        if (dbInfoVO == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "至少选择一个查询条件!");
        }
        Paginator paginator = new Paginator();
        paginator.setItems(dbInfoService.getDbInfoAndClassCount(dbInfoVO));
        paginator.setItemsPerPage(PAGE_SIZE);
        if (page == null) {
            paginator.setPage(1);
        } else {
            paginator.setPage(page);
        }
        List<DbInfoVO> dbInfoVOList;
        dbInfoVOList = dbInfoService.getDbInfoAndClass(dbInfoVO, paginator);
        modelMap.addAttribute("dbInfoVO", dbInfoVO);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dbInfoVOList", dbInfoVOList);
        modelMap.addAttribute("dbGroupVOList",dbHostGroupService.getDbHostGroupList());
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/dbinfo/add")
    public ModelAndView add(@Valid DbInfoVO dbInfoVO, BindingResult result, ModelMap modelMap, HttpSession session) {
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        dbInfoVO.setCreateBy(getUser(session));
        dbInfoVO.setModifiedBy(getUser(session));
        Boolean addResult = dbInfoService.insertDbInfo(dbInfoVO);
        if (addResult) {
            modelMap.addAttribute(MESSAGE, "新增数据库信息成功!");
            return queryAll(modelMap);
        } else {
            return new ModelAndView(RETURN_PAGE, ERROR, "新增数据库信息失败!");
        }
    }

    @RequestMapping("/dbinfo/update")
    public ModelAndView update(@Valid DbInfoVO dbInfoVO, BindingResult result, ModelMap modelMap, HttpSession session) {
        //单独校验id
        if (dbInfoVO.getId() == null || StringUtils.isBlank(dbInfoVO.getId())) {

            return new ModelAndView(RETURN_PAGE, ERROR, "缺少数据库id!");
        }
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        dbInfoVO.setModifiedBy(getUser(session));
        boolean updateResult = dbInfoService.updateDbInfo(dbInfoVO);
        if (updateResult) {
            dbInfoVO = dbInfoService.getDbInfo(String.valueOf(dbInfoVO.getId()));
            modelMap.addAttribute("dbInfoVO", dbInfoVO);
            modelMap.addAttribute(MESSAGE, "更新数据库信息成功!");
        } else {
            modelMap.addAttribute(ERROR, "更新数据库信息失败!");
        }
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping(value = "/dbinfo/showDetail")
    public ModelAndView detail(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少数据库id!");
        }
        DbInfoVO dbInfoVO;
        dbInfoVO = dbInfoService.getDbInfo(id);
        return new ModelAndView(RETURN_PAGE, "dbInfoVO", dbInfoVO);
    }

    @RequestMapping(value = "/dbinfo/delete")
    public ModelAndView delete(String id, HttpSession session) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少数据库id!");
        }
        dbInfoService.deleteDbInfo(id, getUser(session));
        return new ModelAndView(RETURN_PAGE);
    }
}
