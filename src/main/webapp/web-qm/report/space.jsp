<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 17:03
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
                <li class="navnew-item  ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/report/home.jsp" title="总览">总览</a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/report/inspect.jsp" title="巡检报告">巡检报告</a>
                </li>
                <li class="navnew-item active ignore ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/report/space.jsp" title="空间">空间</a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/report/warn.jsp" title="报警">报警</a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/report/resource.jsp" title="资源">资源</a>
                </li>
            </ul>
        </div>

    </div>

</div><!--/sub menu -->

<div class="col-xs-10 container-main_content">



<div class="panel panel-default transparent report-space">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="icon-beaker"></i>空间详情</h3>
        <div class="panel-toolbar">
            <div class="picker">
                <form class="form-inline" role="form">
                    <div class="form-group">
                        <label class="control-label sr-only">选择日期查看：</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="date" id="J_datePicker" data-dateFormat="yyyy-mm-dd" data-searchDate="" placeholder="选择日期查看" readonly />
                            <span class="input-group-addon">
                                <i class="icon-calendar"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="panel-body">
        <div class="panel panel-default transparent">
            <div class="panel-heading">
                <h4 class="panel-title"><i class="icon-hand-right"></i>Oracle <span class="label label-primary">[主库大小:19 GB]</span></h4>
            </div>
            <div class="panel-body">
                <div id="ID-report-oracle-space-chart-placeholder" class="report-chartContainer" data-primary="[[1397923200000,23],[1398009600000,9],[1398096000000,23],[1398182400000,23],[1398268800000,23],[1398355200000,23],[1398441600000,23],[1398528000000,23],[1398614400000,23],[1398700800000,23],[1398787200000,23],[1398873600000,23],[1398960000000,23],[1399046400000,23],[1399132800000,23],[1399219200000,23],[1399305600000,23],[1399392000000,23],[1399478400000,23],[1399564800000,23],[1399651200000,13],[1399737600000,16],[1399824000000,16],[1399910400000,13],[1399996800000,13],[1400083200000,13],[1400169600000,20],[1400256000000,19],[1400342400000,19],[1400428800000,7],[1400515200000,7]]" data-standby="[[1397923200000,0],[1398009600000,0],[1398096000000,0],[1398182400000,0],[1398268800000,0],[1398355200000,0],[1398441600000,0],[1398528000000,0],[1398614400000,0],[1398700800000,0],[1398787200000,0],[1398873600000,0],[1398960000000,0],[1399046400000,0],[1399132800000,0],[1399219200000,0],[1399305600000,0],[1399392000000,0],[1399478400000,0],[1399564800000,0],[1399651200000,0],[1399737600000,0],[1399824000000,0],[1399910400000,0],[1399996800000,0],[1400083200000,0],[1400169600000,0],[1400256000000,0],[1400342400000,0],[1400428800000,0],[1400515200000,0]]" data-dbType="Oracle" data-chartData="" data-nodata="暂无Oracle空间相关信息。" style="height: 250px;"></div>

                <hr />

                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>名称</th>
                        <th>物理空间 / GB</th>
                        <th>逻辑空间 / GB</th>
                        <th>剩余空间 / GB</th>
                        <th>昨日增长 / GB <i class="icon-question-sign c-blue" data-toggle="tooltip" title="昨日空间增长量" data-placement="right"></i> </th>
                        <th>上周增长 / GB <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上周空间增长量" data-placement="right"></i> </th>
                        <th>上月增长 / GB <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上月空间增长量" data-placement="right"></i> </th>
                        <th>昨日涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="昨日增长量/昨日零点空间大小" data-placement="left"></i></th>
                        <th>上周涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上周增长量/上周一零点空间大小" data-placement="left"></i></th>
                        <th>上月涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上月增长量/上月一号零点空间大小" data-placement="left"></i></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>JES</td>
                        <td>7</td>
                        <td>0.98</td>
                        <td>4.99</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>
    												<span class="label label-state b-danger">
    													0.4% <i class="icon-arrow-up"></i>
    												</span>
                        </td>

                        <td>
                            <span class="label label-state b-default">N/A</span>
                        </td>

                        <td>
                            <span class="label label-state b-default">N/A</span>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <hr />

        <div class="panel panel-default transparent">
            <div class="panel-heading">
                <h4 class="panel-title"><i class="icon-hand-right"></i>MySQL <span class="label label-primary">[主库大小:22 GB 备库大小:0 GB]</span></h4>
            </div>
            <div class="panel-body">
                <div id="ID-report-mysql-space-chart-placeholder" class="report-chartContainer" data-primary="[[1397923200000,18],[1398009600000,18],[1398096000000,18],[1398182400000,18],[1398268800000,18],[1398355200000,18],[1398441600000,19],[1398528000000,19],[1398614400000,19],[1398700800000,19],[1398787200000,19],[1398873600000,19],[1398960000000,20],[1399046400000,20],[1399132800000,20],[1399219200000,20],[1399305600000,20],[1399392000000,21],[1399478400000,21],[1399564800000,21],[1399651200000,21],[1399737600000,21],[1399824000000,21],[1399910400000,21],[1399996800000,21],[1400083200000,21],[1400169600000,20],[1400256000000,22],[1400342400000,22],[1400428800000,22],[1400515200000,22]]" data-standby="[[1397923200000,0],[1398009600000,0],[1398096000000,0],[1398182400000,0],[1398268800000,0],[1398355200000,0],[1398441600000,0],[1398528000000,0],[1398614400000,0],[1398700800000,0],[1398787200000,0],[1398873600000,0],[1398960000000,0],[1399046400000,0],[1399132800000,0],[1399219200000,0],[1399305600000,0],[1399392000000,0],[1399478400000,0],[1399564800000,0],[1399651200000,0],[1399737600000,0],[1399824000000,0],[1399910400000,0],[1399996800000,0],[1400083200000,0],[1400169600000,0],[1400256000000,0],[1400342400000,0],[1400428800000,0],[1400515200000,0]]" data-dbType="MySQL" data-chartData="" data-nodata="暂无MySQL空间相关信息。" style="height: 250px;"></div>

                <hr />

                <table class="table table-bordered table-striped" id="ID-report-mysql-space-detail-list">
                    <thead>
                    <tr>
                        <th>名称</th>
                        <th>物理空间 / GB</th>
                        <th>昨日增长 / GB <i class="icon-question-sign c-blue" data-toggle="tooltip" title="昨日空间增长量" data-placement="right"></i> </th>
                        <th>上周增长 / GB <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上周空间增长量" data-placement="right"></i> </th>
                        <th>上月增长 / GB <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上月空间增长量" data-placement="right"></i> </th>
                        <th>昨日涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="昨日增长量/昨日零点空间大小" data-placement="left"></i></th>
                        <th>上周涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上周增长量/上周一零点空间大小" data-placement="left"></i></th>
                        <th>上月涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上月增长量/上月一号零点空间大小" data-placement="left"></i></th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td>QMonitor_MySQL</td>
                        <td>18</td>
                        <td>0</td>
                        <td>1</td>
                        <td>5</td>
                        <td>
    												<span class="label label-state b-primary">
    													0.0%
    												</span>
                        </td>

                        <td>
    												<span class="label label-state b-danger">
    													5.88% <i class="icon-arrow-up"></i>
    												</span>
                        </td>

                        <td>
    												<span class="label label-state b-danger">
    													49.91% <i class="icon-arrow-up"></i>
    												</span>
                        </td>
                    </tr>
                    <tr>
                        <td>mysql_240_5.6</td>
                        <td>2</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>
    												<span class="label label-state b-primary">
    													0.0%
    												</span>
                        </td>

                        <td>
    												<span class="label label-state b-primary">
    													0.0%
    												</span>
                        </td>

                        <td>
    												<span class="label label-state b-primary">
    													0.0%
    												</span>
                        </td>
                    </tr>
                    <tr>
                        <td>mysql_240_5.5</td>
                        <td>1</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>
    												<span class="label label-state b-primary">
    													0.0%
    												</span>
                        </td>

                        <td>
    												<span class="label label-state b-primary">
    													0.0%
    												</span>
                        </td>

                        <td>
    												<span class="label label-state b-primary">
    													0.0%
    												</span>
                        </td>
                    </tr>
                    <tr>
                        <td>mysql_240_5.1</td>
                        <td>1</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                        <td>
    												<span class="label label-state b-primary">
    													0.0%
    												</span>
                        </td>

                        <td>
    												<span class="label label-state b-primary">
    													0.0%
    												</span>
                        </td>

                        <td>
    												<span class="label label-state b-primary">
    													0.0%
    												</span>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</div><!--/main content -->
</div>
</div><!--/container -->
<jsp:include page="../foot.jsp"/>
<script src="http://woqutech.3322.org:8080/assets/js/qm.report-space.js?v=4.1.0.3.20140118160000"></script>
</body>
</html>

