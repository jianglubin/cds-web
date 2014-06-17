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
                    <ul class="navnew">
                        <li class="navnew-item  active ignore ">
                            <a class="item-link" href="<%=request.getContextPath() %>/web-qm/mysql.htm" title="总览">总览</a>
                        </li>
                        <li class="navnew-item ">
                            <a class="item-link dbItemLink" href="<%=request.getContextPath() %>/web-qm/database/instance_mysql.jsp" title="WYCDS_MySQL"
                               data-sid="285" data-dbtype="MySQL" data-dbrole="primary">
                                <span class="badge identifying-master">主</span>
                                WYCDS_MySQL
                            </a>
                        </li>
                        <li class="navnew-item ">
                            <a class="item-link dbItemLink" href="" title="mysql_240_5.1" data-sid="267"
                               data-dbtype="MySQL" data-dbrole="primary">
                                <span class="badge identifying-master">主</span>
                                mysql_240_5.1
                            </a>
                        </li>
                        <li class="navnew-item ">
                            <a class="item-link dbItemLink" href="" title="mysql_240_5.5" data-sid="268"
                               data-dbtype="MySQL" data-dbrole="primary">
                                <span class="badge identifying-master">主</span>
                                mysql_240_5.5
                            </a>
                        </li>
                        <li class="navnew-item ">
                            <a class="item-link dbItemLink" href="" title="mysql_240_5.6" data-sid="269"
                               data-dbtype="MySQL" data-dbrole="primary">
                                <span class="badge identifying-master">主</span>
                                mysql_240_5.6
                            </a>
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
                            <a href="<%=request.getContextPath() %>/web-qm/mysql.jsp">MySQL数据库总览</a>
                        </li>
                    </ul>
                </div>

            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="icon-bell"></i>实时报警</h3>
                </div>
                <div class="panel-body">

                    <table id="warnType-mysql" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>DBConnect/Locks</th>
                            <th>DiskIO/TableSpace</th>
                            <th>Memory/Process</th>
                            <th>Slave</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <span class="badge identifying-master">主</span>
                                WYCDS_MySQL
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
                        </tr>
                        <tr>
                            <td>
                                <span class="badge identifying-master">主</span>
                                mysql_240_5.1
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
                                <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="badge identifying-master">主</span>
                                mysql_240_5.5

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
                                <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="badge identifying-master">主</span>
                                mysql_240_5.6

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
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-6">
                    <div class="panel panel-default db-space">
                        <div class="panel-heading nav-tabs-wrap">
                            <h3 class="panel-title"><i class="icon-beaker"></i>空间使用比例</h3>
                        </div>
                        <div class="panel-body tab-content">
                            <div id="J_databaseSpace"
                                 data-chartdata="[{&quot;name&quot;:&quot;mysql_240_5.1&quot;,&quot;y&quot;:1469},{&quot;name&quot;:&quot;mysql_240_5.5&quot;,&quot;y&quot;:1501},{&quot;name&quot;:&quot;mysql_240_5.6&quot;,&quot;y&quot;:2057},{&quot;name&quot;:&quot;QMonitor_MySQL&quot;,&quot;y&quot;:18451}]"
                                 data-nodata="当前MySQL空间信息没有采集到，请确定数据库性能采集已启动。" style="height: 280px;"></div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="panel panel-default db-version">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="icon-adjust"></i>数据库版本分布</h3>
                        </div>
                        <div class="panel-body">
                            <div id="J_dbVersion"
                                 data-chartData="[{&quot;cpuNum&quot;:0,&quot;dayIncrease&quot;:0,&quot;dayIncreaseGb&quot;:&quot;0&quot;,&quot;dayIncreasePercentJudge&quot;:-2,&quot;dbType&quot;:&quot;MySQL&quot;,&quot;dbVersion&quot;:&quot;5.1.67-log&quot;,&quot;dbVersionCount&quot;:1,&quot;fmtPrefCount&quot;:&quot;0.00 &lt;span class=&#39;c-green&#39;&gt;B&lt;/span&gt;&quot;,&quot;formatPrefCount&quot;:&quot;0.00&quot;,&quot;freeGb&quot;:&quot;&quot;,&quot;hostCount&quot;:0,&quot;lastHoursDayValue&quot;:&quot;0&quot;,&quot;lastHoursValue&quot;:&quot;&quot;,&quot;logicalGb&quot;:&quot;&quot;,&quot;monthIncrease&quot;:0,&quot;monthIncreaseGb&quot;:&quot;0&quot;,&quot;monthIncreasePercentJudge&quot;:-2,&quot;mySQLmbpsFmt&quot;:&quot;0.00&quot;,&quot;mysqlInstanceCount&quot;:0,&quot;onlineOverHalfYear&quot;:false,&quot;oracleInstanceCount&quot;:0,&quot;osVersionCount&quot;:0,&quot;physicalGbFloat&quot;:&quot;0&quot;,&quot;physicalMem&quot;:0,&quot;physicalMemGb&quot;:&quot;0&quot;,&quot;physicalMemGb2&quot;:0,&quot;physicalMemValue&quot;:0,&quot;totalInstanceCount&quot;:0,&quot;weekIncrease&quot;:0,&quot;weekIncreaseGb&quot;:&quot;0&quot;,&quot;weekIncreasePercentJudge&quot;:-2},{&quot;cpuNum&quot;:0,&quot;dayIncrease&quot;:0,&quot;dayIncreaseGb&quot;:&quot;0&quot;,&quot;dayIncreasePercentJudge&quot;:-2,&quot;dbType&quot;:&quot;MySQL&quot;,&quot;dbVersion&quot;:&quot;5.5.25a-log&quot;,&quot;dbVersionCount&quot;:1,&quot;fmtPrefCount&quot;:&quot;0.00 &lt;span class=&#39;c-green&#39;&gt;B&lt;/span&gt;&quot;,&quot;formatPrefCount&quot;:&quot;0.00&quot;,&quot;freeGb&quot;:&quot;&quot;,&quot;hostCount&quot;:0,&quot;lastHoursDayValue&quot;:&quot;0&quot;,&quot;lastHoursValue&quot;:&quot;&quot;,&quot;logicalGb&quot;:&quot;&quot;,&quot;monthIncrease&quot;:0,&quot;monthIncreaseGb&quot;:&quot;0&quot;,&quot;monthIncreasePercentJudge&quot;:-2,&quot;mySQLmbpsFmt&quot;:&quot;0.00&quot;,&quot;mysqlInstanceCount&quot;:0,&quot;onlineOverHalfYear&quot;:false,&quot;oracleInstanceCount&quot;:0,&quot;osVersionCount&quot;:0,&quot;physicalGbFloat&quot;:&quot;0&quot;,&quot;physicalMem&quot;:0,&quot;physicalMemGb&quot;:&quot;0&quot;,&quot;physicalMemGb2&quot;:0,&quot;physicalMemValue&quot;:0,&quot;totalInstanceCount&quot;:0,&quot;weekIncrease&quot;:0,&quot;weekIncreaseGb&quot;:&quot;0&quot;,&quot;weekIncreasePercentJudge&quot;:-2},{&quot;cpuNum&quot;:0,&quot;dayIncrease&quot;:0,&quot;dayIncreaseGb&quot;:&quot;0&quot;,&quot;dayIncreasePercentJudge&quot;:-2,&quot;dbType&quot;:&quot;MySQL&quot;,&quot;dbVersion&quot;:&quot;5.5.29-log&quot;,&quot;dbVersionCount&quot;:1,&quot;fmtPrefCount&quot;:&quot;0.00 &lt;span class=&#39;c-green&#39;&gt;B&lt;/span&gt;&quot;,&quot;formatPrefCount&quot;:&quot;0.00&quot;,&quot;freeGb&quot;:&quot;&quot;,&quot;hostCount&quot;:0,&quot;lastHoursDayValue&quot;:&quot;0&quot;,&quot;lastHoursValue&quot;:&quot;&quot;,&quot;logicalGb&quot;:&quot;&quot;,&quot;monthIncrease&quot;:0,&quot;monthIncreaseGb&quot;:&quot;0&quot;,&quot;monthIncreasePercentJudge&quot;:-2,&quot;mySQLmbpsFmt&quot;:&quot;0.00&quot;,&quot;mysqlInstanceCount&quot;:0,&quot;onlineOverHalfYear&quot;:false,&quot;oracleInstanceCount&quot;:0,&quot;osVersionCount&quot;:0,&quot;physicalGbFloat&quot;:&quot;0&quot;,&quot;physicalMem&quot;:0,&quot;physicalMemGb&quot;:&quot;0&quot;,&quot;physicalMemGb2&quot;:0,&quot;physicalMemValue&quot;:0,&quot;totalInstanceCount&quot;:0,&quot;weekIncrease&quot;:0,&quot;weekIncreaseGb&quot;:&quot;0&quot;,&quot;weekIncreasePercentJudge&quot;:-2},{&quot;cpuNum&quot;:0,&quot;dayIncrease&quot;:0,&quot;dayIncreaseGb&quot;:&quot;0&quot;,&quot;dayIncreasePercentJudge&quot;:-2,&quot;dbType&quot;:&quot;MySQL&quot;,&quot;dbVersion&quot;:&quot;5.6.10-log&quot;,&quot;dbVersionCount&quot;:1,&quot;fmtPrefCount&quot;:&quot;0.00 &lt;span class=&#39;c-green&#39;&gt;B&lt;/span&gt;&quot;,&quot;formatPrefCount&quot;:&quot;0.00&quot;,&quot;freeGb&quot;:&quot;&quot;,&quot;hostCount&quot;:0,&quot;lastHoursDayValue&quot;:&quot;0&quot;,&quot;lastHoursValue&quot;:&quot;&quot;,&quot;logicalGb&quot;:&quot;&quot;,&quot;monthIncrease&quot;:0,&quot;monthIncreaseGb&quot;:&quot;0&quot;,&quot;monthIncreasePercentJudge&quot;:-2,&quot;mySQLmbpsFmt&quot;:&quot;0.00&quot;,&quot;mysqlInstanceCount&quot;:0,&quot;onlineOverHalfYear&quot;:false,&quot;oracleInstanceCount&quot;:0,&quot;osVersionCount&quot;:0,&quot;physicalGbFloat&quot;:&quot;0&quot;,&quot;physicalMem&quot;:0,&quot;physicalMemGb&quot;:&quot;0&quot;,&quot;physicalMemGb2&quot;:0,&quot;physicalMemValue&quot;:0,&quot;totalInstanceCount&quot;:0,&quot;weekIncrease&quot;:0,&quot;weekIncreaseGb&quot;:&quot;0&quot;,&quot;weekIncreasePercentJudge&quot;:-2}]"
                                 data-nodata="当前MySQL数据库版本信息没有采集到，请检查MySQL数据库的启动状态。" style="height: 280px;"></div>
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
<script src="http://woqutech.3322.org:8080/assets/js/qm.database.js?v=4.1.0.3.20140118160000"></script>
</body>
</html>
