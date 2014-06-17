<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="zh"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang="zh"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang="zh"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="zh"> <!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>数据库监控中心</title>
    <meta name="description" content=数据监控平台"/>
    <link rel="shortcut icon" href="http://woqutech.3322.org:8080/assets/img/favicon.ico"/>

    <link href="http://woqutech.3322.org:8080/assets/lib/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet"
          media="screen"/>
    <link href="http://woqutech.3322.org:8080/assets/lib/font-awesome/3.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="http://woqutech.3322.org:8080/assets/css/non-responsive.css" rel="stylesheet" media="screen"/>
    <link href="http://woqutech.3322.org:8080/assets/css/theme/bootstrap/qm/theme.css?v=4.1.0.3.20140118160000"
          rel="stylesheet" media="screen"/>
    <link href="http://woqutech.3322.org:8080/assets/plugin/nprogress/0.1.2/nprogress.css" rel="stylesheet"
          media="screen"/>
    <script src="http://woqutech.3322.org:8080/assets/lib/modernizr/2.6.2/modernizr.min.js"></script>
    <script src="http://woqutech.3322.org:8080/assets/lib/jquery/1.10.1/jquery.min.js"></script>
    <script src="http://woqutech.3322.org:8080/assets/plugin/nprogress/0.1.2/nprogress.js"></script>
</head>
<body class="navbar-fixed">
<script>NProgress.start();</script>

<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
        </div>
        <div class="navbar-collapse collapse navbar-inverse">
            <ul class="nav navbar-nav navbar-left">
                <li class="active"><a href="<%=request.getContextPath() %>/web-qm/home.jsp">首页</a></li>
                <li><a href="<%=request.getContextPath() %>/web-qm/oracle.jsp">Oracle</a></li>
                <li><a href="<%=request.getContextPath() %>/web-qm/mysql.jsp">MySQL</a></li>
                <li><a href="<%=request.getContextPath() %>/web-qm/host.jsp">主机</a></li>

                <li class="dropdown ">
                    <a href="<%=request.getContextPath() %>/web-qm/warn/home.jsp" class="dropdown-toggle" data-toggle="dropdown">报警 <b
                            class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="<%=request.getContextPath() %>/web-qm/warn/home.jsp">总览</a></li>
                        <li><a href="<%=request.getContextPath() %>/web-qm/warn/type_oracle.jsp">Oracle</a></li>
                        <li><a href="<%=request.getContextPath() %>/web-qm/warn/type_mysql.jsp">MySQL</a></li>
                        <li><a href="<%=request.getContextPath() %>/web-qm/warn/type_host.jsp">主机</a></li>
                    </ul>
                </li>
                <li class="dropdown ">
                    <a href="<%=request.getContextPath() %>/web-qm/report/home.jsp" class="dropdown-toggle" data-toggle="dropdown">报表 <b
                            class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="<%=request.getContextPath() %>/web-qm/report/home.jsp">总览</a></li>
                        <li><a href="<%=request.getContextPath() %>/web-qm/report/inspect.jsp">巡检报告</a></li>
                        <li><a href="<%=request.getContextPath() %>/web-qm/report/space.jsp">空间</a></li>
                        <li><a href="<%=request.getContextPath() %>/web-qm/report/warn.jsp">报警</a></li>
                        <li><a href="<%=request.getContextPath() %>/web-qm/report/resource.jsp">资源</a></li>
                    </ul>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li class="navbar-text"><i class="icon-volume-up"></i> 您好，admin</li>
                <li class="dropdown ">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">配置管理 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="<%=request.getContextPath() %>/web-qm/user/home.jsp">用户中心</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--/navbar -->
