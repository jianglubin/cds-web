/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbGroupService;
import com.wangyin.wycds.web.biz.DbInfoDbGroupRelationService;
import com.wangyin.wycds.web.biz.DbInfoService;
import com.wangyin.wycds.web.controller.form.DbInfoForm;
import com.wangyin.wycds.web.controller.vo.DbGroupVO;
import com.wangyin.wycds.web.controller.vo.DbInfoDbGroupRelationVO;
import com.wangyin.wycds.web.controller.vo.DbInfoVO;
import com.wangyin.wycds.web.util.DbInfoUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 群组与数据库关系控制类,用来为群组和数据库建立关联关系
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/3 19:43 Exp $$
 */
@Controller
public class DbInfoDbGroupRelationController extends BaseController{

    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/groupDbInfoRelation";

    @Resource(name = "dbGroupService")
    private DbGroupService dbGroupService;

    @Resource(name = "dbInfoDbGroupRelationService")
    private DbInfoDbGroupRelationService dbInfoDbGroupRelationService;

    @Resource(name = "dbInfoService")
    private DbInfoService dbInfoService;

    @RequestMapping("/dbinfogroup/show")
    public ModelAndView doGet() {
        if (dbGroupService.getDbGroupListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        List<DbGroupVO> dbGroupVOList = dbGroupService.getDbGroupList();
        return new ModelAndView(RETURN_PAGE, "dbGroupVOList", dbGroupVOList);
    }

    @RequestMapping("/dbinfogroup/query")
    public ModelAndView query(String groupId, ModelMap modelMap) {
        List<DbGroupVO> dbGroupVOList = dbGroupService.getDbGroupList();
        modelMap.addAttribute("dbGroupVOList", dbGroupVOList);
        if (StringUtils.isBlank(groupId)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "没有选择集群!");
        }
        List<DbInfoDbGroupRelationVO> dbInfoDbGroupRelationServiceDbGroupList = dbInfoDbGroupRelationService.getDbInfoList(groupId);
        modelMap.addAttribute("dbInfoDbGroupRelationServiceDbGroupList", dbInfoDbGroupRelationServiceDbGroupList);
        modelMap.addAttribute(MESSAGE, "查询信息成功!");
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/dbinfogroup/queryall")
    public ModelAndView doGetAllGroup(DbInfoForm dbInfoForm) {
        if (dbInfoForm == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "至少选择一个查询条件!");
        }
        List<DbInfoVO> dbInfoVOList = dbInfoService.getDbInfoAndClass(DbInfoUtil.convert2VO(dbInfoForm), dbInfoForm.getGroupId());
        return new ModelAndView(RETURN_PAGE, "dbInfoVOList", dbInfoVOList);
    }

    @RequestMapping("/dbinfogroup/add")
    public ModelAndView add(String[] dbInfoIds,String groupId,String masterOrSlave) {
        if (dbInfoIds == null || StringUtils.isBlank(groupId) || StringUtils.isBlank(masterOrSlave)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少插入信息!");
        }
        if( dbInfoDbGroupRelationService.insertDbCluster(dbInfoIds, groupId, masterOrSlave)){
            return new ModelAndView(RETURN_PAGE, MESSAGE, "新增信息成功!");
        }else {
            return new ModelAndView(RETURN_PAGE, ERROR, "新增信息失败!");
        }
    }

    @RequestMapping("/dbinfogroup/delete")
    public ModelAndView delete(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少删除信息ID!");
        }
        List<String> ids = new ArrayList<String>();
        ids.add(id);
        if (dbInfoDbGroupRelationService.deleteDbCluster(ids)){
            return new ModelAndView(RETURN_PAGE, MESSAGE, "删除信息成功!");
        }else{
            return new ModelAndView(RETURN_PAGE, ERROR, "删除信息失败!");
        }
    }
}
