/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DepotsTableRulesService;
import com.wangyin.wycds.web.biz.SplittingKeyRuleRelationService;
import com.wangyin.wycds.web.biz.SplittingKeyService;
import com.wangyin.wycds.web.controller.vo.DepotsTableRulesVO;
import com.wangyin.wycds.web.controller.vo.SplittingKeyRuleRelationVO;
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
 * 分库分表规则和切分键关联关系控制类,用来操作分库分表规则和切分键关联关系的CRUD
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/7 14:27 Exp $$
 */
@Controller
public class SplittingKeyRuleRelationController extends BaseController {
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/splittingKeyRuleRelation";

    @Resource(name = "splittingKeyRuleRelationService")
    private SplittingKeyRuleRelationService splittingKeyRuleRelationService;

    @Resource(name = "splittingKeyService")
    private SplittingKeyService splittingKeyService;

    @Resource(name = "depotsTableRulesService")
    private DepotsTableRulesService depotsTableRulesService;

    @RequestMapping("/splittingkeyrulerelation/show")
    public ModelAndView doGet(ModelMap modelMap) {
        return queryAll(modelMap);
    }

    private ModelAndView queryAll(ModelMap modelMap) {
        List<SplittingKeyVO> splittingKeyVOList = splittingKeyService.getSplittingKeyListNoPaginator();
        modelMap.addAttribute("splittingKeyVOList", splittingKeyVOList);
        List<DepotsTableRulesVO> depotsTableRulesVOList = depotsTableRulesService.getDepotsTableRulesList();
        modelMap.addAttribute("depotsTableRulesVOList", depotsTableRulesVOList);
        Paginator paginator = new Paginator();
        if (splittingKeyRuleRelationService.getSplittingKeyRuleRelationListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        paginator.setItems(splittingKeyRuleRelationService.getSplittingKeyRuleRelationListCount());
        paginator.setItemsPerPage(PAGE_SIZE);
        paginator.setPage(1);
        List<SplittingKeyRuleRelationVO> splittingKeyRuleRelationVOList = splittingKeyRuleRelationService.getSplittingKeyRuleRelationList(paginator);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("splittingKeyRuleRelationVOList", splittingKeyRuleRelationVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/splittingkeyrulerelation/query")
    public ModelAndView query(SplittingKeyRuleRelationVO splittingKeyRuleRelationVO, Integer page, ModelMap modelMap) {
        List<SplittingKeyVO> splittingKeyVOList = splittingKeyService.getSplittingKeyListNoPaginator();
        modelMap.addAttribute("splittingKeyVOList", splittingKeyVOList);
        List<DepotsTableRulesVO> depotsTableRulesVOList = depotsTableRulesService.getDepotsTableRulesList();
        modelMap.addAttribute("depotsTableRulesVOList", depotsTableRulesVOList);
        if (splittingKeyRuleRelationVO == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "至少选择一个查询条件!");
        }
        Paginator paginator = new Paginator();
        paginator.setItems(splittingKeyRuleRelationService.getSplittingKeyRuleRelationAndClassCount(splittingKeyRuleRelationVO));
        paginator.setItemsPerPage(PAGE_SIZE);
        if (page == null) {
            paginator.setPage(1);
        } else {
            paginator.setPage(page);
        }
        List<SplittingKeyRuleRelationVO> splittingKeyRuleRelationVOList;
        splittingKeyRuleRelationVOList = splittingKeyRuleRelationService.getSplittingKeyRuleRelationAndClass(splittingKeyRuleRelationVO, paginator);
        modelMap.addAttribute("splittingKeyRuleRelationVO", splittingKeyRuleRelationVO);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("splittingKeyRuleRelationVOList", splittingKeyRuleRelationVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/splittingkeyrulerelation/add")
    public ModelAndView add(@Valid SplittingKeyRuleRelationVO splittingKeyRuleRelationVO, BindingResult result, ModelMap modelMap) {
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        Boolean addResult = splittingKeyRuleRelationService.insertSplittingKeyRuleRelation(splittingKeyRuleRelationVO);
        if (addResult) {
            modelMap.addAttribute(MESSAGE, "新增切分键信息成功!");
            return queryAll(modelMap);
        } else {
            return new ModelAndView(RETURN_PAGE, ERROR, "新增切分键信息失败!");
        }
    }

    @RequestMapping("/splittingkeyrulerelation/update")
    public ModelAndView update(@Valid SplittingKeyRuleRelationVO splittingKeyRuleRelationVO, BindingResult result, ModelMap modelMap) {
        //单独校验id
        if (splittingKeyRuleRelationVO.getId() == null || splittingKeyRuleRelationVO.getId() == 0L) {

            return new ModelAndView(RETURN_PAGE, ERROR, "缺少切分键id!");
        }
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        boolean updateResult = splittingKeyRuleRelationService.updateSplittingKeyRuleRelation(splittingKeyRuleRelationVO);
        if (updateResult) {
            splittingKeyRuleRelationVO = splittingKeyRuleRelationService.getSplittingKeyRuleRelation(String.valueOf(splittingKeyRuleRelationVO.getId()));
            modelMap.addAttribute("splittingKeyRuleRelationVO", splittingKeyRuleRelationVO);
            modelMap.addAttribute(MESSAGE, "更新切分键信息成功!");
        } else {
            modelMap.addAttribute(ERROR, "更新切分键信息失败!");
        }
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping(value = "/splittingkeyrulerelation/showDetail")
    public ModelAndView detail(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少切分键id!");
        }
        SplittingKeyRuleRelationVO splittingKeyRuleRelationVO;
        splittingKeyRuleRelationVO = splittingKeyRuleRelationService.getSplittingKeyRuleRelation(id);
        return new ModelAndView(RETURN_PAGE, "splittingKeyRuleRelationVO", splittingKeyRuleRelationVO);
    }

    @RequestMapping(value = "/splittingkeyrulerelation/delete")
    public ModelAndView delete(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少切分键id!");
        }
        splittingKeyRuleRelationService.deleteSplittingKeyRuleRelation(id, getUser());
        return new ModelAndView(RETURN_PAGE);
    }
}
