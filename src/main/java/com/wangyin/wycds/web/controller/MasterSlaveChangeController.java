/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbGroupService;
import com.wangyin.wycds.web.biz.DbInfoDbGroupRelationService;
import com.wangyin.wycds.web.controller.vo.DbGroupVO;
import com.wangyin.wycds.web.controller.vo.DbInfoDbGroupRelationVO;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * 数据库主备切换控制器
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/15 17:13 Exp $$
 */
@Controller
public class MasterSlaveChangeController extends BaseController{

    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "dbmanage/masterSlaveChange";

    @Resource(name = "dbInfoDbGroupRelationService")
    private DbInfoDbGroupRelationService dbInfoDbGroupRelationService;

    @Resource(name = "dbGroupService")
    private DbGroupService dbGroupService;

    @RequestMapping("/mschange/show")
    public ModelAndView doGet() {
        if (dbGroupService.getDbGroupListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        List<DbGroupVO> dbGroupVOList = dbGroupService.getDbGroupList();
        return new ModelAndView(RETURN_PAGE, "dbGroupVOList", dbGroupVOList);
    }
    @RequestMapping("/mschange/query")
    public ModelAndView query(String groupId, ModelMap modelMap) {
        List<DbGroupVO> dbGroupVOList = dbGroupService.getDbGroupList();
        modelMap.addAttribute("dbGroupVOList", dbGroupVOList);
        if (StringUtils.isBlank(groupId)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "没有选择集群!");
        }
        List<DbInfoDbGroupRelationVO> dbInfoDbGroupRelationServiceDbGroupList = dbInfoDbGroupRelationService.getDbInfoList(groupId);
        modelMap.addAttribute("dbInfoDbGroupRelationServiceDbGroupList", dbInfoDbGroupRelationServiceDbGroupList);
        modelMap.addAttribute("groupId",groupId);
        modelMap.addAttribute(MESSAGE, "查询信息成功!");
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/mschange/update")
    public ModelAndView query(String groupId, String id) {
        if (StringUtils.isBlank(groupId)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "没有选择集群!");
        }
        List<DbInfoDbGroupRelationVO> dbInfoDbGroupRelationVOs= dbInfoDbGroupRelationService.getDbInfoList(groupId);
        if(CollectionUtils.isEmpty(dbInfoDbGroupRelationVOs)){
            return new ModelAndView(RETURN_PAGE, ERROR, "没有找到群组下的数据库!,群组id="+groupId);
        }
        String oldMasterId="";
        for(DbInfoDbGroupRelationVO dbInfoDbGroupRelationVO:dbInfoDbGroupRelationVOs){
            if(StringUtils.equalsIgnoreCase(dbInfoDbGroupRelationVO.getMasterOrSlave(),"Master")){
                oldMasterId=dbInfoDbGroupRelationVO.getId();
                break;
            }
        }
        dbInfoDbGroupRelationService.updateDbInfoDbGroupRelation("Slave",oldMasterId);
        dbInfoDbGroupRelationService.updateDbInfoDbGroupRelation("Master",id);
        return new ModelAndView(RETURN_PAGE, MESSAGE, "更新成功!");
    }

}
