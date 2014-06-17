/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbGroupService;
import com.wangyin.wycds.web.biz.DepotsTableRulesService;
import com.wangyin.wycds.web.controller.vo.DbGroupVO;
import com.wangyin.wycds.web.controller.vo.DepotsTableRulesVO;
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
 * 分库分表规则控制类,用来操作分库分表信息的CRUD
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/6 16:02 Exp $$
 */
@Controller
public class DepotsTableRulesController extends BaseController {
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/depotsTableRulesManage";

    @Resource(name = "depotsTableRulesService")
    private DepotsTableRulesService depotsTableRulesService;
    @Resource(name = "dbGroupService")
    private DbGroupService dbGroupService;

    @RequestMapping("/depotsTableRules/show")
    public ModelAndView doGet(ModelMap modelMap) {
        return queryAll(modelMap);
    }

    private ModelAndView queryAll(ModelMap modelMap) {
        List<DbGroupVO> dbGroupVOList = dbGroupService.getDbGroupList();
        modelMap.addAttribute("dbGroupVOList", dbGroupVOList);
        Paginator paginator = new Paginator();
        if (depotsTableRulesService.getDepotsTableRulesListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        paginator.setItems(depotsTableRulesService.getDepotsTableRulesListCount());
        paginator.setItemsPerPage(PAGE_SIZE);
        paginator.setPage(1);
        List<DepotsTableRulesVO> depotsTableRulesVOList = depotsTableRulesService.getDepotsTableRulesList(paginator);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("depotsTableRulesVOList", depotsTableRulesVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/depotsTableRules/query")
    public ModelAndView query(DepotsTableRulesVO depotsTableRulesVO, Integer page, ModelMap modelMap) {
        List<DbGroupVO> dbGroupVOList = dbGroupService.getDbGroupList();
        modelMap.addAttribute("dbGroupVOList", dbGroupVOList);
        if (depotsTableRulesVO == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "至少选择一个查询条件!");
        }
        Paginator paginator = new Paginator();
        paginator.setItems(depotsTableRulesService.getDepotsTableRulesAndClassCount(depotsTableRulesVO));
        paginator.setItemsPerPage(PAGE_SIZE);
        if (page == null) {
            paginator.setPage(1);
        } else {
            paginator.setPage(page);
        }
        List<DepotsTableRulesVO> depotsTableRulesVOList;
        depotsTableRulesVOList = depotsTableRulesService.getDepotsTableRulesAndClass(depotsTableRulesVO, paginator);
        modelMap.addAttribute("depotsTableRulesVO", depotsTableRulesVO);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("depotsTableRulesVOList", depotsTableRulesVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/depotsTableRules/add")
    public ModelAndView add(@Valid DepotsTableRulesVO depotsTableRulesVO, BindingResult result, ModelMap modelMap) {
        List<DbGroupVO> dbGroupVOList = dbGroupService.getDbGroupList();
        modelMap.addAttribute("dbGroupVOList", dbGroupVOList);
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        if (StringUtils.equals(depotsTableRulesVO.getRuleType(), "hash") && StringUtils.isBlank(depotsTableRulesVO.getHashValue())) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少哈希值!");
        }
        if (StringUtils.equals(depotsTableRulesVO.getRuleType(), "range") &&
                (StringUtils.isBlank(depotsTableRulesVO.getLowerLimit()) || StringUtils.isBlank(depotsTableRulesVO.getUpperLimit()))) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少范围值!");
        }
        if (StringUtils.equals(depotsTableRulesVO.getRuleType(), "hash")) {
            depotsTableRulesVO.setLowerLimit("");
            depotsTableRulesVO.setUpperLimit("");
        }
        if (StringUtils.equals(depotsTableRulesVO.getRuleType(), "range")) {
            depotsTableRulesVO.setHashValue("");
        }
        depotsTableRulesVO.setCreateBy(getUser());
        depotsTableRulesVO.setModifiedBy(getUser());
        Boolean addResult = depotsTableRulesService.insertDepotsTableRules(depotsTableRulesVO);
        if (addResult) {
            modelMap.addAttribute(MESSAGE, "新增分库分表规则成功!");
            return queryAll(modelMap);
        } else {
            return new ModelAndView(RETURN_PAGE, ERROR, "新增分库分表规则失败!");
        }
    }

    @RequestMapping("/depotsTableRules/update")
    public ModelAndView update(@Valid DepotsTableRulesVO depotsTableRulesVO, BindingResult result, ModelMap modelMap) {
        //单独校验id
        if (depotsTableRulesVO.getId() == null || depotsTableRulesVO.getId() == 0L) {

            return new ModelAndView(RETURN_PAGE, ERROR, "缺少分库分表规则id!");
        }
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        depotsTableRulesVO.setModifiedBy(getUser());
        boolean updateResult = depotsTableRulesService.updateDepotsTableRules(depotsTableRulesVO);
        if (updateResult) {
            depotsTableRulesVO = depotsTableRulesService.getDepotsTableRules(String.valueOf(depotsTableRulesVO.getId()));
            modelMap.addAttribute("depotsTableRulesVO", depotsTableRulesVO);
            modelMap.addAttribute(MESSAGE, "更新分库分表规则成功!");
        } else {
            modelMap.addAttribute(ERROR, "更新分库分表规则失败!");
        }
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping(value = "/depotsTableRules/showDetail")
    public ModelAndView detail(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少分库分表规则id!");
        }
        DepotsTableRulesVO depotsTableRulesVO = depotsTableRulesService.getDepotsTableRules(id);
        return new ModelAndView(RETURN_PAGE, "depotsTableRulesVO", depotsTableRulesVO);
    }

    @RequestMapping(value = "/depotsTableRules/delete")
    public ModelAndView delete(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少分库分表规则id!");
        }
        depotsTableRulesService.deleteDepotsTableRules(id, getUser());
        return new ModelAndView(RETURN_PAGE);
    }
}
