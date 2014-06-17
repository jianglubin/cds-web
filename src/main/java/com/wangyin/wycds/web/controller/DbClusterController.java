/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbClusterService;
import com.wangyin.wycds.web.util.Paginator;
import com.wangyin.wycds.web.controller.vo.DbClusterVO;
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
 * 数据库集群控制类,用来操作数据库群组的CRUD
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 16:19 Exp $$
 */
@Controller
public class DbClusterController extends BaseController {
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/dbClusterManage";

    @Resource(name = "dbClusterService")
    private DbClusterService dbClusterService;

    @RequestMapping("/dbcluster/show")
    public ModelAndView doGet(ModelMap modelMap) {
        return queryAll(modelMap);
    }

    private ModelAndView queryAll(ModelMap modelMap) {
        List<DbClusterVO> dbClusterVOList;
        Paginator paginator = new Paginator();
        if (dbClusterService.getDbClusterListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        paginator.setItems(dbClusterService.getDbClusterListCount());
        paginator.setItemsPerPage(PAGE_SIZE);
        paginator.setPage(1);
        dbClusterVOList = dbClusterService.getDbClusterList(paginator);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dbClusterVOList", dbClusterVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/dbcluster/query")
    public ModelAndView query(DbClusterVO dbClusterVO, Integer page, ModelMap modelMap) {
        if (dbClusterVO == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "至少选择一个查询条件!");
        }
        Paginator paginator = new Paginator();
        paginator.setItems(dbClusterService.getDbClusterAndClassCount(dbClusterVO));
        paginator.setItemsPerPage(PAGE_SIZE);
        if (page == null) {
            paginator.setPage(1);
        } else {
            paginator.setPage(page);
        }
        List<DbClusterVO> dbClusterVOList;
        dbClusterVOList = dbClusterService.getDbClusterAndClass(dbClusterVO, paginator);
        modelMap.addAttribute("dbClusterVO", dbClusterVO);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dbClusterVOList", dbClusterVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/dbcluster/add")
    public ModelAndView add(@Valid DbClusterVO dbClusterVO, BindingResult result, ModelMap modelMap) {
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        dbClusterVO.setCreateBy(getUser());
        dbClusterVO.setModifiedBy(getUser());
        Boolean addResult = dbClusterService.insertDbCluster(dbClusterVO);
        if (addResult) {
            modelMap.addAttribute(MESSAGE, "新增数据库群组信息成功!");
            return queryAll(modelMap);
        } else {
            return new ModelAndView(RETURN_PAGE, ERROR, "新增数据库群组信息失败!");
        }
    }

    @RequestMapping("/dbcluster/update")
    public ModelAndView update(@Valid DbClusterVO dbClusterVO, BindingResult result, ModelMap modelMap) {
        //单独校验id
        if (dbClusterVO.getId() == null || dbClusterVO.getId() == 0L) {

            return new ModelAndView(RETURN_PAGE, ERROR, "缺少群组id!");
        }
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        dbClusterVO.setModifiedBy(getUser());
        boolean updateResult = dbClusterService.updateDbCluster(dbClusterVO);
        if (updateResult) {
            dbClusterVO = dbClusterService.getDbCluster(String.valueOf(dbClusterVO.getId()));
            modelMap.addAttribute("dbClusterVO", dbClusterVO);
            modelMap.addAttribute(MESSAGE, "更新数据库群组信息成功!");
        } else {
            modelMap.addAttribute(ERROR, "更新数据库群组信息失败!");
        }
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping(value = "/dbcluster/showDetail")
    public ModelAndView detail(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少群组id!");
        }
        DbClusterVO dbClusterVO;
        dbClusterVO = dbClusterService.getDbCluster(id);
        return new ModelAndView(RETURN_PAGE, "dbClusterVO", dbClusterVO);
    }

    @RequestMapping(value = "/dbcluster/delete")
    public ModelAndView delete(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少群组id!");
        }
        dbClusterService.deleteDbCluster(id, getUser());
        return new ModelAndView(RETURN_PAGE);
    }
}
