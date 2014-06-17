<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="head.jsp"/>
<div class="container">
<div class="row container-main">
<div class="col-xs-2 container-main_menu">
    <div class="menu-filter">

        <div class="form-group">
            <input id="J_filter" type="text" class="form-control" placeholder="Filter"/>
        </div>
    </div>

    <div class="menu">
        <div id="J_navnew">
            <ul class="navnew" id="J_navDefault">
                <li class="navnew-item  active ignore ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/host.htm" title="总览">总览</a>
                </li>
                <li class="navnew-item open">
                    <i class="icon-angle-up toggle" title="收起"></i>
                    <a class="item-link" href="javascript:;" title="Linux">Linux</a>
                    <ul class="subnav">
                        <li class="">
                            <a class="item-link dbItemLink" href="<%=request.getContextPath() %>/web-qm/host/instance_mysql.jsp" title="multi-mysql"
                               data-sid="284" data-dbtype="Host" data-dbrole="">
                                multi-mysql
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="primary" data-sid="300" data-dbtype="Host"
                               data-dbrole="">
                                primary
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="rac1" data-sid="306" data-dbtype="Host"
                               data-dbrole="">
                                rac1
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="rac2" data-sid="307" data-dbtype="Host"
                               data-dbrole="">
                                rac2
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="standby" data-sid="301" data-dbtype="Host"
                               data-dbrole="">
                                standby
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="sto1" data-sid="313" data-dbtype="Host"
                               data-dbrole="">
                                sto1
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="sto2" data-sid="314" data-dbtype="Host"
                               data-dbrole="">
                                sto2
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="vm-rac1-11g" data-sid="258"
                               data-dbtype="Host" data-dbrole="">
                                vm-rac1-11g
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="vm-rac2-11g" data-sid="259"
                               data-dbtype="Host" data-dbrole="">
                                vm-rac2-11g
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="woqu-centos" data-sid="287"
                               data-dbtype="Host" data-dbrole="">
                                woqu-centos
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="woqu-mysql2" data-sid="260"
                               data-dbtype="Host" data-dbrole="">
                                woqu-mysql2
                            </a>
                        </li>
                        <li class="">
                            <a class="item-link dbItemLink" href="" title="woquhost2" data-sid="286" data-dbtype="Host"
                               data-dbrole="">
                                woquhost2
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>

    </div>

</div>
<!--/sub menu -->

<div class="col-xs-10 container-main_content">


