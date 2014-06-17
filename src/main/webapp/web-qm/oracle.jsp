<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="head.jsp"/>
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
                <li class='navnew-item  active ignore '>
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/oracle.jsp" title="总览">总览</a>
                </li>
                <li class='navnew-item open '>
                    <i class="icon-angle-up toggle" title="收起"></i>
                    <a class="item-link" href="" title="JES">JES</a>
                    <ul class="subnav">
                        <li  class=""  data-active="">
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

</div><!--/sub menu -->

<div class="col-xs-10 container-main_content">




<div class="row tabs-wrap">
    <div class="col-xs-10">
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="<%=request.getContextPath() %>/web-qm/mysql.jsp">Oracle数据库总览</a>
            </li>
        </ul>
    </div>


</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="icon-bell"></i>实时报警</h3>
    </div>
    <div class="panel-body">

        <table id="warnType-oracle" class="table table-bordered table-striped">
            <thead>
            <tr>
                <th>名称</th>
                <th>DBConnect/Locks</th>
                <th>DiskIO/TableSpace</th>
                <th>Memory/Process</th>
                <th>Trans/Undo</th>
                <th>Standby</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <span class="badge identifying-master">主</span>
                    <a href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=288" data-toggle="tooltip" title="IP:192.168.1.222">
                        JES : jes
                    </a>
                </td>
                <td>
                    <span class="label label-state b-success">OK</span>
                </td>
                <td>
                    <span class="label label-state b-success">OK</span>
                </td>
                <td>
                    <span class="label label-state b-success">OK</span>
                </td>
                <td>
                    <span class="label label-state b-success">OK</span>
                </td>
                <td><span class="label label-state b-default" data-toggle="tooltip" title="主库没有此配置项">N/A</span></td>
            </tr>
            <tr>
                <td>
                    <span class="badge identifying-master">主</span>
                    <a href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=302" data-toggle="tooltip" title="IP:192.168.1.235">
                        orcl : orcl
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=302&stype=statistics&category=DBConnect/Locks">
                        <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:3">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=302&stype=statistics&category=DiskIO/TableSpace">
                        <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:3">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=302&stype=statistics&category=Memory/Process">
                        <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=302&stype=statistics&category=Trans/Undo">
                        <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:3">CRITICAL</span>
                    </a>
                </td>
                <td><span class="label label-state b-default" data-toggle="tooltip" title="主库没有此配置项">N/A</span></td>
            </tr>
            <tr>
                <td>
                    <span class="badge identifying-master">主</span>
                    <a href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=270" data-toggle="tooltip" title="IP:192.168.1.191">
                        rac11g : rac11g1
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=270&stype=statistics&category=DBConnect/Locks">
                        <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=270&stype=statistics&category=DiskIO/TableSpace">
                        <span class="label label-state b-warning" data-toggle="tooltip" title="WARN:1">WARN</span>
                    </a>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=270&stype=statistics&category=DiskIO/TableSpace">
                        <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:2">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=270&stype=statistics&category=Memory/Process">
                        <span class="label label-state b-warning" data-toggle="tooltip" title="WARN:1">WARN</span>
                    </a>
                </td>
                <td>
                    <span class="label label-state b-success">OK</span>
                </td>
                <td><span class="label label-state b-default" data-toggle="tooltip" title="主库没有此配置项">N/A</span></td>
            </tr>
            <tr>
                <td>
                    <span class="badge identifying-master">主</span>
                    <a href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=271" data-toggle="tooltip" title="IP:192.168.1.192">
                        rac11g : rac11g2
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=271&stype=statistics&category=DBConnect/Locks">
                        <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=271&stype=statistics&category=DiskIO/TableSpace">
                        <span class="label label-state b-warning" data-toggle="tooltip" title="WARN:1">WARN</span>
                    </a>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=271&stype=statistics&category=DiskIO/TableSpace">
                        <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:2">CRITICAL</span>
                    </a>
                </td>
                <td>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=271&stype=statistics&category=Memory/Process">
                        <span class="label label-state b-warning" data-toggle="tooltip" title="WARN:1">WARN</span>
                    </a>
                </td>
                <td>
                    <span class="label label-state b-success">OK</span>
                </td>
                <td><span class="label label-state b-default" data-toggle="tooltip" title="主库没有此配置项">N/A</span></td>
            </tr>

            <tr>
                <td>
                    <span class="badge identifying-slave">备</span>
                    <a href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=303" data-toggle="tooltip" title="IP:192.168.1.236">
                        dg : orcl
                    </a>
                </td>
                <td>
                    <span class="label label-state b-default" data-toggle="tooltip" title="备库没有此配置项">N/A</span>
                </td>
                <td>
                    <span class="label label-state b-default" data-toggle="tooltip" title="备库没有此配置项">N/A</span>
                </td>
                <td>
                    <span class="label label-state b-default" data-toggle="tooltip" title="备库没有此配置项">N/A</span>
                </td>
                <td>
                    <span class="label label-state b-default" data-toggle="tooltip" title="备库没有此配置项">N/A</span>
                </td>
                <td>
                    <a class="unlineLink" href="<%=request.getContextPath() %>/web-qm/warn/detail.htm?sid=303&stype=statistics&category=Standby/Slave">
                        <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
                    </a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="row">
    <div class="col-xs-6">
        <div class="panel panel-default db-space">
            <div class="panel-heading nav-tabs-wrap">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#J_physicalSpace" data-toggle="tab">物理空间</a>
                    </li>
                    <li>
                        <a href="#J_logicalSpace" data-toggle="tab">逻辑空间</a>
                    </li>
                </ul>
            </div>
            <div class="panel-body tab-content">
                <div id="J_physicalSpace" class="tab-pane active" data-chartData="[{&quot;name&quot;:&quot;JES&quot;,&quot;y&quot;:7232}]" data-nodata="当前Oracle物理空间信息没有采集到，请确定数据库性能采集已启动。" style="height: 280px;"></div>
                <div id="J_logicalSpace" class="tab-pane" data-chartData="[{&quot;name&quot;:&quot;JES&quot;,&quot;y&quot;:1008}]" data-nodata="当前Oracle逻辑空间信息没有采集到，请确定数据库性能采集已启动。" style="height: 280px;"></div>
            </div>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="panel panel-default db-version">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="icon-adjust"></i>数据库版本分布</h3>
            </div>
            <div class="panel-body">
                <div id="J_dbVersion" data-chartData="[{&quot;cpuNum&quot;:0,&quot;dayIncrease&quot;:0,&quot;dayIncreaseGb&quot;:&quot;0&quot;,&quot;dayIncreasePercentJudge&quot;:-2,&quot;dbType&quot;:&quot;Oracle&quot;,&quot;dbVersion&quot;:&quot;10.2.0.1.0&quot;,&quot;dbVersionCount&quot;:2,&quot;fmtPrefCount&quot;:&quot;0.00 &lt;span class=&#39;c-green&#39;&gt;B&lt;/span&gt;&quot;,&quot;formatPrefCount&quot;:&quot;0.00&quot;,&quot;freeGb&quot;:&quot;&quot;,&quot;hostCount&quot;:0,&quot;lastHoursDayValue&quot;:&quot;0&quot;,&quot;lastHoursValue&quot;:&quot;&quot;,&quot;logicalGb&quot;:&quot;&quot;,&quot;monthIncrease&quot;:0,&quot;monthIncreaseGb&quot;:&quot;0&quot;,&quot;monthIncreasePercentJudge&quot;:-2,&quot;mySQLmbpsFmt&quot;:&quot;0.00&quot;,&quot;mysqlInstanceCount&quot;:0,&quot;onlineOverHalfYear&quot;:false,&quot;oracleInstanceCount&quot;:0,&quot;osVersionCount&quot;:0,&quot;physicalGbFloat&quot;:&quot;0&quot;,&quot;physicalMem&quot;:0,&quot;physicalMemGb&quot;:&quot;0&quot;,&quot;physicalMemGb2&quot;:0,&quot;physicalMemValue&quot;:0,&quot;totalInstanceCount&quot;:0,&quot;weekIncrease&quot;:0,&quot;weekIncreaseGb&quot;:&quot;0&quot;,&quot;weekIncreasePercentJudge&quot;:-2},{&quot;cpuNum&quot;:0,&quot;dayIncrease&quot;:0,&quot;dayIncreaseGb&quot;:&quot;0&quot;,&quot;dayIncreasePercentJudge&quot;:-2,&quot;dbType&quot;:&quot;Oracle&quot;,&quot;dbVersion&quot;:&quot;11.2.0.3.0 RAC&quot;,&quot;dbVersionCount&quot;:4,&quot;fmtPrefCount&quot;:&quot;0.00 &lt;span class=&#39;c-green&#39;&gt;B&lt;/span&gt;&quot;,&quot;formatPrefCount&quot;:&quot;0.00&quot;,&quot;freeGb&quot;:&quot;&quot;,&quot;hostCount&quot;:0,&quot;lastHoursDayValue&quot;:&quot;0&quot;,&quot;lastHoursValue&quot;:&quot;&quot;,&quot;logicalGb&quot;:&quot;&quot;,&quot;monthIncrease&quot;:0,&quot;monthIncreaseGb&quot;:&quot;0&quot;,&quot;monthIncreasePercentJudge&quot;:-2,&quot;mySQLmbpsFmt&quot;:&quot;0.00&quot;,&quot;mysqlInstanceCount&quot;:0,&quot;onlineOverHalfYear&quot;:false,&quot;oracleInstanceCount&quot;:0,&quot;osVersionCount&quot;:0,&quot;physicalGbFloat&quot;:&quot;0&quot;,&quot;physicalMem&quot;:0,&quot;physicalMemGb&quot;:&quot;0&quot;,&quot;physicalMemGb2&quot;:0,&quot;physicalMemValue&quot;:0,&quot;totalInstanceCount&quot;:0,&quot;weekIncrease&quot;:0,&quot;weekIncreaseGb&quot;:&quot;0&quot;,&quot;weekIncreasePercentJudge&quot;:-2},{&quot;cpuNum&quot;:0,&quot;dayIncrease&quot;:0,&quot;dayIncreaseGb&quot;:&quot;0&quot;,&quot;dayIncreasePercentJudge&quot;:-2,&quot;dbType&quot;:&quot;Oracle&quot;,&quot;dbVersion&quot;:&quot;9.2.0.8.0&quot;,&quot;dbVersionCount&quot;:1,&quot;fmtPrefCount&quot;:&quot;0.00 &lt;span class=&#39;c-green&#39;&gt;B&lt;/span&gt;&quot;,&quot;formatPrefCount&quot;:&quot;0.00&quot;,&quot;freeGb&quot;:&quot;&quot;,&quot;hostCount&quot;:0,&quot;lastHoursDayValue&quot;:&quot;0&quot;,&quot;lastHoursValue&quot;:&quot;&quot;,&quot;logicalGb&quot;:&quot;&quot;,&quot;monthIncrease&quot;:0,&quot;monthIncreaseGb&quot;:&quot;0&quot;,&quot;monthIncreasePercentJudge&quot;:-2,&quot;mySQLmbpsFmt&quot;:&quot;0.00&quot;,&quot;mysqlInstanceCount&quot;:0,&quot;onlineOverHalfYear&quot;:false,&quot;oracleInstanceCount&quot;:0,&quot;osVersionCount&quot;:0,&quot;physicalGbFloat&quot;:&quot;0&quot;,&quot;physicalMem&quot;:0,&quot;physicalMemGb&quot;:&quot;0&quot;,&quot;physicalMemGb2&quot;:0,&quot;physicalMemValue&quot;:0,&quot;totalInstanceCount&quot;:0,&quot;weekIncrease&quot;:0,&quot;weekIncreaseGb&quot;:&quot;0&quot;,&quot;weekIncreasePercentJudge&quot;:-2}]" data-nodata="当前Oracle数据库版本信息没有采集到，请检查Oracle数据库的启动状态。" style="height: 280px;"></div>
            </div>
        </div>
    </div>
</div>

</div><!--/main content -->
</div>
</div><!--/container -->
<jsp:include page="foot.jsp"/>
<script src="http://woqutech.3322.org:8080/assets/js/qm.database.js?v=4.1.0.3.20140118160000"></script>
</body>
</html>
