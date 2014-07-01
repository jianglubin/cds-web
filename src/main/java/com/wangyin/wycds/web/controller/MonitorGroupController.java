/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbHostGroupService;
import com.wangyin.wycds.web.controller.vo.DbHostGroupVO;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

/**
 * 监控群组控制类,用来操作数据库群组的CRUD
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/27 14:02 Exp $$
 */
@Controller
public class MonitorGroupController extends BaseController {
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/monitorGroupManage";

    @Resource(name = "dbHostGroupService")
    private DbHostGroupService dbHostGroupService;

    @RequestMapping("/monitorGroup/show")
    public ModelAndView doGet(ModelMap modelMap) {
        return queryAll(modelMap);
    }
    private ModelAndView queryAll(ModelMap modelMap){
        List<DbHostGroupVO> dbHostGroupVOList;
        Paginator paginator = new Paginator();
        if (dbHostGroupService.getDbHostGroupListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        paginator.setItems(dbHostGroupService.getDbHostGroupListCount());
        paginator.setItemsPerPage(PAGE_SIZE);
        paginator.setPage(1);
        dbHostGroupVOList = dbHostGroupService.getDbHostGroupList(paginator);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dbHostGroupVOList", dbHostGroupVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/monitorGroup/query")
    public ModelAndView query(DbHostGroupVO dbHostGroupVO, Integer page, ModelMap modelMap) {
        if (dbHostGroupVO == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "至少选择一个查询条件!");
        }
        Paginator paginator = new Paginator();
        paginator.setItems(dbHostGroupService.getDbHostGroupAndClassCount(dbHostGroupVO));
        paginator.setItemsPerPage(PAGE_SIZE);
        if (page == null) {
            paginator.setPage(1);
        } else {
            paginator.setPage(page);
        }
        List<DbHostGroupVO> dbHostGroupVOList;
        dbHostGroupVOList = dbHostGroupService.getDbHostGroupAndClass(dbHostGroupVO, paginator);
        modelMap.addAttribute("dbHostGroupVO", dbHostGroupVO);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dbHostGroupVOList", dbHostGroupVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/monitorGroup/add")
    public ModelAndView add(@Valid DbHostGroupVO dbHostGroupVO, BindingResult result, ModelMap modelMap) {
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        dbHostGroupVO.setCreateBy(getUser());
        dbHostGroupVO.setModifiedBy(getUser());
        dbHostGroupService.insertDbHostGroup(dbHostGroupVO);
            modelMap.addAttribute(MESSAGE, "新增数据库群组信息成功!");
            return queryAll(modelMap);
    }

    @RequestMapping("/monitorGroup/update")
    public ModelAndView update(@Valid DbHostGroupVO dbHostGroupVO, BindingResult result, ModelMap modelMap) {
        //单独校验id
        if (StringUtils.isBlank(dbHostGroupVO.getId())) {

            return new ModelAndView(RETURN_PAGE, ERROR, "缺少群组id!");
        }
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        dbHostGroupVO.setModifiedBy(getUser());
        dbHostGroupService.updateDbHostGroup(dbHostGroupVO);
            dbHostGroupVO = dbHostGroupService.getDbHostGroup(String.valueOf(dbHostGroupVO.getId()));
            modelMap.addAttribute("dbHostGroupVO", dbHostGroupVO);
            modelMap.addAttribute(MESSAGE, "更新数据库群组信息成功!");
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping(value = "/monitorGroup/showDetail")
    public ModelAndView detail(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少群组id!");
        }
        DbHostGroupVO dbHostGroupVO;
        dbHostGroupVO = dbHostGroupService.getDbHostGroup(id);
        return new ModelAndView(RETURN_PAGE, "dbHostGroupVO", dbHostGroupVO);
    }

    @RequestMapping(value = "/monitorGroup/delete")
    public ModelAndView delete(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少群组id!");
        }
        dbHostGroupService.deleteDbHostGroup(id, getUser());
        return new ModelAndView(RETURN_PAGE);
    }
}
