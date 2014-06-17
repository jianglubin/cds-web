<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../head.jsp"/>
<div class="container">
    <div class="row container-main">
        <div class="col-xs-2 container-main_menu">
            <div class="menu-filter">

                <div class="form-group">
                    <input id="J_filter" type="text" class="form-control" placeholder="Filter" />
                </div>
            </div>

            <div class="menu">
                <div id="J_navnew">
                    <ul class="navnew">
                        <li class="navnew-item  active ignore ">
                            <a class="item-link" href="<%=request.getContextPath() %>/web-qm/user/home.htm" title="用户中心">用户中心</a>
                        </li>
                    </ul>
                </div>

            </div>

        </div><!--/sub menu -->

        <div class="col-xs-10 container-main_content">



            <div class="panel panel-default transparent user-edit">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="icon-user-md"></i>用户中心</h3>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal form-debug" id="ID-setting-user-form" action="<%=request.getContextPath() %>/web-qm/user/do-post-update-user-personal.htm" method="post">
                        <input type="hidden" value="7" name="id" />

                        <div class="form-group">
                            <label class="control-label" for="ID-user-loginName">登录账号</label>
                            <div class="control-wrap">
                                <input type="text" class="form-control span3" name="loginName" id="ID-user-loginName" value="woqutech" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="ID-user-loginName">登录密码</label>
                            <div class="control-wrap">
                                <input type="password" class="form-control span3 ignore" name="password" id="ID-user-password" placeholder="******" />
		        	<span class="help-block">
						<i class="icon-exclamation-sign c-blue"></i>
						<small class="c-grey">若不修改密码,可不用填写</small>
					</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="ID-user-email">用户邮箱</label>
                            <div class="control-wrap">
                                <input type="text" class="form-control span3" name="email" id="ID-user-email" value="work@woqutech.com" />
		        	<span class="help-block">
						<i class="icon-exclamation-sign c-blue"></i>
						<small class="c-grey">监控发生报警时,使用该邮箱接收邮件</small>
					</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="ID-user-mobile">用户手机</label>
                            <div class="control-wrap">
                                <input type="text" class="form-control span3" name="mobile" id="ID-user-mobile" value="15925631072" />
		        	<span class="help-block">
						<i class="icon-exclamation-sign c-blue"></i>
						<small class="c-grey">监控发生报警时,使用该手机接收短信</small>
					</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">用户角色</label>
                            <div class="control-wrap">
                                <select name="accountRole" class="chzn-select form-control span3" id="ID-user-accountRole-selector" data-placeholder="请选择用户角色"  disabled="disabled" >
                                    <option value="guest" >只读用户</option>
                                </select>
		        	<span class="help-block">
						<i class="icon-exclamation-sign c-blue"></i>
						<small class="c-grey"> 当前用户无法修改自身的角色 </small>
					</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="control-wrap">
                                <div class="form-actions">
                                    <button class="btn btn-info" type="submit" data-type="personal"><i class="icon-ok"></i> 修改</button>
                                    <button class="btn btn-default" onclick="javascript:history.go(-1)"><i class="icon-undo"></i> 返回</button>
                                </div>
                            </div>
                        </div>

                    </form>
                </div>
            </div>

        </div><!--/main content -->
    </div>
</div><!--/container -->
<jsp:include page="../foot.jsp"/>
</body>
</html>
