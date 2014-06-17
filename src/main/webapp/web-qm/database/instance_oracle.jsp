<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../head.jsp"/>
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
                <li class='navnew-item'>
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/oracle.jsp" title="总览">总览</a>
                </li>
                <li class='navnew-item open '>
                    <i class="icon-angle-up toggle" title="收起"></i>
                    <a class="item-link" href="" title="JES">JES</a>
                    <ul class="subnav">
                        <li class=" active ignore "  data-active="">
                            <a  href="<%=request.getContextPath() %>/web-qm/database/instance_oracle.jsp"  data-rac="0" title="主|JES|192.168.1.222">
                                <span class="badge identifying-master">主</span>
                                JES
                            </a>
                        </li>
                    </ul>
                </li>
                <li class='navnew-item open '>
                    <i class="icon-angle-up toggle" title="收起"></i>
                    <a class="item-link" href="" title="ORCL">ORCL</a>
                    <ul class="subnav">
                        <li  class=""  data-active="">
                            <a  href=""  data-rac="0" title="主|orcl|192.168.1.235">
                                <span class="badge identifying-master">主</span>
                                orcl
                            </a>
                        </li>
                        <li  class=""  data-active="">
                            <a  href=""  data-rac="0" title="备|dg|192.168.1.236">
                                <span class="badge identifying-slave">备</span>
                                dg
                            </a>
                        </li>
                    </ul>
                </li>
                <li class='navnew-item open '>
                    <i class="icon-angle-up toggle" title="收起"></i>
                    <a class="item-link" href="" title="QM">QM</a>
                    <ul class="subnav">
                        <li  class=""  data-active="">
                            <a  href=""  data-rac="1" title="RAC|主|qm|192.168.1.141,192.168.1.142">
                                <span class="badge identifying-master">主</span>
                                qm
                            </a>
                        </li>
                    </ul>
                </li>
                <li class='navnew-item open '>
                    <i class="icon-angle-up toggle" title="收起"></i>
                    <a class="item-link" href="" title="RAC11G">RAC11G</a>
                    <ul class="subnav">
                        <li  class=""  data-active="">
                            <a  href=""  data-rac="1" title="RAC|主|rac11g|192.168.1.191,192.168.1.192">
                                <span class="badge identifying-master">主</span>
                                rac11g
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


<input type="hidden" id="ID-sid" value="288"/>
<input type="hidden" id="ID-dbname" value="JES : jes"/>
<input type="hidden" id="ID-dbtype" value="Oracle"/>


<div class="row tabs-wrap">
    <div class="col-xs-10">
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="<%=request.getContextPath() %>/web-qm/database/instance_oracle.jsp">数据库信息</a>
            </li>
            <li>
                <a href="<%=request.getContextPath() %>/web-qm/performance/ora/top-sql.jsp">TOP SQL</a>
            </li>
            <li>
                <a href="<%=request.getContextPath() %>/web-qm/space/home_oracle.jsp">空间</a>
            </li>
        </ul>
    </div>


</div>


