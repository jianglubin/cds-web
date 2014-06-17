/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbGroupService;
import com.wangyin.wycds.web.util.Paginator;
import com.wangyin.wycds.web.controller.vo.DbGroupVO;
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
 * 数据库群组控制类,用来操作数据库群组的CRUD
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/4/29 10:02 Exp $$
 */
@Controller
public class DbGroupController extends BaseController {
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/dbGroupManage";

    @Resource(name = "dbGroupService")
    private DbGroupService dbGroupService;

    @RequestMapping("/dbgroup/show")
    public ModelAndView doGet(ModelMap modelMap) {
        return queryAll(modelMap);
    }
    private ModelAndView queryAll(ModelMap modelMap){
        List<DbGroupVO> dbGroupVOList;
        Paginator paginator = new Paginator();
        if (dbGroupService.getDbGroupListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        paginator.setItems(dbGroupService.getDbGroupListCount());
        paginator.setItemsPerPage(PAGE_SIZE);
        paginator.setPage(1);
        dbGroupVOList = dbGroupService.getDbGroupList(paginator);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dbGroupVOList", dbGroupVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/dbgroup/query")
    public ModelAndView query(DbGroupVO dbGroupVO, Integer page, ModelMap modelMap) {
        if (dbGroupVO == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "至少选择一个查询条件!");
        }
        Paginator paginator = new Paginator();
        paginator.setItems(dbGroupService.getDbGroupAndClassCount(dbGroupVO));
        paginator.setItemsPerPage(PAGE_SIZE);
        if (page == null) {
            paginator.setPage(1);
        } else {
            paginator.setPage(page);
        }
        List<DbGroupVO> dbGroupVOList;
        dbGroupVOList = dbGroupService.getDbGroupAndClass(dbGroupVO, paginator);
        modelMap.addAttribute("dbGroupVO", dbGroupVO);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dbGroupVOList", dbGroupVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/dbgroup/add")
    public ModelAndView add(@Valid DbGroupVO dbGroupVO, BindingResult result, ModelMap modelMap) {
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        dbGroupVO.setCreateBy(getUser());
        dbGroupVO.setModifiedBy(getUser());
        Boolean addResult = dbGroupService.insertDbGroup(dbGroupVO);
        if (addResult) {
            modelMap.addAttribute(MESSAGE, "新增数据库群组信息成功!");
            return queryAll(modelMap);
        } else {
            return new ModelAndView(RETURN_PAGE, ERROR, "新增数据库群组信息失败!");
        }
    }

    @RequestMapping("/dbgroup/update")
    public ModelAndView update(@Valid DbGroupVO dbGroupVO, BindingResult result, ModelMap modelMap) {
        //单独校验id
        if (dbGroupVO.getId() == null || dbGroupVO.getId() == 0L) {

            return new ModelAndView(RETURN_PAGE, ERROR, "缺少群组id!");
        }
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        dbGroupVO.setModifiedBy(getUser());
        boolean updateResult = dbGroupService.updateDbGroup(dbGroupVO);
        if (updateResult) {
            dbGroupVO = dbGroupService.getDbGroup(String.valueOf(dbGroupVO.getId()));
            modelMap.addAttribute("dbGroupVO", dbGroupVO);
            modelMap.addAttribute(MESSAGE, "更新数据库群组信息成功!");
        } else {
            modelMap.addAttribute(ERROR, "更新数据库群组信息失败!");
        }
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping(value = "/dbgroup/showDetail")
    public ModelAndView detail(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少群组id!");
        }
        DbGroupVO dbGroupVO;
        dbGroupVO = dbGroupService.getDbGroup(id);
        return new ModelAndView(RETURN_PAGE, "dbGroupVO", dbGroupVO);
    }

    @RequestMapping(value = "/dbgroup/delete")
    public ModelAndView delete(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少群组id!");
        }
        dbGroupService.deleteDbGroup(id, getUser());
        return new ModelAndView(RETURN_PAGE);
    }
}
