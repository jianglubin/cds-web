<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 11:10
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
            <ul class="navnew" id="J_navDefault">
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/host.jsp" title="总览">总览</a>
                </li>
                <li class="navnew-item open">
                    <i class="icon-angle-up toggle" title="收起"></i>
                    <a class="item-link" href="javascript:;" title="Linux">Linux</a>
                    <ul class="subnav">
                        <li class=" active ignore ">
                            <a class="item-link dbItemLink" href="<%=request.getContextPath() %>/web-qm/host/instance_mysql.jsp" title="multi-mysql" data-sid="284" data-dbtype="Host" data-dbrole="">
                                multi-mysql
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="<%=request.getContextPath() %>/web-qm/host/instance_oracle.jsp" title="woqu-centos" data-sid="287" data-dbtype="Host" data-dbrole="">
                                woqu-centos
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="primary" data-sid="300" data-dbtype="Host" data-dbrole="">
                                primary
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="rac1" data-sid="306" data-dbtype="Host" data-dbrole="">
                                rac1
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="rac2" data-sid="307" data-dbtype="Host" data-dbrole="">
                                rac2
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="standby" data-sid="301" data-dbtype="Host" data-dbrole="">
                                standby
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="sto1" data-sid="313" data-dbtype="Host" data-dbrole="">
                                sto1
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="sto2" data-sid="314" data-dbtype="Host" data-dbrole="">
                                sto2
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="vm-rac1-11g" data-sid="258" data-dbtype="Host" data-dbrole="">
                                vm-rac1-11g
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="vm-rac2-11g" data-sid="259" data-dbtype="Host" data-dbrole="">
                                vm-rac2-11g
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="woqu-mysql2" data-sid="260" data-dbtype="Host" data-dbrole="">
                                woqu-mysql2
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="woquhost2" data-sid="286" data-dbtype="Host" data-dbrole="">
                                woquhost2
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>

    </div>

</div><!--/sub menu -->

<div class="col-xs-10 container-main_content">

    <input type="hidden" id="ID-sid" value="284" />
    <input type="hidden" id="ID-dbname" value="multi-mysql" />
    <input type="hidden" id="ID-dbtype" value="Host" />

    <div class="row tabs-wrap">


        <div class="col-xs-10">
            <ul class="nav nav-tabs">
                <li  class="active" >
                    <a href="<%=request.getContextPath() %>/web-qm/host/instance.htm?sid=284">主机信息</a>
                </li>
            </ul>
        </div>

    </div>

    <div class="panel panel-default transparent">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="icon-info-sign"></i>基本信息</h3>
            <div class="panel-toolbar">
                <a data-toggle="collapse" href="#J_hostBaseInfo">
                    <i class="icon-chevron-up"></i>
                </a>
            </div>
        </div>
        <div id="J_hostBaseInfo" class="panel-collapse collapse in">
            <div class="panel-body">
                <table class="table table-bordered table-striped">
                    <tbody>
                    <tr>
                        <td class="text-right">主机名称</td>
                        <td>multi-mysql</td>
                        <td class="text-right">性能采集状态</td>
                        <td>
                            <span class="label label-state b-success">已开启</span>
                        </td>
                        <td class="text-right">在线状态</td>
                        <td>
                            <span class="label label-state label-success">线上</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-right">主机 IP</td>
                        <td>192.168.1.204</td>
                        <td class="text-right">CPU频率 / 核数 / 厂商</td>
                        <td colspan="4">0.78 / 4 / Intel(R) Core(TM) i5-4670K CPU @ 3.40GHz</td>
                    </tr>
                    <tr>
                        <td class="text-right">物理内存(GB)</td>
                        <td>16</td>
                        <td class="text-right">系统 / 内核 / 版本</td>
                        <td colspan="4">Linux / 2.6.32-220.el6.x86_64 / Red Hat Enterprise Linux Server release 6.2 (Santiago)</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="panel panel-default transparent">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="icon-info-sign"></i>数据库信息</h3>
            <div class="panel-toolbar">
                <a data-toggle="collapse" href="#J_hostDatabaseInfo">
                    <i class="icon-chevron-up"></i>
                </a>
            </div>
        </div>
        <div id="J_hostDatabaseInfo" class="panel-collapse collapse in">
            <div class="panel-body">
                <ul class="dbinfoList clearfix">
                    <li>
                        <table class="table table-bordered table-striped">
                            <tbody>
                            <tr>
                                <td class="span2 text-right">名称</td>
                                <td><a href="<%=request.getContextPath() %>/web-qm/database/instance_mysql.jsp">WYCDS_MySQL</a></td>
                            </tr>
                            <tr>
                                <td class="text-right">IP</td>
                                <td>192.168.1.204</td>
                            </tr>
                            <tr>
                                <td class="text-right">角色</td>
                                <td>主库</td>
                            </tr>
                            <tr>
                                <td class="text-right">端口</td>
                                <td>3306</td>
                            </tr>
                            <tr>
                                <td class="text-right">类型 / 版本</td>
                                <td>MySQL / 5.5.25a-log Source distribution</td>
                            </tr>
                            <tr>
                                <td class="text-right">性能采集状态</td>
                                <td>
                                    <span class="label label-state b-success">已开启</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-right">在线状态</td>
                                <td>
                                    <span class="label label-state b-success">线上</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</div><!--/main content -->
</div>
</div><!--/container -->
<jsp:include page="../foot.jsp"/>
</body>
</html>