<div class="row">
    <div class="col-xs-6">
        <div class="panel panel-default transparent">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="icon-info-sign"></i>基本信息</h3>

                <div class="panel-toolbar">
                    <a data-toggle="collapse" href="#J_databaseInfo">
                        <i class="icon-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div id="J_databaseInfo" class="panel-collapse collapse in">
                <div class="panel-body">
                    <table class="table table-bordered table-striped databaseInfo">
                        <tbody>
                        <tr>
                            <td class="title">数据库名称</td>
                            <td>
                                <div id="ID-editNameWrap" class="rac-info-editName-wrap">
                                    <span>JES</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="title">SID</td>
                            <td>jes</td>
                        </tr>
                        <tr>
                            <td class="title">IP</td>
                            <td>192.168.1.222</td>
                        </tr>
                        <tr>
                            <td class="title">角色</td>
                            <td> 主库</td>
                        </tr>
                        <tr>
                            <td class="title">端口</td>
                            <td>1521</td>
                        </tr>
                        <tr>
                            <td class="title">类型 / 版本</td>
                            <td>Oracle / 9.2.0.8.0</td>
                        </tr>
                        <tr>
                            <td class="title">性能采集状态</td>
                            <td>
                                <span class="label label-state b-success">已开启</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="title">在线状态</td>
                            <td>
                                <span class="label label-state b-success">线上</span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="panel panel-default transparent">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="icon-info-sign"></i>主机信息</h3>
                <div class="panel-toolbar">
                    <a data-toggle="collapse" href="#J_databaseHostInfo">
                        <i class="icon-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div id="J_databaseHostInfo" class="panel-collapse collapse in">
                <div class="panel-body">
                    <table class="table table-bordered table-striped databaseInfo">
                        <tbody>
                        <tr>
                            <td class="title">名称</td>
                            <td>
                                <a href="<%=request.getContextPath() %>/web-qm/host/instance_oracle.jsp">woqu-centos</a>
                            </td>
                        </tr>
                        <tr>
                            <td class="title">主机 IP</td>
                            <td>192.168.1.222</td>
                        </tr>
                        <tr>
                            <td class="title">内存(GB)</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td class="title">系统 / 内核 / 版本</td>
                            <td>Linux / 2.6.32-431.5.1.el6.x86_64 /</td>
                        </tr>
                        <tr>
                            <td class="title">CPU频率 / 核数 / 厂商</td>
                            <td>3.12 / 4 / QEMU Virtual CPU version (cpu64-rhel6)</td>
                        </tr>
                        <tr>
                            <td class="title">性能采集状态</td>
                            <td>
                                <span class="label label-state b-success">已开启</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="title">在线状态</td>
                            <td>
                                <span class="label label-state b-success">线上</span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-6">
        <div class="panel panel-default transparent">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="icon-dashboard"></i>CPU(us+sys+iowait)</h3>

                <div class="panel-toolbar no-border">Last 1 hour</div>
                <div class="panel-toolbar">
                    <a data-toggle="collapse" href="#J_databaseDashboard">
                        <i class="icon-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div id="J_databaseDashboard" class="panel-collapse collapse in">
                <div class="panel-body">
                    <div class="database-dashboard chartContainer" data-vid="287" data-title="CPU"
                         data-loadurl="<%=request.getContextPath() %>/web-qm/load-cpu-quota.htm"
                         data-chartData="[{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400567280000,&quot;selected&quot;:false,&quot;x&quot;:1400567280000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400567340000,&quot;selected&quot;:false,&quot;x&quot;:1400567340000,&quot;y&quot;:1},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400567400000,&quot;selected&quot;:false,&quot;x&quot;:1400567400000,&quot;y&quot;:1},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400567460000,&quot;selected&quot;:false,&quot;x&quot;:1400567460000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400567520000,&quot;selected&quot;:false,&quot;x&quot;:1400567520000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400567580000,&quot;selected&quot;:false,&quot;x&quot;:1400567580000,&quot;y&quot;:0},{&quot;calValue&quot;:2,&quot;gmtCreate&quot;:1400567640000,&quot;selected&quot;:false,&quot;x&quot;:1400567640000,&quot;y&quot;:2},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400567700000,&quot;selected&quot;:false,&quot;x&quot;:1400567700000,&quot;y&quot;:0},{&quot;calValue&quot;:4,&quot;gmtCreate&quot;:1400567760000,&quot;selected&quot;:false,&quot;x&quot;:1400567760000,&quot;y&quot;:4},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400567820000,&quot;selected&quot;:false,&quot;x&quot;:1400567820000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400567880000,&quot;selected&quot;:false,&quot;x&quot;:1400567880000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400567940000,&quot;selected&quot;:false,&quot;x&quot;:1400567940000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400568000000,&quot;selected&quot;:false,&quot;x&quot;:1400568000000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400568060000,&quot;selected&quot;:false,&quot;x&quot;:1400568060000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400568120000,&quot;selected&quot;:false,&quot;x&quot;:1400568120000,&quot;y&quot;:1},{&quot;calValue&quot;:4,&quot;gmtCreate&quot;:1400568180000,&quot;selected&quot;:false,&quot;x&quot;:1400568180000,&quot;y&quot;:4},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400568240000,&quot;selected&quot;:false,&quot;x&quot;:1400568240000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400568300000,&quot;selected&quot;:false,&quot;x&quot;:1400568300000,&quot;y&quot;:1},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400568360000,&quot;selected&quot;:false,&quot;x&quot;:1400568360000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400568420000,&quot;selected&quot;:false,&quot;x&quot;:1400568420000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400568480000,&quot;selected&quot;:false,&quot;x&quot;:1400568480000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400568540000,&quot;selected&quot;:false,&quot;x&quot;:1400568540000,&quot;y&quot;:1},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400568600000,&quot;selected&quot;:false,&quot;x&quot;:1400568600000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400568660000,&quot;selected&quot;:false,&quot;x&quot;:1400568660000,&quot;y&quot;:1},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400568720000,&quot;selected&quot;:false,&quot;x&quot;:1400568720000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400568780000,&quot;selected&quot;:false,&quot;x&quot;:1400568780000,&quot;y&quot;:1},{&quot;calValue&quot;:2,&quot;gmtCreate&quot;:1400568840000,&quot;selected&quot;:false,&quot;x&quot;:1400568840000,&quot;y&quot;:2},{&quot;calValue&quot;:9,&quot;gmtCreate&quot;:1400568900000,&quot;selected&quot;:false,&quot;x&quot;:1400568900000,&quot;y&quot;:9},{&quot;calValue&quot;:5,&quot;gmtCreate&quot;:1400568960000,&quot;selected&quot;:false,&quot;x&quot;:1400568960000,&quot;y&quot;:5},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569020000,&quot;selected&quot;:false,&quot;x&quot;:1400569020000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400569080000,&quot;selected&quot;:false,&quot;x&quot;:1400569080000,&quot;y&quot;:1},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569140000,&quot;selected&quot;:false,&quot;x&quot;:1400569140000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569200000,&quot;selected&quot;:false,&quot;x&quot;:1400569200000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569260000,&quot;selected&quot;:false,&quot;x&quot;:1400569260000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400569320000,&quot;selected&quot;:false,&quot;x&quot;:1400569320000,&quot;y&quot;:1},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569380000,&quot;selected&quot;:false,&quot;x&quot;:1400569380000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569440000,&quot;selected&quot;:false,&quot;x&quot;:1400569440000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400569500000,&quot;selected&quot;:false,&quot;x&quot;:1400569500000,&quot;y&quot;:1},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569560000,&quot;selected&quot;:false,&quot;x&quot;:1400569560000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569620000,&quot;selected&quot;:false,&quot;x&quot;:1400569620000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569680000,&quot;selected&quot;:false,&quot;x&quot;:1400569680000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569740000,&quot;selected&quot;:false,&quot;x&quot;:1400569740000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569800000,&quot;selected&quot;:false,&quot;x&quot;:1400569800000,&quot;y&quot;:0},{&quot;calValue&quot;:2,&quot;gmtCreate&quot;:1400569860000,&quot;selected&quot;:false,&quot;x&quot;:1400569860000,&quot;y&quot;:2},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569920000,&quot;selected&quot;:false,&quot;x&quot;:1400569920000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569980000,&quot;selected&quot;:false,&quot;x&quot;:1400569980000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570040000,&quot;selected&quot;:false,&quot;x&quot;:1400570040000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570100000,&quot;selected&quot;:false,&quot;x&quot;:1400570100000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400570160000,&quot;selected&quot;:false,&quot;x&quot;:1400570160000,&quot;y&quot;:1},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400570220000,&quot;selected&quot;:false,&quot;x&quot;:1400570220000,&quot;y&quot;:1},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400570280000,&quot;selected&quot;:false,&quot;x&quot;:1400570280000,&quot;y&quot;:1},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570340000,&quot;selected&quot;:false,&quot;x&quot;:1400570340000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400570400000,&quot;selected&quot;:false,&quot;x&quot;:1400570400000,&quot;y&quot;:1},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570460000,&quot;selected&quot;:false,&quot;x&quot;:1400570460000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400570520000,&quot;selected&quot;:false,&quot;x&quot;:1400570520000,&quot;y&quot;:1},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570580000,&quot;selected&quot;:false,&quot;x&quot;:1400570580000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570640000,&quot;selected&quot;:false,&quot;x&quot;:1400570640000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570700000,&quot;selected&quot;:false,&quot;x&quot;:1400570700000,&quot;y&quot;:0},{&quot;calValue&quot;:1,&quot;gmtCreate&quot;:1400570760000,&quot;selected&quot;:false,&quot;x&quot;:1400570760000,&quot;y&quot;:1},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570820000,&quot;selected&quot;:false,&quot;x&quot;:1400570820000,&quot;y&quot;:0}]"
                         data-nodata="当前Oracle数据库所在的主机没有CPU信息，请检查主机的性能采集状态。" style="height: 200px;"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="panel panel-default transparent">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="icon-random"></i>Load</h3>

                <div class="panel-toolbar no-border">Last 1 hour</div>
                <div class="panel-toolbar">
                    <a data-toggle="collapse" href="#J_databaseLoad">
                        <i class="icon-chevron-up"></i>
                    </a>
                </div>
            </div>
            <div id="J_databaseLoad" class="panel-collapse collapse in">
                <div class="panel-body">
                    <div class="database-load chartContainer" data-sid="287" data-statid="1" data-statidName="Load"
                         data-loadurl="<%=request.getContextPath() %>/web-qm/performance/quota/chart/load-quotas-point-data.htm"
                         data-chartdata="[{&quot;calValue&quot;:0.08,&quot;gmtCreate&quot;:1400567280000,&quot;selected&quot;:false,&quot;x&quot;:1400567280000,&quot;y&quot;:0.08},{&quot;calValue&quot;:0.06,&quot;gmtCreate&quot;:1400567340000,&quot;selected&quot;:false,&quot;x&quot;:1400567340000,&quot;y&quot;:0.06},{&quot;calValue&quot;:0.1,&quot;gmtCreate&quot;:1400567400000,&quot;selected&quot;:false,&quot;x&quot;:1400567400000,&quot;y&quot;:0.1},{&quot;calValue&quot;:0.04,&quot;gmtCreate&quot;:1400567460000,&quot;selected&quot;:false,&quot;x&quot;:1400567460000,&quot;y&quot;:0.04},{&quot;calValue&quot;:0.01,&quot;gmtCreate&quot;:1400567520000,&quot;selected&quot;:false,&quot;x&quot;:1400567520000,&quot;y&quot;:0.01},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400567580000,&quot;selected&quot;:false,&quot;x&quot;:1400567580000,&quot;y&quot;:0},{&quot;calValue&quot;:0.03,&quot;gmtCreate&quot;:1400567640000,&quot;selected&quot;:false,&quot;x&quot;:1400567640000,&quot;y&quot;:0.03},{&quot;calValue&quot;:0.07,&quot;gmtCreate&quot;:1400567700000,&quot;selected&quot;:false,&quot;x&quot;:1400567700000,&quot;y&quot;:0.07},{&quot;calValue&quot;:0.02,&quot;gmtCreate&quot;:1400567760000,&quot;selected&quot;:false,&quot;x&quot;:1400567760000,&quot;y&quot;:0.02},{&quot;calValue&quot;:0.06,&quot;gmtCreate&quot;:1400567820000,&quot;selected&quot;:false,&quot;x&quot;:1400567820000,&quot;y&quot;:0.06},{&quot;calValue&quot;:0.19,&quot;gmtCreate&quot;:1400567880000,&quot;selected&quot;:false,&quot;x&quot;:1400567880000,&quot;y&quot;:0.19},{&quot;calValue&quot;:0.07,&quot;gmtCreate&quot;:1400567940000,&quot;selected&quot;:false,&quot;x&quot;:1400567940000,&quot;y&quot;:0.07},{&quot;calValue&quot;:0.02,&quot;gmtCreate&quot;:1400568000000,&quot;selected&quot;:false,&quot;x&quot;:1400568000000,&quot;y&quot;:0.02},{&quot;calValue&quot;:0.07,&quot;gmtCreate&quot;:1400568060000,&quot;selected&quot;:false,&quot;x&quot;:1400568060000,&quot;y&quot;:0.07},{&quot;calValue&quot;:0.15,&quot;gmtCreate&quot;:1400568120000,&quot;selected&quot;:false,&quot;x&quot;:1400568120000,&quot;y&quot;:0.15},{&quot;calValue&quot;:0.05,&quot;gmtCreate&quot;:1400568180000,&quot;selected&quot;:false,&quot;x&quot;:1400568180000,&quot;y&quot;:0.05},{&quot;calValue&quot;:0.02,&quot;gmtCreate&quot;:1400568240000,&quot;selected&quot;:false,&quot;x&quot;:1400568240000,&quot;y&quot;:0.02},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400568300000,&quot;selected&quot;:false,&quot;x&quot;:1400568300000,&quot;y&quot;:0},{&quot;calValue&quot;:0.12,&quot;gmtCreate&quot;:1400568360000,&quot;selected&quot;:false,&quot;x&quot;:1400568360000,&quot;y&quot;:0.12},{&quot;calValue&quot;:0.04,&quot;gmtCreate&quot;:1400568420000,&quot;selected&quot;:false,&quot;x&quot;:1400568420000,&quot;y&quot;:0.04},{&quot;calValue&quot;:0.01,&quot;gmtCreate&quot;:1400568480000,&quot;selected&quot;:false,&quot;x&quot;:1400568480000,&quot;y&quot;:0.01},{&quot;calValue&quot;:0.04,&quot;gmtCreate&quot;:1400568540000,&quot;selected&quot;:false,&quot;x&quot;:1400568540000,&quot;y&quot;:0.04},{&quot;calValue&quot;:0.01,&quot;gmtCreate&quot;:1400568600000,&quot;selected&quot;:false,&quot;x&quot;:1400568600000,&quot;y&quot;:0.01},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400568660000,&quot;selected&quot;:false,&quot;x&quot;:1400568660000,&quot;y&quot;:0},{&quot;calValue&quot;:0.04,&quot;gmtCreate&quot;:1400568720000,&quot;selected&quot;:false,&quot;x&quot;:1400568720000,&quot;y&quot;:0.04},{&quot;calValue&quot;:0.01,&quot;gmtCreate&quot;:1400568780000,&quot;selected&quot;:false,&quot;x&quot;:1400568780000,&quot;y&quot;:0.01},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400568840000,&quot;selected&quot;:false,&quot;x&quot;:1400568840000,&quot;y&quot;:0},{&quot;calValue&quot;:0.07,&quot;gmtCreate&quot;:1400568900000,&quot;selected&quot;:false,&quot;x&quot;:1400568900000,&quot;y&quot;:0.07},{&quot;calValue&quot;:0.09,&quot;gmtCreate&quot;:1400568960000,&quot;selected&quot;:false,&quot;x&quot;:1400568960000,&quot;y&quot;:0.09},{&quot;calValue&quot;:0.1,&quot;gmtCreate&quot;:1400569020000,&quot;selected&quot;:false,&quot;x&quot;:1400569020000,&quot;y&quot;:0.1},{&quot;calValue&quot;:0.03,&quot;gmtCreate&quot;:1400569080000,&quot;selected&quot;:false,&quot;x&quot;:1400569080000,&quot;y&quot;:0.03},{&quot;calValue&quot;:0.07,&quot;gmtCreate&quot;:1400569140000,&quot;selected&quot;:false,&quot;x&quot;:1400569140000,&quot;y&quot;:0.07},{&quot;calValue&quot;:0.09,&quot;gmtCreate&quot;:1400569200000,&quot;selected&quot;:false,&quot;x&quot;:1400569200000,&quot;y&quot;:0.09},{&quot;calValue&quot;:0.03,&quot;gmtCreate&quot;:1400569260000,&quot;selected&quot;:false,&quot;x&quot;:1400569260000,&quot;y&quot;:0.03},{&quot;calValue&quot;:0.01,&quot;gmtCreate&quot;:1400569320000,&quot;selected&quot;:false,&quot;x&quot;:1400569320000,&quot;y&quot;:0.01},{&quot;calValue&quot;:0.07,&quot;gmtCreate&quot;:1400569380000,&quot;selected&quot;:false,&quot;x&quot;:1400569380000,&quot;y&quot;:0.07},{&quot;calValue&quot;:0.02,&quot;gmtCreate&quot;:1400569440000,&quot;selected&quot;:false,&quot;x&quot;:1400569440000,&quot;y&quot;:0.02},{&quot;calValue&quot;:0.01,&quot;gmtCreate&quot;:1400569500000,&quot;selected&quot;:false,&quot;x&quot;:1400569500000,&quot;y&quot;:0.01},{&quot;calValue&quot;:0.14,&quot;gmtCreate&quot;:1400569560000,&quot;selected&quot;:false,&quot;x&quot;:1400569560000,&quot;y&quot;:0.14},{&quot;calValue&quot;:0.05,&quot;gmtCreate&quot;:1400569620000,&quot;selected&quot;:false,&quot;x&quot;:1400569620000,&quot;y&quot;:0.05},{&quot;calValue&quot;:0.06,&quot;gmtCreate&quot;:1400569680000,&quot;selected&quot;:false,&quot;x&quot;:1400569680000,&quot;y&quot;:0.06},{&quot;calValue&quot;:0.02,&quot;gmtCreate&quot;:1400569740000,&quot;selected&quot;:false,&quot;x&quot;:1400569740000,&quot;y&quot;:0.02},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569800000,&quot;selected&quot;:false,&quot;x&quot;:1400569800000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569860000,&quot;selected&quot;:false,&quot;x&quot;:1400569860000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400569920000,&quot;selected&quot;:false,&quot;x&quot;:1400569920000,&quot;y&quot;:0},{&quot;calValue&quot;:0.04,&quot;gmtCreate&quot;:1400569980000,&quot;selected&quot;:false,&quot;x&quot;:1400569980000,&quot;y&quot;:0.04},{&quot;calValue&quot;:0.01,&quot;gmtCreate&quot;:1400570040000,&quot;selected&quot;:false,&quot;x&quot;:1400570040000,&quot;y&quot;:0.01},{&quot;calValue&quot;:0.07,&quot;gmtCreate&quot;:1400570100000,&quot;selected&quot;:false,&quot;x&quot;:1400570100000,&quot;y&quot;:0.07},{&quot;calValue&quot;:0.12,&quot;gmtCreate&quot;:1400570160000,&quot;selected&quot;:false,&quot;x&quot;:1400570160000,&quot;y&quot;:0.12},{&quot;calValue&quot;:0.05,&quot;gmtCreate&quot;:1400570220000,&quot;selected&quot;:false,&quot;x&quot;:1400570220000,&quot;y&quot;:0.05},{&quot;calValue&quot;:0.08,&quot;gmtCreate&quot;:1400570280000,&quot;selected&quot;:false,&quot;x&quot;:1400570280000,&quot;y&quot;:0.08},{&quot;calValue&quot;:0.03,&quot;gmtCreate&quot;:1400570340000,&quot;selected&quot;:false,&quot;x&quot;:1400570340000,&quot;y&quot;:0.03},{&quot;calValue&quot;:0.01,&quot;gmtCreate&quot;:1400570400000,&quot;selected&quot;:false,&quot;x&quot;:1400570400000,&quot;y&quot;:0.01},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570460000,&quot;selected&quot;:false,&quot;x&quot;:1400570460000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570520000,&quot;selected&quot;:false,&quot;x&quot;:1400570520000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570580000,&quot;selected&quot;:false,&quot;x&quot;:1400570580000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570640000,&quot;selected&quot;:false,&quot;x&quot;:1400570640000,&quot;y&quot;:0},{&quot;calValue&quot;:0,&quot;gmtCreate&quot;:1400570700000,&quot;selected&quot;:false,&quot;x&quot;:1400570700000,&quot;y&quot;:0},{&quot;calValue&quot;:0.08,&quot;gmtCreate&quot;:1400570760000,&quot;selected&quot;:false,&quot;x&quot;:1400570760000,&quot;y&quot;:0.08},{&quot;calValue&quot;:0.09,&quot;gmtCreate&quot;:1400570820000,&quot;selected&quot;:false,&quot;x&quot;:1400570820000,&quot;y&quot;:0.09}]"
                         data-nodata="当前Oracle数据库所在的主机没有Load信息，请检查主机的性能采集状态。" style="height: 200px;"></div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="panel panel-default transparent">
