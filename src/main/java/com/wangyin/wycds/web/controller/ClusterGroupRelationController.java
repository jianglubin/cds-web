/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.DbClusterDbGroupRelationService;
import com.wangyin.wycds.web.biz.DbClusterService;
import com.wangyin.wycds.web.biz.DbGroupService;
import com.wangyin.wycds.web.controller.form.DbGroupForm;
import com.wangyin.wycds.web.controller.vo.DbClusterDbGroupRelationVO;
import com.wangyin.wycds.web.controller.vo.DbClusterVO;
import com.wangyin.wycds.web.controller.vo.DbGroupVO;
import com.wangyin.wycds.web.util.DbGroupUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 数据库集群与群组关系控制类,用来为数据库集群和群组建立关联关系
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/2 20:03 Exp $$
 */
@Controller
public class ClusterGroupRelationController extends BaseController {
    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/clusterGroupRelation";

    @Resource(name = "dbClusterService")
    private DbClusterService dbClusterService;

    @Resource(name = "dbGroupService")
    private DbGroupService dbGroupService;

    @Resource(name = "dbClusterDbGroupRelationService")
    private DbClusterDbGroupRelationService dbClusterDbGroupRelationService;

    @RequestMapping("/clustergroup/show")
    public ModelAndView doGet() {
        if (dbClusterService.getDbClusterListCount() == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "查询数据出错!");
        }
        List<DbClusterVO> dbClusterVOList = dbClusterService.getDbClusterList();
        return new ModelAndView(RETURN_PAGE, "dbClusterVOList", dbClusterVOList);
    }

    @RequestMapping("/clustergroup/query")
    public ModelAndView query(String dbClusterId, ModelMap modelMap) {
        List<DbClusterVO> dbClusterVOList = dbClusterService.getDbClusterList();
        modelMap.addAttribute("dbClusterVOList", dbClusterVOList);
        if (StringUtils.isBlank(dbClusterId)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "没有选择集群!");
        }
        List<DbClusterDbGroupRelationVO> dbClusterDbGroupRelationServiceDbClusterList = dbClusterDbGroupRelationService.getDbClusterList(dbClusterId);
        modelMap.addAttribute("dbClusterDbGroupRelationServiceDbClusterList", dbClusterDbGroupRelationServiceDbClusterList);
        modelMap.addAttribute(MESSAGE, "查询信息成功!");
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/clustergroup/queryall")
    public ModelAndView doGetAllGroup(DbGroupForm dbGroupForm) {
        if (dbGroupForm == null) {
            return new ModelAndView(RETURN_PAGE, ERROR, "至少选择一个查询条件!");
        }
        List<DbGroupVO> dbGroupVOList = dbGroupService.getDbGroupAndClass(DbGroupUtil.convert2VO(dbGroupForm), dbGroupForm.getClusterId());
        return new ModelAndView(RETURN_PAGE, "dbGroupVOList", dbGroupVOList);
    }

    @RequestMapping("/clustergroup/add")
    public ModelAndView add(String[] groupIds, String clusterId, String groupType) {
        if (groupIds == null || StringUtils.isBlank(clusterId) || StringUtils.isBlank(groupType)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少插入信息!");
        }
        if (dbClusterDbGroupRelationService.insertDbCluster(groupIds, clusterId, groupType)) {
            return new ModelAndView(RETURN_PAGE, MESSAGE, "插入信息成功!");
        } else {
            return new ModelAndView(RETURN_PAGE, ERROR, "插入信息失败!");
        }
    }

    @RequestMapping("/clustergroup/delete")
    public ModelAndView delete(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少删除信息ID!");
        }
        List<String> ids = new ArrayList<String>();
        ids.add(id);
        if (dbClusterDbGroupRelationService.deleteDbCluster(ids)) {
            return new ModelAndView(RETURN_PAGE, MESSAGE, "删除信息成功!");
        } else {
            return new ModelAndView(RETURN_PAGE, ERROR, "删除信息失败!");
        }
    }
}
