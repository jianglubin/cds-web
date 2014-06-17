/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package org.activiti.explorer.rest.application;

import org.activiti.rest.common.api.DefaultResource;
import org.activiti.rest.common.application.ActivitiRestApplication;
import org.activiti.rest.common.filter.JsonpFilter;
import org.activiti.rest.editor.application.ModelerServicesInit;
import org.restlet.Restlet;
import org.restlet.routing.Router;

/**
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/6 11:37 Exp $$
 */
public class ExplorerRestApplication extends ActivitiRestApplication {

    public ExplorerRestApplication() {
        super();
    }
    /**
     * Creates a root Restlet that will receive all incoming calls.
     */
    @Override
    public synchronized Restlet createInboundRoot() {
        Router router = new Router(getContext());
        router.attachDefault(DefaultResource.class);
        ModelerServicesInit.attachResources(router);
        //DiagramServicesInit.attachResources(router);
        JsonpFilter jsonpFilter = new JsonpFilter(getContext());
        jsonpFilter.setNext(router);
        return jsonpFilter;
    }

}