<div class="row tabs-wrap">


    <div class="col-xs-10">
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="<%=request.getContextPath() %>/web-qm/host.jsp">主机总览</a>
            </li>
        </ul>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="icon-exclamation-sign"></i>实时报警</h3>
    </div>
    <div class="panel-body">

        <table id="warnType-host" class="table table-bordered table-striped">
            <thead>
            <tr>
                <th>名称</th>
                <th>CPU/Load</th>
                <th>DiskIO</th>
                <th>LogWatch</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    multi-mysql
                </td>
                <td>
                    <span class="label label-state b-success">OK</span>
                </td>
                <td>
                    <span class="label label-state b-success">OK</span>
                </td>
                <td>
                    <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
                </td>
            </tr>
            <tr>
                <td>
                    primary
                </td>
                <td>
                    <a class="unlineLink" href="">
                        <span class="label label-state b-danger" data-toggle="tooltip"
                              title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="">
                        <span class="label label-state b-danger" data-toggle="tooltip"
                              title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="">
                        <span class="label label-state b-danger" data-toggle="tooltip"
                              title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
            </tr>
            <tr>
                <td>
                    rac1
                </td>
                <td>
                    <a class="unlineLink" href="">
                        <span class="label label-state b-danger" data-toggle="tooltip"
                              title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="">
                        <span class="label label-state b-danger" data-toggle="tooltip"
                              title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="">
                        <span class="label label-state b-danger" data-toggle="tooltip"
                              title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
            </tr>
            <tr>
                <td>
                    rac2
                </td>
                <td>
                    <a class="unlineLink" href="">
                        <span class="label label-state b-danger" data-toggle="tooltip"
                              title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="">
                        <span class="label label-state b-danger" data-toggle="tooltip"
                              title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="">
                        <span class="label label-state b-danger" data-toggle="tooltip"
                              title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
            </tr>
            <tr>
                <td>
                    standby
                </td>
                <td>
                    <span class="label label-state b-success">OK</span>
                </td>
                <td>
                    <a class="unlineLink" href="">
                        <span class="label label-state b-danger" data-toggle="tooltip"
                              title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="">
                        <span class="label label-state b-danger" data-toggle="tooltip"
                              title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="row">
    <div class="col-xs-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="icon-list"></i>主机在线时长</h3>
            </div>
            <div class="panel-body">
                <div class="home-panel">
                    <table id="hostOnlineList" class="table table-bordered table-striped table-condensed">
                        <thead>
                        <tr class="tr-white">
                            <th>名称</th>
                            <th>时长</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>woqu-mysql2</td>
                            <td data-realValue="5442800">
                                62 天 23 小时 53 分 20 秒
                            </td>
                        </tr>
                        <tr>
                            <td>woqu-centos</td>
                            <td data-realValue="5442741">
                                62 天 23 小时 52 分 21 秒
                            </td>
                        </tr>
                        <tr>
                            <td>multi-mysql</td>
                            <td data-realValue="5104535">
                                59 天 1 小时 55 分 35 秒
                            </td>
                        </tr>
                        <tr>
                            <td>vm-rac2-11g</td>
                            <td data-realValue="3460385">
                                40 天 1 小时 13 分 5 秒
                            </td>
                        </tr>
                        <tr>
                            <td>vm-rac1-11g</td>
                            <td data-realValue="2241882">
                                25 天 22 小时 44 分 42 秒
                            </td>
                        </tr>
                        <tr>
                            <td>sto2</td>
                            <td data-realValue="94526">
                                1 天 2 小时 15 分 26 秒
                            </td>
                        </tr>
                        <tr>
                            <td>rac2</td>
                            <td data-realValue="33727">
                                9 小时 22 分 7 秒
                            </td>
                        </tr>
                        <tr>
                            <td>woquhost2</td>
                            <td data-realValue="25180">
                                6 小时 59 分 40 秒
                            </td>
                        </tr>
                        <tr>
                            <td>sto1</td>
                            <td data-realValue="10745">
                                2 小时 59 分 5 秒
                            </td>
                        </tr>
                        <tr>
                            <td>standby</td>
                            <td data-realValue="5540">
                                1 小时 32 分 20 秒
                            </td>
                        </tr>
                        <tr>
                            <td>rac1</td>
                            <td data-realValue="976">
                                16 分 16 秒
                            </td>
                        </tr>
                        <tr>
                            <td>primary</td>
                            <td data-realValue="227">
                                3 分 47 秒
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xs-8">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="icon-adjust"></i>主机版本分布</h3>
            </div>
            <div class="panel-body">
                <div id="hostVerChart" class="charts-container charts-container_host host-ver"
                     data-chartdata="[{&quot;name&quot;:&quot;&quot;,&quot;y&quot;:1},{&quot;name&quot;:&quot;Red Hat Enterprise Linux Server release 6.2 (Santiago)&quot;,&quot;y&quot;:6},{&quot;name&quot;:&quot;Red Hat Enterprise Linux Server release 6.3 (Santiago)&quot;,&quot;y&quot;:5}]"
                     data-nodata="当前监控的主机无法采集到主机版本信息，请检查主机的性能采集状态、主机用户的权限或者主机安装的OS版本。" style="height: 280px;"></div>
            </div>
        </div>
    </div>
</div>

</div>
<!--/main content -->
</div>
</div>
<!--/container -->
<jsp:include page="foot.jsp"/>
<script src="http://woqutech.3322.org:8080/assets/js/qm.host-home.js?v=4.1.0.3.20140118160000"></script>
</body>
</html>

