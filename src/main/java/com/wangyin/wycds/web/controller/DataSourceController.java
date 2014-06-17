/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DataSourceService;
import com.wangyin.wycds.web.util.Paginator;
import com.wangyin.wycds.web.controller.vo.DataSourceVO;
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
 * @version v 0.1 2014/5/1 21:18 Exp $$
 */
@Controller
public class DataSourceController extends BaseController {
    /**
     * 返回页面
     */
    private static final String RETURN_MANAGE_PAGE = "configuration/dataSourceManage";

    /**
     * 返回页面
     */
    private static final String RETURN_QUERY_PAGE = "configuration/dataSourceQuery";

    @Resource(name = "dataSourceService")
    private DataSourceService dataSourceService;

    @RequestMapping("/datasource/mangershow")
    public ModelAndView doManageGet() {
        return new ModelAndView(RETURN_MANAGE_PAGE);
    }

    @RequestMapping("/datasource/queryshow")
    public ModelAndView doQueryGet(ModelMap modelMap) {
        List<DataSourceVO> dataSourceVOList;
        Paginator paginator = new Paginator();
        if (dataSourceService.getDataSourceListCount() == null) {
            return new ModelAndView(RETURN_QUERY_PAGE, ERROR, "查询数据出错!");
        }
        paginator.setItems(dataSourceService.getDataSourceListCount());
        paginator.setItemsPerPage(PAGE_SIZE);
        paginator.setPage(1);
        dataSourceVOList = dataSourceService.getDataSourceList(paginator);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dataSourceVOList", dataSourceVOList);
        return new ModelAndView(RETURN_QUERY_PAGE, modelMap);
    }

    @RequestMapping("/datasource/query")
    public ModelAndView query(DataSourceVO dataSourceVO, Integer page, ModelMap modelMap) {
        if (dataSourceVO == null) {
            return new ModelAndView(RETURN_QUERY_PAGE, ERROR, "至少选择一个查询条件!");
        }
        Paginator paginator = new Paginator();
        paginator.setItems(dataSourceService.getDataSourceAndClassCount(dataSourceVO));
        paginator.setItemsPerPage(PAGE_SIZE);
        if (page == null) {
            paginator.setPage(1);
        } else {
            paginator.setPage(page);
        }
        List<DataSourceVO> dataSourceVOList;
        dataSourceVOList = dataSourceService.getDataSourceAndClass(dataSourceVO, paginator);
        modelMap.addAttribute("dataSourceVO", dataSourceVO);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dataSourceVOList", dataSourceVOList);
        return new ModelAndView(RETURN_QUERY_PAGE, modelMap);
    }

    @RequestMapping("/datasource/add")
    public ModelAndView add(@Valid DataSourceVO dataSourceVO, BindingResult result) {
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_MANAGE_PAGE, ERROR, getError(result));
        }
        dataSourceVO.setCreateBy(getUser());
        dataSourceVO.setModifiedBy(getUser());
        Boolean addResult = dataSourceService.insertDataSource(dataSourceVO);
        if (addResult) {
            return new ModelAndView(RETURN_MANAGE_PAGE, MESSAGE, "新增数据源信息成功!");
        } else {
            return new ModelAndView(RETURN_MANAGE_PAGE, ERROR, "新增数据库群组信息失败!");
        }
    }

    @RequestMapping("/datasource/update")
    public ModelAndView update(@Valid DataSourceVO dataSourceVO, BindingResult result, ModelMap modelMap) {
        //单独校验id
        if (dataSourceVO.getId() == null || dataSourceVO.getId() == 0L) {

            return new ModelAndView(RETURN_QUERY_PAGE, ERROR, "缺少群组id!");
        }
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_QUERY_PAGE, ERROR, getError(result));
        }
        dataSourceVO.setModifiedBy(getUser());
        boolean updateResult = dataSourceService.updateDataSource(dataSourceVO);
        if (updateResult) {
            dataSourceVO = dataSourceService.getDataSource(String.valueOf(dataSourceVO.getId()));
            modelMap.addAttribute("dataSourceVO", dataSourceVO);
            modelMap.addAttribute(MESSAGE, "更新数据库群组信息成功!");
        } else {
            modelMap.addAttribute(ERROR, "更新数据库群组信息失败!");
        }
        return new ModelAndView(RETURN_QUERY_PAGE, modelMap);
    }

    @RequestMapping(value = "/datasource/showDetail")
    public ModelAndView detail(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_QUERY_PAGE, ERROR, "缺少群组id!");
        }
        DataSourceVO dataSourceVO;
        dataSourceVO = dataSourceService.getDataSource(id);
        return new ModelAndView(RETURN_QUERY_PAGE, "dataSourceVO", dataSourceVO);
    }

    @RequestMapping(value = "/datasource/delete")
    public ModelAndView delete(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_QUERY_PAGE, ERROR, "缺少群组id!");
        }
        dataSourceService.deleteDataSource(id, getUser());
        return new ModelAndView(RETURN_QUERY_PAGE);
    }
}
