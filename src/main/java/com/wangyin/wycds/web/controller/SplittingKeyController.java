/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbClusterService;
import com.wangyin.wycds.web.biz.SplittingKeyService;
import com.wangyin.wycds.web.controller.vo.DbClusterVO;
import com.wangyin.wycds.web.controller.vo.SplittingKeyVO;
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
 * 切分键控制类,用来操作切分键的CRUD
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 14:26 Exp $$
 */
@Controller
public class SplittingKeyController extends BaseController{

    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/splittingKeyManage";

    @Resource(name = "splittingKeyService")
    private SplittingKeyService splittingKeyService;

    @Resource(name = "dbClusterService")
    private DbClusterService dbClusterService;

    @RequestMapping("/splittingkey/show")
    public ModelAndView doGet(ModelMap modelMap) {
        return queryAll(modelMap);
    }

    private ModelAndView queryAll(ModelMap modelMap) {
        List<DbClusterVO> dbClusterVOList = dbClusterService.getDbClusterList();
        modelMap.addAttribute("dbClusterVOList", dbClusterVOList);
        List<SplittingKeyVO> splittingKeyVOList;
        Paginator paginator = new Paginator();
        if (splittingKeyService.getSplittingKeyListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        paginator.setItems(splittingKeyService.getSplittingKeyListCount());
        paginator.setItemsPerPage(PAGE_SIZE);
        paginator.setPage(1);
        splittingKeyVOList = splittingKeyService.getSplittingKeyList(paginator);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("splittingKeyVOList", splittingKeyVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/splittingkey/query")
    public ModelAndView query(SplittingKeyVO splittingKeyVO, Integer page, ModelMap modelMap) {
        List<DbClusterVO> dbClusterVOList = dbClusterService.getDbClusterList();
        modelMap.addAttribute("dbClusterVOList", dbClusterVOList);
        if (splittingKeyVO == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "至少选择一个查询条件!");
        }
        Paginator paginator = new Paginator();
        paginator.setItems(splittingKeyService.getSplittingKeyAndClassCount(splittingKeyVO));
        paginator.setItemsPerPage(PAGE_SIZE);
        if (page == null) {
            paginator.setPage(1);
        } else {
            paginator.setPage(page);
        }
        List<SplittingKeyVO> splittingKeyVOList;
        splittingKeyVOList = splittingKeyService.getSplittingKeyAndClass(splittingKeyVO, paginator);
        modelMap.addAttribute("splittingKeyVO", splittingKeyVO);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("splittingKeyVOList", splittingKeyVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/splittingkey/add")
    public ModelAndView add(@Valid SplittingKeyVO splittingKeyVO, BindingResult result, ModelMap modelMap) {
        List<DbClusterVO> dbClusterVOList = dbClusterService.getDbClusterList();
        modelMap.addAttribute("dbClusterVOList", dbClusterVOList);
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        splittingKeyVO.setCreateBy(getUser());
        splittingKeyVO.setModifiedBy(getUser());
        Boolean addResult = splittingKeyService.insertSplittingKey(splittingKeyVO);
        if (addResult) {
            modelMap.addAttribute(MESSAGE, "新增切分键信息成功!") ;
            return queryAll(modelMap);
        } else {
            return new ModelAndView(RETURN_PAGE, ERROR, "新增切分键信息失败!");
        }
    }

    @RequestMapping("/splittingkey/update")
    public ModelAndView update(@Valid SplittingKeyVO splittingKeyVO, BindingResult result, ModelMap modelMap) {
        //单独校验id
        if (splittingKeyVO.getId() == null || splittingKeyVO.getId() == 0L) {

            return new ModelAndView(RETURN_PAGE, ERROR, "缺少切分键id!");
        }
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        splittingKeyVO.setModifiedBy(getUser());
        boolean updateResult = splittingKeyService.updateSplittingKey(splittingKeyVO);
        if (updateResult) {
            splittingKeyVO = splittingKeyService.getSplittingKey(String.valueOf(splittingKeyVO.getId()));
            modelMap.addAttribute("splittingKeyVO", splittingKeyVO);
            modelMap.addAttribute(MESSAGE, "更新切分键信息成功!");
        } else {
            modelMap.addAttribute(ERROR, "更新切分键信息失败!");
        }
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping(value = "/splittingkey/showDetail")
    public ModelAndView detail(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少切分键id!");
        }
        SplittingKeyVO splittingKeyVO;
        splittingKeyVO = splittingKeyService.getSplittingKey(id);
        return new ModelAndView(RETURN_PAGE, "splittingKeyVO", splittingKeyVO);
    }

    @RequestMapping(value = "/splittingkey/delete")
    public ModelAndView delete(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少切分键id!");
        }
        splittingKeyService.deleteSplittingKey(id, getUser());
        return new ModelAndView(RETURN_PAGE);
    }
}
