/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.AppService;
import com.wangyin.wycds.web.controller.vo.AppVO;
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
 * 应用信息控制类,用来操作应用信息的CRUD
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/7 18:25 Exp $$
 */
@Controller
public class AppController extends BaseController {
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/appInfoManage";

    @Resource(name = "appService")
    private AppService appService;

    @RequestMapping("/app/show")
    public ModelAndView doGet(ModelMap modelMap) {
        return queryAll(modelMap);
    }

    private ModelAndView queryAll(ModelMap modelMap) {
        List<AppVO> appVOList;
        Paginator paginator = new Paginator();
        if (appService.getAppListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        paginator.setItems(appService.getAppListCount());
        paginator.setItemsPerPage(PAGE_SIZE);
        paginator.setPage(1);
        appVOList = appService.getAppList(paginator);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("appVOList", appVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/app/query")
    public ModelAndView query(AppVO appVO, Integer page, ModelMap modelMap) {
        if (appVO == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "至少选择一个查询条件!");
        }
        Paginator paginator = new Paginator();
        paginator.setItems(appService.getAppAndClassCount(appVO));
        paginator.setItemsPerPage(PAGE_SIZE);
        if (page == null) {
            paginator.setPage(1);
        } else {
            paginator.setPage(page);
        }
        List<AppVO> appVOList;
        appVOList = appService.getAppAndClass(appVO, paginator);
        modelMap.addAttribute("appVO", appVO);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("appVOList", appVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);

    }

    @RequestMapping("/app/add")
    public ModelAndView add(@Valid AppVO appVO, BindingResult result, ModelMap modelMap,HttpSession session) {
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        appVO.setCreateBy(getUser(session));
        appVO.setModifiedBy(getUser(session));
        Boolean addResult = appService.insertApp(appVO);
        if (addResult) {
            modelMap.addAttribute(MESSAGE, "新增应用信息成功!");
            return queryAll(modelMap);
        } else {
            return new ModelAndView(RETURN_PAGE, ERROR, "新增应用信息失败!");
        }
    }

    @RequestMapping("/app/update")
    public ModelAndView update(@Valid AppVO appVO, BindingResult result, ModelMap modelMap,HttpSession session) {
        //单独校验id
        if (appVO.getId() == null || appVO.getId() == 0L) {

            return new ModelAndView(RETURN_PAGE, ERROR, "缺少应用id!");
        }
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        appVO.setModifiedBy(getUser(session));
        boolean updateResult = appService.updateApp(appVO);
        if (updateResult) {
            appVO = appService.getApp(String.valueOf(appVO.getId()));
            modelMap.addAttribute("appVO", appVO);
            modelMap.addAttribute(MESSAGE, "更新应用信息成功!");
        } else {
            modelMap.addAttribute(ERROR, "更新应用信息失败!");
        }
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping(value = "/app/showDetail")
    public ModelAndView detail(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少应用id!");
        }
        AppVO appVO;
        appVO = appService.getApp(id);
        return new ModelAndView(RETURN_PAGE, "appVO", appVO);
    }

    @RequestMapping(value = "/app/delete")
    public ModelAndView delete(String id,HttpSession session) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少应用id!");
        }
        appService.deleteApp(id, getUser(session));
        return new ModelAndView(RETURN_PAGE);
    }
}
