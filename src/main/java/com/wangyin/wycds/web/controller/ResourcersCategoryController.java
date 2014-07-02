/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.ResourcesCategoryService;
import com.wangyin.wycds.web.controller.vo.ResourcesCategoryVO;
import com.wangyin.wycds.web.controller.vo.TreeVO;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 类目控制类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/7/1 20:09 Exp $$
 */
@Controller
public class ResourcersCategoryController extends BaseController{

    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/resourcesCategory";

    @Resource(name = "resourcesCategoryService")
    ResourcesCategoryService resourcesCategoryService;

    @RequestMapping("/resourceCategory/show")
    public ModelAndView doGet(ModelMap modelMap) {
        return queryAll(modelMap);
    }

    private ModelAndView queryAll(ModelMap modelMap) {
//        ResourcesCategoryVO resourcesCategoryVO = resourcesCategoryService.getAllCategory();
//        List<TreeVO> departmentTreeVO = resourcesCategoryService.getCategoryTreeJson(resourcesCategoryVO);
//        modelMap.addAttribute("data", departmentTreeVO);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/resourceCategory/showJson")
    public @ResponseBody
    List<TreeVO> getShopInJSON() {
        List<ResourcesCategoryVO> resourcesCategoryVOs = resourcesCategoryService.getAllCategory();
        List<TreeVO> departmentTreeVO = resourcesCategoryService.getCategoryTreeJson(resourcesCategoryVOs);
        return departmentTreeVO;
    }

    @RequestMapping("/resourceCategory/add/{parentId}/{departmentName}")
    public ModelAndView add(@PathVariable String parentId,@PathVariable String departmentName, HttpSession session){
        if(StringUtils.isBlank(parentId)||StringUtils.isBlank(departmentName)){
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少上级类目id或类目名称!");
        }
        resourcesCategoryService.addCategory(parentId, departmentName, getUser(session));
        return new ModelAndView(RETURN_PAGE);
    }

    @RequestMapping("/resourceCategory/update/{id}/{name}")
    public ModelAndView update(@PathVariable String id,@PathVariable String name, HttpSession session){
        if(StringUtils.isBlank(id)||StringUtils.isBlank(name)){
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少类目id或类目名称!");
        }
        resourcesCategoryService.updateCategory(id,null, name, getUser(session));
        return new ModelAndView(RETURN_PAGE);
    }

    @RequestMapping("/resourceCategory/delete/{id}")
    public ModelAndView update(@PathVariable String id, HttpSession session){
        if(StringUtils.isBlank(id)){
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少类目id!");
        }
        resourcesCategoryService.deleteCategory(id, getUser(session));
        return new ModelAndView(RETURN_PAGE);
    }
}
