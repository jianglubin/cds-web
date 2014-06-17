/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller;

import com.wangyin.wycds.web.biz.ColumnInfoService;
import com.wangyin.wycds.web.biz.DbClusterService;
import com.wangyin.wycds.web.biz.DepotsTableRulesService;
import com.wangyin.wycds.web.biz.SplittingKeyService;
import com.wangyin.wycds.web.controller.vo.ColumnInfoVO;
import com.wangyin.wycds.web.controller.vo.DbClusterVO;
import com.wangyin.wycds.web.controller.vo.FieldVO;
import com.wangyin.wycds.web.controller.vo.SplittingKeyVO;
import com.wangyin.wycds.web.util.JDBCUtil;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * 切分键与表与字段映射关系控制类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 17:43 Exp $$
 */
@Controller
public class ColumnInfoController extends BaseController {

    /**
     * 返回页面
     */
    private static final String RETURN_PAGE = "configuration/columnInfoManage";

    @Resource(name = "columnInfoService")
    private ColumnInfoService columnInfoService;

    @Resource(name = "splittingKeyService")
    private SplittingKeyService splittingKeyService;

    @Resource(name = "dbClusterService")
    private DbClusterService dbClusterService;

    @RequestMapping("/columninfo/show")
    public ModelAndView doGet(ModelMap modelMap) {
        List<DbClusterVO> dbClusterVOList = dbClusterService.getDbClusterList();
        modelMap.addAttribute("dbClusterVOList", dbClusterVOList);
        List<SplittingKeyVO> splittingKeyVOList = splittingKeyService.getSplittingKeyListNoPaginator();
        List<String> tableNameList = JDBCUtil.getALLTables();
        modelMap.addAttribute("tableNameList", tableNameList);
        modelMap.addAttribute("splittingKeyVOList", splittingKeyVOList);
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping("/columninfo/querycolunm")
    public ModelAndView queryColumn(String tableName) {
        if (StringUtils.isBlank(tableName)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "没有选择表!");
        }
        List<FieldVO> fieldVOList = JDBCUtil.getAllField(tableName);
        return new ModelAndView(RETURN_PAGE, "fieldVOList", fieldVOList);
    }

    @RequestMapping("/columninfo/add")
    public ModelAndView add(String[] columns, String splittingKeyId,String clusterId, String tableName) {
        if (columns == null || StringUtils.isBlank(splittingKeyId) || StringUtils.isBlank(tableName)|| StringUtils.isBlank(clusterId)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少插入信息!");
        }
        if (columnInfoService.insertColumnInfo(columns, splittingKeyId,clusterId, tableName, getUser())) {
            return new ModelAndView(RETURN_PAGE, MESSAGE, "插入信息成功!");
        } else {
            return new ModelAndView(RETURN_PAGE, ERROR, "插入信息失败!");
        }
    }

    @RequestMapping("/columninfo/query")
    public ModelAndView query(String splittingKeyId, String clusterId,Integer page, ModelMap modelMap) {
        List<SplittingKeyVO> splittingKeyVOList = splittingKeyService.getSplittingKeyListNoPaginator();
        modelMap.addAttribute("splittingKeyVOList", splittingKeyVOList);
        List<String> tableNameList = JDBCUtil.getALLTables();
        modelMap.addAttribute("tableNameList", tableNameList);
        List<DbClusterVO> dbClusterVOList = dbClusterService.getDbClusterList();
        modelMap.addAttribute("dbClusterVOList", dbClusterVOList);
        if (StringUtils.isBlank(splittingKeyId)&&StringUtils.isBlank(clusterId)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "没有选择查询条件!");
        }
        Paginator paginator = new Paginator();
        ColumnInfoVO columnInfoVO = new ColumnInfoVO();
        columnInfoVO.setSplittingKeyId(splittingKeyId);
        columnInfoVO.setClusterId(clusterId);
        paginator.setItems(columnInfoService.getColumnInfoAndClassCount(columnInfoVO));
        paginator.setItemsPerPage(PAGE_SIZE);
        if (page == null) {
            paginator.setPage(1);
        } else {
            paginator.setPage(page);
        }
        List<ColumnInfoVO> columnInfoVOList = columnInfoService.getColumnInfoAndClass(columnInfoVO, paginator);
        modelMap.addAttribute("paginator", paginator);
        modelMap.addAttribute("columnInfoVOList", columnInfoVOList);
        modelMap.addAttribute(MESSAGE, "查询信息成功!");
        return new ModelAndView(RETURN_PAGE, modelMap);
    }

    @RequestMapping(value = "/columninfo/delete")
    public ModelAndView delete(String id) {
        if (StringUtils.isBlank(id)) {
            return new ModelAndView(RETURN_PAGE, ERROR, "缺少数据库id!");
        }
        columnInfoService.deleteColumnInfo(id, getUser());
        return new ModelAndView(RETURN_PAGE);
    }
}
