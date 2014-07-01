/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.dal.dataobject.ResourcesCategoryDO;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 资源类目查询接口
 * @author 蒋鲁宾
 * @version v 0.1 2014/7/1 16:17 Exp $$
 */
@Repository
@Transactional
public interface ResourcesCategoryDAO {

    /**
     * 查询类目根据父类id
     * @param parentId
     * @return
     */
    public List<ResourcesCategoryDO> getCategoryByParentId(String parentId);

    /**
     * 根据id查询类目信息
     * @param id
     * @return
     */
    public ResourcesCategoryDO getCategoryById(String id);

    /**
     * 更新类目
     * @param resourcesCategoryDO
     * @return
     */
    public int updateCategory(ResourcesCategoryDO resourcesCategoryDO);

    /**
     * 插入类目
     * @param resourcesCategoryDO
     * @return
     */
    public int insertCategory(ResourcesCategoryDO resourcesCategoryDO);

    /**
     * 删除类目
     * @param id
     * @param modifiedBy
     * @return
     */
    public int deleteCategory(String id,String modifiedBy );
}
