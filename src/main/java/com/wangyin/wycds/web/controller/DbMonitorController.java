/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbHostGroupService;
import com.wangyin.wycds.web.biz.DbMonitorService;
import com.wangyin.wycds.web.controller.vo.DbMonitorVO;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

/**
 * 监控群组控制类,用来操作数据库群组的CRUD
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/27 14:02 Exp $$
 */
@Controller
public class DbMonitorController extends BaseController {
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/dbMonitorManage";

    @Resource(name = "dbMonitorService")
    private DbMonitorService dbMonitorService;

    @Resource(name = "dbHostGroupService")
    private DbHostGroupService dbHostGroupService;

    @RequestMapping("/dbMonitor/show")
    public ModelAndView doGet(ModelMap modelMap) {
        return queryAll(modelMap);
    }

    private ModelAndView queryAll(ModelMap modelMap) {
        List<DbMonitorVO> dbMonitorVOList;
        Paginator paginator = new Paginator();
        if (dbMonitorService.getDbMonitorListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        paginator.setItems(dbMonitorService.getDbMonitorListCount());
        paginator.setItemsPerPage(PAGE_SIZE);
        paginator.setPage(1);
        dbMonitorVOList = dbMonitorService.getDbMonitorList(paginator);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dbMonitorVOList", dbMonitorVOList);
        modelMap.addAttribute("dbGroupVOList", dbHostGroupService.getDbHostGroupList());
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/dbMonitor/query")
    public ModelAndView query(DbMonitorVO dbMonitorVO, Integer page, ModelMap modelMap) {
        if (dbMonitorVO == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "至少选择一个查询条件!");
        }
        Paginator paginator = new Paginator();
        paginator.setItems(dbMonitorService.getDbMonitorAndClassCount(dbMonitorVO));
        paginator.setItemsPerPage(PAGE_SIZE);
        if (page == null) {
            paginator.setPage(1);
        } else {
            paginator.setPage(page);
        }
        List<DbMonitorVO> dbMonitorVOList;
        dbMonitorVOList = dbMonitorService.getDbMonitorAndClass(dbMonitorVO, paginator);
        modelMap.addAttribute("dbMonitorVO", dbMonitorVO);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("dbMonitorVOList", dbMonitorVOList);
        modelMap.addAttribute("dbGroupVOList", dbHostGroupService.getDbHostGroupList());
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/dbMonitor/add")
    public ModelAndView add(@Valid DbMonitorVO dbMonitorVO, BindingResult result, ModelMap modelMap) {
        String fileName = dbMonitorVO.getScriptPath().getOriginalFilename();
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
//        dbMonitorVO.setCreateBy(getUser());
//        dbMonitorVO.setModifiedBy(getUser());
//        dbMonitorService.insertDbMonitor(dbMonitorVO);
        modelMap.addAttribute(MESSAGE, "新增监控项信息成功!");
        return queryAll(modelMap);
    }

    @RequestMapping("/dbMonitor/update")
    public ModelAndView update(@Valid DbMonitorVO dbMonitorVO, BindingResult result, ModelMap modelMap) {
        //单独校验id
        if (StringUtils.isBlank(dbMonitorVO.getId())) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少监控项id!");
        }
        //校验没有通过,返回错误结果
        if (result.hasErrors()) {
            return new ModelAndView(RETURN_PAGE, ERROR, getError(result));
        }
        dbMonitorVO.setModifiedBy(getUser());
        dbMonitorService.updateDbMonitor(dbMonitorVO, StringUtils.equals(dbMonitorVO.getGroupId(),dbMonitorVO.getOldGroupId())?null:dbMonitorVO.getOldGroupId());
        dbMonitorVO = dbMonitorService.getDbMonitor(String.valueOf(dbMonitorVO.getId()));
        modelMap.addAttribute("dbMonitorVO", dbMonitorVO);
        modelMap.addAttribute(MESSAGE, "更新监控项信息成功!");
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping(value = "/dbMonitor/showDetail")
    public ModelAndView detail(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少监控项id!");
        }
        DbMonitorVO dbMonitorVO;
        dbMonitorVO = dbMonitorService.getDbMonitor(id);
        return new ModelAndView(RETURN_PAGE, "dbMonitorVO", dbMonitorVO);
    }

    @RequestMapping(value = "/dbMonitor/updateStatus")
    public ModelAndView delete(String id, String status) {
        if (StringUtils.isBlank(id) || StringUtils.isBlank(status)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少监控项id!");
        }
        dbMonitorService.udpateStatus(id, getUser(), Boolean.valueOf(status));
        return new ModelAndView(RETURN_PAGE);
    }
}