<div class="panel-heading">
    <h3 class="panel-title"><i class="icon-reorder"></i>数据库参数</h3>

    <div class="panel-toolbar">
        <a data-toggle="collapse" href="#J_databaseParams">
            <i class="icon-chevron-up"></i>
        </a>
    </div>
</div>
<div id="J_databaseParams" class="panel-collapse collapse in">
<div class="panel-body">
<table class="table table-bordered table-striped table-condensed databaseParams" data-dbType="oracle">
<thead>
<tr>
    <th class="name">参数名</th>
    <th>参数值</th>
    <th style="width: 65px;">默认值</th>
    <th style="width: 110px;">会话级别修改</th>
    <th style="width: 110px;">系统级别修改</th>
    <th style="width: 110px;">实例级别修改</th>
    <th style="width: 85px;">是否修改<i class="icon-question-sign c-blue" data-toggle="tooltip" title="实例启动到当前时间"></i></th>
    <th style="width: 75px;">废弃参数</th>
</tr>
</thead>
<tbody>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="number of active instances in the cluster database"></i>
        active_instance_count
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="number of AQ Time Managers to start"></i>
        aq_tm_processes
    </td>
    <td>0</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Maximum number of seconds of redos the standby could lose"></i>
        archive_lag_target
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Directory in which auditing files are to reside"></i>
        audit_file_dest
    </td>
    <td>?/rdbms/audit</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="enable sys auditing"></i>
        audit_sys_operations
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="enable system auditing"></i>
        audit_trail
    </td>
    <td>NONE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Core Size for Background Processes"></i>
        background_core_dump
    </td>
    <td>partial</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Detached process dump directory"></i>
        background_dump_dest
    </td>
    <td>/opt/admin/jes/bdump</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="BACKUP Tape I/O slaves"></i>
        backup_tape_io_slaves
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>DEFERRED</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="maximum memory allow for BITMAP MERGE"></i>
        bitmap_merge_area_size
    </td>
    <td>1048576</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="blank trimming semantics parameter"></i>
        blank_trimming
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Number of database blocks/latches in keep buffer pool"></i>
        buffer_pool_keep
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Number of database blocks/latches in recycle buffer pool"></i>
        buffer_pool_recycle
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max number of circuits"></i>
        circuits
    </td>
    <td>170</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="if TRUE startup in cluster database mode"></i>
        cluster_database
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="number of instances to use for sizing cluster db SGA structures"></i>
        cluster_database_instances
    </td>
    <td>1</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="interconnects for RAC use"></i>
        cluster_interconnects
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Bias this node has toward not preparing in a two-phase commit"></i>
        commit_point_strength
    </td>
    <td>1</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Database will be completely compatible with this software versio"></i>
        compatible
    </td>
    <td>9.2.0.0.0</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="control file names list"></i>
        control_files
    </td>
    <td>/opt/oracle9/oradata/jes/control01.ctl, /opt/oracle9/oradata/jes/control02.ctl,
        /opt/oracle9/oradata/jes/control03.ctl
    </td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="control file record keep time in days"></i>
        control_file_record_keep_time
    </td>
    <td>7</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Core dump directory"></i>
        core_dump_dest
    </td>
    <td>/opt/admin/jes/cdump</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="initial number of cpu&#39;s for this instance"></i>
        cpu_count
    </td>
    <td>4</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="size of create bitmap buffer for bitmap index"></i>
        create_bitmap_area_size
    </td>
    <td>8388608</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="cursor sharing mode"></i>
        cursor_sharing
    </td>
    <td>EXACT</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="use more memory in order to get faster execution"></i>
        cursor_space_for_time
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="enforce password for distributed login always be encrypted"></i>
        dblink_encrypt_login
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="DBWR I/O slaves"></i>
        dbwr_io_slaves
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Size of cache for 16K buffers"></i>
        db_16k_cache_size
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Size of cache for 2K buffers"></i>
        db_2k_cache_size
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Size of cache for 32K buffers"></i>
        db_32k_cache_size
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Size of cache for 4K buffers"></i>
        db_4k_cache_size
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Size of cache for 8K buffers"></i>
        db_8k_cache_size
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Number of database blocks cached in memory"></i>
        db_block_buffers
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="header checking and data and index block checking"></i>
        db_block_checking
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="store checksum in db blocks and check during reads"></i>
        db_block_checksum
    </td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Size of database block in bytes"></i>
        db_block_size
    </td>
    <td>8192</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Buffer cache sizing advisory"></i>
        db_cache_advice
    </td>
    <td>ON</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Size of DEFAULT buffer pool for standard block size buffers"></i>
        db_cache_size
    </td>
    <td>536870912</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="default database location"></i>
        db_create_file_dest
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="online log/controlfile destination #1"></i>
        db_create_online_log_dest_1
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="online log/controlfile destination #2"></i>
        db_create_online_log_dest_2
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="online log/controlfile destination #3"></i>
        db_create_online_log_dest_3
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="online log/controlfile destination #4"></i>
        db_create_online_log_dest_4
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="online log/controlfile  destination #5"></i>
        db_create_online_log_dest_5
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="directory part of global database name stored with CREATE DATABA"></i>
        db_domain
    </td>
    <td></td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max allowable # db files"></i>
        db_files
    </td>
    <td>200</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="db block to be read each IO"></i>
        db_file_multiblock_read_count
    </td>
    <td>16</td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="datafile name convert patterns and strings for standby/clone db"></i>
        db_file_name_convert
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Size of KEEP buffer pool for standard block size buffers"></i>
        db_keep_cache_size
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="database name specified in CREATE DATABASE"></i>
        db_name
    </td>
    <td>jes</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Size of RECYCLE buffer pool for standard block size buffers"></i>
        db_recycle_cache_size
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="number of background database writer  processes to start"></i>
        db_writer_processes
    </td>
    <td>1</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="data guard broker configuration file #1"></i>
        dg_broker_config_file1
    </td>
    <td>?/dbs/dr1@.dat</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="data guard broker configuration file #2"></i>
        dg_broker_config_file2
    </td>
    <td>?/dbs/dr2@.dat</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="start Data Guard broker framework (DMON process)"></i>
        dg_broker_start
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Use asynch I/O for random access devices"></i>
        disk_asynch_io
    </td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="specifications of dispatchers"></i>
        dispatchers
    </td>
    <td>(PROTOCOL=TCP) (SERVICE=jesXDB)</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="number of seconds a distributed transaction waits for a lock"></i>
        distributed_lock_timeout
    </td>
    <td>60</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="dml locks - one for each table modified in a transaction"></i>
        dml_locks
    </td>
    <td>748</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="start DG Broker monitor (DMON process)"></i>
        drs_start
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="resources for enqueues"></i>
        enqueue_resources
    </td>
    <td>968</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="debug event control - default null string"></i>
        event
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="FAL client"></i>
        fal_client
    </td>
    <td>jes_stb</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="FAL server list"></i>
        fal_server
    </td>
    <td>jes_pri</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Upper bound on recovery reads"></i>
        fast_start_io_target
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="MTTR target of forward crash recovery in seconds"></i>
        fast_start_mttr_target
    </td>
    <td>300</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="max number of parallel recovery slaves that may be used"></i>
        fast_start_parallel_rollback
    </td>
    <td>LOW</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="IO operations on filesystem files"></i>
        filesystemio_options
    </td>
    <td>none</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="enable file mapping"></i>
        file_mapping
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="fixed SYSDATE value"></i>
        fixed_date
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="mapping between file numbers and global cache locks (DFS)"></i>
        gc_files_to_locks
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Global Application Context Pool Size in Bytes"></i>
        global_context_pool_size
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="enforce that database links have same name as remote database"></i>
        global_names
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="size of in-memory hash work area"></i>
        hash_area_size
    </td>
    <td>1048576</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="enable/disable hash join"></i>
        hash_join_enabled
    </td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="SGA starting address (high order 32-bits on 64-bit platforms)"></i>
        hi_shared_memory_address
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="enable automatic server DD updates in HS agent self-registration"></i>
        hs_autoregister
    </td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="include file in init.ora"></i>
        ifile
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="list of instance group names"></i>
        instance_groups
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="instance name supported by the instance"></i>
        instance_name
    </td>
    <td>jes</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="instance number"></i>
        instance_number
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="max allowed size in bytes of a Java sessionspace"></i>
        java_max_sessionspace_size
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="size in bytes of the Java pool"></i>
        java_pool_size
    </td>
    <td>0</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="warning limit on size in bytes of a Java sessionspace"></i>
        java_soft_sessionspace_limit
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="number of job queue slave processes"></i>
        job_queue_processes
    </td>
    <td>10</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="size in bytes of the large allocation pool"></i>
        large_pool_size
    </td>
    <td>16777216</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="maximum number of non-system user sessions allowed"></i>
        license_max_sessions
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="maximum number of named users that can be created in the databas"></i>
        license_max_users
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="warning level for number of non-system user sessions"></i>
        license_sessions_warning
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="local listener"></i>
        local_listener
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="lock name space used for generating lock names for standby/clone"></i>
        lock_name_space
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Lock entire SGA in physical memory"></i>
        lock_sga
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="maximum number of threads to mine"></i>
        logmnr_max_persistent_sessions
    </td>
    <td>1</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination text string"></i>
        log_archive_dest
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination #1 text string"></i>
        log_archive_dest_1
    </td>
    <td>LOCATION=/opt/archive/jes/</td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination #10 text string"></i>
        log_archive_dest_10
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination #2 text string"></i>
        log_archive_dest_2
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination #3 text string"></i>
        log_archive_dest_3
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination #4 text string"></i>
        log_archive_dest_4
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination #5 text string"></i>
        log_archive_dest_5
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination #6 text string"></i>
        log_archive_dest_6
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination #7 text string"></i>
        log_archive_dest_7
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination #8 text string"></i>
        log_archive_dest_8
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination #9 text string"></i>
        log_archive_dest_9
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="archival destination #1 state text string"></i>
        log_archive_dest_state_1
    </td>
    <td>enable</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="archival destination #10 state text string"></i>
        log_archive_dest_state_10
    </td>
    <td>enable</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="archival destination #2 state text string"></i>
        log_archive_dest_state_2
    </td>
    <td>enable</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="archival destination #3 state text string"></i>
        log_archive_dest_state_3
    </td>
    <td>enable</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="archival destination #4 state text string"></i>
        log_archive_dest_state_4
    </td>
    <td>enable</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="archival destination #5 state text string"></i>
        log_archive_dest_state_5
    </td>
    <td>enable</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="archival destination #6 state text string"></i>
        log_archive_dest_state_6
    </td>
    <td>enable</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="archival destination #7 state text string"></i>
        log_archive_dest_state_7
    </td>
    <td>enable</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="archival destination #8 state text string"></i>
        log_archive_dest_state_8
    </td>
    <td>enable</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="archival destination #9 state text string"></i>
        log_archive_dest_state_9
    </td>
    <td>enable</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="duplex archival destination text string"></i>
        log_archive_duplex_dest
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="archival destination format"></i>
        log_archive_format
    </td>
    <td>jes%t_%s.arc</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="maximum number of active ARCH processes"></i>
        log_archive_max_processes
    </td>
    <td>2</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="minimum number of archive destinations that must succeed"></i>
        log_archive_min_succeed_dest
    </td>
    <td>1</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="start archival process on SGA initialization"></i>
        log_archive_start
    </td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Establish archivelog operation tracing level"></i>
        log_archive_trace
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="redo circular buffer size"></i>
        log_buffer
    </td>
    <td>524288</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="log checkpoint begin/end to alert file"></i>
        log_checkpoints_to_alert
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="# redo blocks checkpoint threshold"></i>
        log_checkpoint_interval
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Maximum time interval between checkpoints in seconds"></i>
        log_checkpoint_timeout
    </td>
    <td>1800</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="logfile name convert patterns and strings for standby/clone db"></i>
        log_file_name_convert
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Number of log buffer strands"></i>
        log_parallelism
    </td>
    <td>1</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Max age of new snapshot in .01 seconds"></i>
        max_commit_propagation_delay
    </td>
    <td>700</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max number of dispatchers"></i>
        max_dispatchers
    </td>
    <td>5</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Maximum size (blocks) of dump file"></i>
        max_dump_file_size
    </td>
    <td>UNLIMITED</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="max number of roles a user can have enabled"></i>
        max_enabled_roles
    </td>
    <td>30</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="max. number of rollback segments in SGA cache"></i>
        max_rollback_segments
    </td>
    <td>37</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max number of shared servers"></i>
        max_shared_servers
    </td>
    <td>20</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max number of circuits"></i>
        mts_circuits
    </td>
    <td>170</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="specifications of dispatchers"></i>
        mts_dispatchers
    </td>
    <td>(PROTOCOL=TCP) (SERVICE=jesXDB)</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="address(es) of network listener"></i>
        mts_listener_address
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max number of dispatchers"></i>
        mts_max_dispatchers
    </td>
    <td>5</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max number of shared servers"></i>
        mts_max_servers
    </td>
    <td>20</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Are multiple listeners enabled?"></i>
        mts_multiple_listeners
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="number of shared servers to start up"></i>
        mts_servers
    </td>
    <td>1</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="service supported by dispatchers"></i>
        mts_service
    </td>
    <td>jes</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max number of shared server sessions"></i>
        mts_sessions
    </td>
    <td>165</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="NLS calendar system name"></i>
        nls_calendar
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="NLS comparison"></i>
        nls_comp
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="NLS local currency symbol"></i>
        nls_currency
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="NLS Oracle date format"></i>
        nls_date_format
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="NLS date language name"></i>
        nls_date_language
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Dual currency symbol"></i>
        nls_dual_currency
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="NLS ISO currency territory name"></i>
        nls_iso_currency
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="NLS language name"></i>
        nls_language
    </td>
    <td>AMERICAN</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="create columns using byte or char semantics by default"></i>
        nls_length_semantics
    </td>
    <td>BYTE</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="NLS raise an exception instead of allowing implicit conversion"></i>
        nls_nchar_conv_excp
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="NLS numeric characters"></i>
        nls_numeric_characters
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="NLS linguistic definition name"></i>
        nls_sort
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="NLS territory name"></i>
        nls_territory
    </td>
    <td>AMERICA</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="time stamp format"></i>
        nls_timestamp_format
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="timestampe with timezone format"></i>
        nls_timestamp_tz_format
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="time format"></i>
        nls_time_format
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="time with timezone format"></i>
        nls_time_tz_format
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Version 7 Dictionary Accessibility Support"></i>
        O7_DICTIONARY_ACCESSIBILITY
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="percentage of maximum size over optimal of the user session&#39;s ob"></i>
        object_cache_max_size_percent
    </td>
    <td>10</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>DEFERRED</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="optimal size of the user session&#39;s object cache in bytes"></i>
        object_cache_optimal_size
    </td>
    <td>102400</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>DEFERRED</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="size of the olap page pool in bytes"></i>
        olap_page_pool_size
    </td>
    <td>33554432</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>DEFERRED</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max # cursors per session"></i>
        open_cursors
    </td>
    <td>300</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max # open links per session"></i>
        open_links
    </td>
    <td>4</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max # open links per instance"></i>
        open_links_per_instance
    </td>
    <td>4</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="optimizer dynamic sampling"></i>
        optimizer_dynamic_sampling
    </td>
    <td>1</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="optimizer plan compatibility parameter"></i>
        optimizer_features_enable
    </td>
    <td>9.2.0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="optimizer percent index caching"></i>
        optimizer_index_caching
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="optimizer index cost adjustment"></i>
        optimizer_index_cost_adj
    </td>
    <td>100</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="optimizer maximum join permutations per query block"></i>
        optimizer_max_permutations
    </td>
    <td>2000</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="optimizer mode"></i>
        optimizer_mode
    </td>
    <td>CHOOSE</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Oracle TRACE default collection name"></i>
        oracle_trace_collection_name
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Oracle TRACE collection path"></i>
        oracle_trace_collection_path
    </td>
    <td>?/otrace/admin/cdf</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Oracle TRACE collection file max. size"></i>
        oracle_trace_collection_size
    </td>
    <td>5242880</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Oracle Trace enabled/disabled"></i>
        oracle_trace_enable
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Oracle TRACE default facility name"></i>
        oracle_trace_facility_name
    </td>
    <td>oracled</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Oracle TRACE facility path"></i>
        oracle_trace_facility_path
    </td>
    <td>?/otrace/admin/fdf</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="prefix for auto-logon accounts"></i>
        os_authent_prefix
    </td>
    <td>ops$</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="retrieve roles from the operating system"></i>
        os_roles
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="enable adaptive setting of degree for multiple user streams"></i>
        parallel_adaptive_multi_user
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="enable intelligent defaults for parallel execution parameters"></i>
        parallel_automatic_tuning
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="message buffer size for parallel execution"></i>
        parallel_execution_message_size
    </td>
    <td>2152</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="instance group to use for all parallel operations"></i>
        parallel_instance_group
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="maximum parallel query servers per instance"></i>
        parallel_max_servers
    </td>
    <td>5</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="minimum percent of threads required for parallel query"></i>
        parallel_min_percent
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="minimum parallel query servers per instance"></i>
        parallel_min_servers
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="if TRUE startup in parallel server mode"></i>
        parallel_server
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="number of instances to use for sizing OPS SGA structures"></i>
        parallel_server_instances
    </td>
    <td>1</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="number of parallel execution threads per CPU"></i>
        parallel_threads_per_cpu
    </td>
    <td>2</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="enable/disable partitioned views"></i>
        partition_view_enabled
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Target size for the aggregate PGA memory consumed by the instanc"></i>
        pga_aggregate_target
    </td>
    <td>209715200</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="PL/SQL compiler flags"></i>
        plsql_compiler_flags
    </td>
    <td>INTERPRETED</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="plsql native C compiler"></i>
        plsql_native_c_compiler
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="plsql native library dir"></i>
        plsql_native_library_dir
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="plsql native library number of subdirectories"></i>
        plsql_native_library_subdir_count
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="plsql native linker"></i>
        plsql_native_linker
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="plsql native compilation make file"></i>
        plsql_native_make_file_name
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="plsql native compilation make utility"></i>
        plsql_native_make_utility
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="PL/SQL version 2.x compatibility flag"></i>
        plsql_v2_compatibility
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="pre-page sga for process"></i>
        pre_page_sga
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="user processes"></i>
        processes
    </td>
    <td>150</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="allow rewrite of queries using materialized views if enabled"></i>
        query_rewrite_enabled
    </td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="perform rewrite using materialized views with desired integrity"></i>
        query_rewrite_integrity
    </td>
    <td>enforced</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="RDBMS&#39;s Distinguished Name"></i>
        rdbms_server_dn
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="if TRUE delay opening of read only files until first access"></i>
        read_only_open_delayed
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="number of server processes to use for parallel recovery"></i>
        recovery_parallelism
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="remote archival enable setting"></i>
        remote_archive_enable
    </td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="remote-procedure-call dependencies mode parameter"></i>
        remote_dependencies_mode
    </td>
    <td>TIMESTAMP</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="remote listener"></i>
        remote_listener
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="password file usage parameter"></i>
        remote_login_passwordfile
    </td>
    <td>EXCLUSIVE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="allow non-secure remote clients to use auto-logon accounts"></i>
        remote_os_authent
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="allow non-secure remote clients to use os roles"></i>
        remote_os_roles
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="tracking dependency for Replication parallel propagation"></i>
        replication_dependency_tracking
    </td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="master switch for resource limit"></i>
        resource_limit
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="resource mgr top plan"></i>
        resource_manager_plan
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="undo segment list"></i>
        rollback_segments
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="row-locking"></i>
        row_locking
    </td>
    <td>always</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="serializable"></i>
        serializable
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="reuse the frame segments"></i>
        serial_reuse
    </td>
    <td>DISABLE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="service names supported by the instance"></i>
        service_names
    </td>
    <td>jes</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="user and system sessions"></i>
        sessions
    </td>
    <td>170</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="number of cursors to save in the session cursor cache"></i>
        session_cached_cursors
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="maximum number of open files allowed per session"></i>
        session_max_open_files
    </td>
    <td>10</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max total SGA size"></i>
        sga_max_size
    </td>
    <td>806846576</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Core Size for Shadow Processes"></i>
        shadow_core_dump
    </td>
    <td>partial</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="SGA starting address (low order 32-bits on 64-bit platforms)"></i>
        shared_memory_address
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="size in bytes of reserved area of shared pool"></i>
        shared_pool_reserved_size
    </td>
    <td>10905190</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="size in bytes of shared pool"></i>
        shared_pool_size
    </td>
    <td>218103808</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="number of shared servers to start up"></i>
        shared_servers
    </td>
    <td>1</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="max number of shared server sessions"></i>
        shared_server_sessions
    </td>
    <td>165</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="size of in-memory sort work area retained between fetch calls"></i>
        sort_area_retained_size
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>DEFERRED</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="size of in-memory sort work area"></i>
        sort_area_size
    </td>
    <td>524288</td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>DEFERRED</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="server parameter file"></i>
        spfile
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="require select privilege for searched update/delete"></i>
        sql92_security
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="enable SQL trace"></i>
        sql_trace
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="sql language version parameter for compatibility issues"></i>
        sql_version
    </td>
    <td>NATIVE</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="standby database archivelog destination text string"></i>
        standby_archive_dest
    </td>
    <td>/opt/oracle/archive/jes/</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="if auto then files are created/dropped automatically on standby"></i>
        standby_file_management
    </td>
    <td>AUTO</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="enable the use of star transformation"></i>
        star_transformation_enabled
    </td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="statistics level"></i>
        statistics_level
    </td>
    <td>TYPICAL</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Use asynch I/O requests for tape devices"></i>
        tape_asynch_io
    </td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Redo thread to mount"></i>
        thread
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="internal os statistic gathering interval in seconds"></i>
        timed_os_statistics
    </td>
    <td>0</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="maintain internal timing statistics"></i>
        timed_statistics
    </td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="trace file custom identifier"></i>
        tracefile_identifier
    </td>
    <td></td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="enable KST tracing"></i>
        trace_enabled
    </td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="max. number of concurrent active transactions"></i>
        transactions
    </td>
    <td>187</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="number of active transactions per rollback segment"></i>
        transactions_per_rollback_segment
    </td>
    <td>5</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="transaction auditing records generated in the redo log"></i>
        transaction_auditing
    </td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>DEFERRED</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="instance runs in SMU mode if TRUE, else in RBU mode"></i>
        undo_management
    </td>
    <td>AUTO</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="undo retention in seconds"></i>
        undo_retention
    </td>
    <td>10800</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="Suppress RBU errors in SMU mode"></i>
        undo_suppress_errors
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="use/switch undo tablespace"></i>
        undo_tablespace
    </td>
    <td>UNDOTBS1</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="User process dump directory"></i>
        user_dump_dest
    </td>
    <td>/opt/admin/jes/udump</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="Enable indirect data buffers (very large SGA on 32-bit platforms"></i>
        use_indirect_data_buffers
    </td>
    <td>FALSE</td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="utl_file accessible directories list"></i>
        utl_file_dir
    </td>
    <td></td>
    <td>TRUE</td>
    <td>FALSE</td>
    <td>FALSE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
<tr>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="policy used to size SQL working areas (MANUAL/AUTO)"></i>
        workarea_size_policy
    </td>
    <td>AUTO</td>
    <td>TRUE</td>
    <td>TRUE</td>
    <td>IMMEDIATE</td>
    <td></td>
    <td>FALSE</td>
    <td></td>
</tr>
</tbody>
</table>
</div>
</div>
</div>

</div>
<!--/main content -->
</div>
</div>
<!--/container -->
<jsp:include page="../foot.jsp"/>
<script src="http://woqutech.3322.org:8080/assets/js/qm.database-instance.js?v=4.1.0.3.20140118160000"></script>
</body>
</html>

