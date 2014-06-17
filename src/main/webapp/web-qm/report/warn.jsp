<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 17:05
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
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/report/home.jsp" title="总览">总览</a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/report/inspect.jsp" title="巡检报告">巡检报告</a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/report/space.jsp" title="空间">空间</a>
                </li>
                <li class="navnew-item active ignore">
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



<div class="panel panel-default transparent report-warn">
<div class="panel-heading">
    <h3 class="panel-title"><i class="icon-bell"></i>报警详情</h3>
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
    <h4 class="panel-title"><i class="icon-hand-right"></i>报警数据库</h4>
    <div class="panel-toolbar">
        <a data-toggle="collapse" href="#J_reportWarnDatabase">
            <i class="icon-chevron-up"></i>
        </a>
    </div>
</div>
<div id="J_reportWarnDatabase" class="panel-collapse collapse in">
<div class="panel-body">
<table class="table table-bordered table-striped">
<thead>
<tr>
    <th>名称</th>
    <th>类型</th>
    <th>数量</th>
    <th>比例 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值在当前总量的百分比" data-placement="right"></i></th>
    <th>前天</th>
    <th>涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值相比前天值的涨跌百分比" data-placement="right"></i></th>
    <th>上周同比 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上周同一天的数值" data-placement="right"></i></th>
    <th>涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值相比上周同一天的涨跌百分比" data-placement="left"></i></th>
    <th>月均值 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="一个月平均值" data-placement="left"></i></th>
    <th>涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值相比月均值的涨跌百分比" data-placement="left"></i></th>
</tr>
</thead>
<tbody>
<tr>
    <td>qm : qm1</td>
    <td>Oracle</td>
    <td>45615 </td>
    <td>13.53%</td>
    <td>
        45615    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        41230    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														10.64% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        0
    </td>
    <td>
        <span class="label label-state b-primary">0%</span>
    </td>
</tr>
<tr>
    <td>qm : qm2</td>
    <td>Oracle</td>
    <td>44841 </td>
    <td>13.3%</td>
    <td>
        44841    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        41221    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														8.78% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        0
    </td>
    <td>
        <span class="label label-state b-primary">0%</span>
    </td>
</tr>
<tr>
    <td>orcl : orcl</td>
    <td>Oracle</td>
    <td>44242 </td>
    <td>13.12%</td>
    <td>
        44242    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        11615    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														280.9% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        0
    </td>
    <td>
        <span class="label label-state b-primary">0%</span>
    </td>
</tr>
<tr>
    <td>rac1</td>
    <td>Host</td>
    <td>21773 </td>
    <td>6.46%</td>
    <td>
        21773    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        14350    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														51.73% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        10932    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														99.17% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>woquhost2</td>
    <td>Host</td>
    <td>21559 </td>
    <td>6.39%</td>
    <td>
        21559    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        21059    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														2.37% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        14846    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														45.22% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>sto1</td>
    <td>Host</td>
    <td>20731 </td>
    <td>6.15%</td>
    <td>
        20731    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        15171    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														36.65% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        12432    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														66.76% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>sto2</td>
    <td>Host</td>
    <td>20686 </td>
    <td>6.14%</td>
    <td>
        20686    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        15686    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														31.88% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        12310    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														68.04% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>rac2</td>
    <td>Host</td>
    <td>20647 </td>
    <td>6.12%</td>
    <td>
        20647    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        14300    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														44.38% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        10875    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														89.86% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>primary</td>
    <td>Host</td>
    <td>19803 </td>
    <td>5.87%</td>
    <td>
        19803    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        2548    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														677.2% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        3179    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														522.93% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>standby</td>
    <td>Host</td>
    <td>18445 </td>
    <td>5.47%</td>
    <td>
        18445    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        2546    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														624.47% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        3489    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														428.66% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>rac11g : rac11g1</td>
    <td>Oracle</td>
    <td>17900 </td>
    <td>5.31%</td>
    <td>
        17900    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        12358    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														44.85% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        16350    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														9.48% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>rac11g : rac11g2</td>
    <td>Oracle</td>
    <td>15825 </td>
    <td>4.69%</td>
    <td>
        15825    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        11884    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														33.16% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        16350    											    										    									</td>
    <td>
    													<span class="label label-state b-success">
    														3.21% <i class="icon-arrow-down"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>mysql_240_5.1</td>
    <td>MySQL</td>
    <td>6198 </td>
    <td>1.84%</td>
    <td>
        6198    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        5777    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														7.29% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        5903    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														5% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>mysql_240_5.5</td>
    <td>MySQL</td>
    <td>6182 </td>
    <td>1.83%</td>
    <td>
        6182    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        5763    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														7.27% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        5907    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														4.66% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>vm-rac2-11g</td>
    <td>Host</td>
    <td>2532 </td>
    <td>0.75%</td>
    <td>
        2532    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        2439    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														3.81% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        2468    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														2.59% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>vm-rac1-11g</td>
    <td>Host</td>
    <td>2530 </td>
    <td>0.75%</td>
    <td>
        2530    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        2448    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														3.35% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        2488    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														1.69% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>woqu-mysql2</td>
    <td>Host</td>
    <td>2530 </td>
    <td>0.75%</td>
    <td>
        2530    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        2442    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														3.6% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        2468    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														2.51% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>multi-mysql</td>
    <td>Host</td>
    <td>2530 </td>
    <td>0.75%</td>
    <td>
        2530    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        2442    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														3.6% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        2466    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														2.6% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>woqu-centos</td>
    <td>Host</td>
    <td>2515 </td>
    <td>0.75%</td>
    <td>
        2515    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        2424    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														3.75% <i class="icon-arrow-up"></i>
    													</span>
    </td>
    <td>
        2454    											    										    									</td>
    <td>
    													<span class="label label-state b-danger">
    														2.49% <i class="icon-arrow-up"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>dg : orcl</td>
    <td>Oracle</td>
    <td>48 </td>
    <td>0.01%</td>
    <td>
        48    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        0    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        2454    											    										    									</td>
    <td>
    													<span class="label label-state b-success">
    														98.04% <i class="icon-arrow-down"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>JES : jes</td>
    <td>Oracle</td>
    <td>8 </td>
    <td>0%</td>
    <td>
        8    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        37815    											    										    									</td>
    <td>
    													<span class="label label-state b-success">
    														99.98% <i class="icon-arrow-down"></i>
    													</span>
    </td>
    <td>
        2454    											    										    									</td>
    <td>
    													<span class="label label-state b-success">
    														99.67% <i class="icon-arrow-down"></i>
    													</span>
    </td>
</tr>
<tr>
    <td>rac</td>
    <td>Oracle</td>
    <td>  0 </td>
    <td>0%</td>
    <td>
        0    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        0    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        2454    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
</tr>
<tr>
    <td>mysql_240_5.6</td>
    <td>MySQL</td>
    <td>  0 </td>
    <td>0%</td>
    <td>
        0    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        0    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        0    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
</tr>
<tr>
    <td>QMonitor_MySQL</td>
    <td>MySQL</td>
    <td>  0 </td>
    <td>0%</td>
    <td>
        0    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        0    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
    <td>
        4    											    										    									</td>
    <td>
    													<span class="label label-state b-primary">
    														0%
    													</span>
    </td>
</tr>
<tr>
    <td colspan="2" class="text-center">总计</td>
    <td>337140</td>
    <td></td>
    <td>337140</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>265518</td>
    <td><span class="label label-state b-danger">26.97% <i class="icon-arrow-up"></i></span></td>
    <td>108571</td>
    <td><span class="label label-state b-danger">210.52% <i class="icon-arrow-up"></i></span></td>
</tr>
</tbody>
</table>
</div>
</div>
</div>

<hr />

<div class="panel panel-default transparent">
    <div class="panel-heading">
        <h4 class="panel-title"><i class="icon-hand-right"></i>报警类型</h4>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_reportWarnType">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_reportWarnType" class="panel-collapse collapse in">
        <div class="panel-body">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>名称</th>
                    <th>数量</th>
                    <th>比例 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值在当前总量的百分比" data-placement="right"></i></th>
                    <th>前天</th>
                    <th>涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值相比前天值的涨跌百分比" data-placement="right"></i></th>
                    <th>上周同比 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上周同一天的数值" data-placement="right"></i></th>
                    <th>涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值相比上周同一天的涨跌百分比" data-placement="left"></i></th>
                    <th>月均值 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="一个月平均值" data-placement="left"></i></th>
                    <th>涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值相比月均值的涨跌百分比" data-placement="left"></i></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>LogWatch</td>
                    <td>104138</td>
                    <td>16.36%</td>
                    <td>
                        104138        										        									    									</td>
                    <td><span class="label label-state b-primary">0%</span></td>
                    <td>
                        69362        										        									    									</td>
                    <td><span class="label label-state b-danger">50.14% <i class="icon-arrow-up"></i></span></td>
                    <td>
                        62802        										        									    									</td>
                    <td><span class="label label-state b-danger">65.82% <i class="icon-arrow-up"></i></span></td>
                </tr>
                <tr>
                    <td>CPU/Load</td>
                    <td>51247</td>
                    <td>8.05%</td>
                    <td>
                        51247        										        									    									</td>
                    <td><span class="label label-state b-primary">0%</span></td>
                    <td>
                        27719        										        									    									</td>
                    <td><span class="label label-state b-danger">84.88% <i class="icon-arrow-up"></i></span></td>
                    <td>
                        28174        										        									    									</td>
                    <td><span class="label label-state b-danger">81.89% <i class="icon-arrow-up"></i></span></td>
                </tr>
                <tr>
                    <td>DiskIO/TableSpace</td>
                    <td>217683</td>
                    <td>34.19%</td>
                    <td>
                        217683        										        									    									</td>
                    <td><span class="label label-state b-primary">0%</span></td>
                    <td>
                        186926        										        									    									</td>
                    <td><span class="label label-state b-danger">16.45% <i class="icon-arrow-up"></i></span></td>
                    <td>
                        143802        										        									    									</td>
                    <td><span class="label label-state b-danger">51.38% <i class="icon-arrow-up"></i></span></td>
                </tr>
                <tr>
                    <td>Memory/Process</td>
                    <td>134750</td>
                    <td>21.16%</td>
                    <td>
                        134750        										        									    									</td>
                    <td><span class="label label-state b-primary">0%</span></td>
                    <td>
                        113490        										        									    									</td>
                    <td><span class="label label-state b-danger">18.73% <i class="icon-arrow-up"></i></span></td>
                    <td>
                        65519        										        									    									</td>
                    <td><span class="label label-state b-danger">105.67% <i class="icon-arrow-up"></i></span></td>
                </tr>
                <tr>
                    <td>DBConnect/Locks</td>
                    <td>66749</td>
                    <td>10.48%</td>
                    <td>
                        66749        										        									    									</td>
                    <td><span class="label label-state b-primary">0%</span></td>
                    <td>
                        62425        										        									    									</td>
                    <td><span class="label label-state b-danger">6.93% <i class="icon-arrow-up"></i></span></td>
                    <td>
                        25201        										        									    									</td>
                    <td><span class="label label-state b-danger">164.87% <i class="icon-arrow-up"></i></span></td>
                </tr>
                <tr>
                    <td>Trans/Undo</td>
                    <td>37244</td>
                    <td>5.85%</td>
                    <td>
                        37244        										        									    									</td>
                    <td><span class="label label-state b-primary">0%</span></td>
                    <td>
                        35310        										        									    									</td>
                    <td><span class="label label-state b-danger">5.48% <i class="icon-arrow-up"></i></span></td>
                    <td>
                        26611        										        									    									</td>
                    <td><span class="label label-state b-danger">39.96% <i class="icon-arrow-up"></i></span></td>
                </tr>
                <tr>
                    <td>Standby/Slave</td>
                    <td>24856</td>
                    <td>3.9%</td>
                    <td>
                        24856        										        									    									</td>
                    <td><span class="label label-state b-primary">0%</span></td>
                    <td>
                        23080        										        									    									</td>
                    <td><span class="label label-state b-danger">7.69% <i class="icon-arrow-up"></i></span></td>
                    <td>
                        23629        										        									    									</td>
                    <td><span class="label label-state b-danger">5.19% <i class="icon-arrow-up"></i></span></td>
                </tr>
                <tr>
                    <td>Link</td>
                    <td> 0</td>
                    <td>0%</td>
                    <td>
                        0        										        									    									</td>
                    <td><span class="label label-state b-primary">0%</span></td>
                    <td>
                        0        										        									    									</td>
                    <td><span class="label label-state b-primary">0%</span></td>
                    <td>
                        18357        										        									    									</td>
                    <td><span class="label label-state b-primary">0%</span></td>
                </tr>
                <tr>
                    <td class="text-center">总计</td>
                    <td>636667</td>
                    <td></td>
                    <td>636667</td>
                    <td><span class="label label-state b-primary">0%</span></td>
                    <td>518312</td>
                    <td><span class="label label-state b-danger">22.83% <i class="icon-arrow-up"></i></span></td>
                    <td>394095</td>
                    <td><span class="label label-state b-danger">61.55% <i class="icon-arrow-up"></i></span></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<hr />

<div class="panel panel-default transparent">
<div class="panel-heading">
    <h4 class="panel-title"><i class="icon-hand-right"></i>报警接收人</h4>
    <div class="panel-toolbar">
        <a data-toggle="collapse" href="#J_reportWarnUser">
            <i class="icon-chevron-up"></i>
        </a>
    </div>
</div>
<div id="J_reportWarnUser" class="panel-collapse collapse in">
<div class="panel-body">
<table class="table table-bordered table-striped">
<thead>
<tr>
    <th>名称</th>
    <th>数量</th>
    <th>比例 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值在当前总量的百分比" data-placement="right"></i></th>
    <th>前天</th>
    <th>涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值相比前天值的涨跌百分比" data-placement="right"></i></th>
    <th>上周同比 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上周同一天的数值" data-placement="right"></i></th>
    <th>涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值相比上周同一天的涨跌百分比" data-placement="left"></i></th>
    <th>月均值 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="一个月平均值" data-placement="left"></i></th>
    <th>涨幅 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="当前值相比月均值的涨跌百分比" data-placement="left"></i></th>
</tr>
</thead>
<tbody>
<tr>
    <td>woqu</td>
    <td>126599</td>
    <td>19.88%</td>
    <td>
        126599        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        59079        										        									    									</td>
    <td><span class="label label-state b-danger">114.29% <i class="icon-arrow-up"></i></span></td>
    <td>
        103941        										        									    									</td>
    <td><span class="label label-state b-danger">21.8% <i class="icon-arrow-up"></i></span></td>
</tr>
<tr>
    <td>chun.luo</td>
    <td>63151</td>
    <td>9.92%</td>
    <td>
        63151        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        43821        										        									    									</td>
    <td><span class="label label-state b-danger">44.11% <i class="icon-arrow-up"></i></span></td>
    <td>
        34238        										        									    									</td>
    <td><span class="label label-state b-danger">84.45% <i class="icon-arrow-up"></i></span></td>
</tr>
<tr>
    <td>lex</td>
    <td>60666</td>
    <td>9.53%</td>
    <td>
        60666        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        53105        										        									    									</td>
    <td><span class="label label-state b-danger">14.24% <i class="icon-arrow-up"></i></span></td>
    <td>
        31857        										        									    									</td>
    <td><span class="label label-state b-danger">90.43% <i class="icon-arrow-up"></i></span></td>
</tr>
<tr>
    <td>laomeng</td>
    <td>45615</td>
    <td>7.16%</td>
    <td>
        45615        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        41230        										        									    									</td>
    <td><span class="label label-state b-danger">10.64% <i class="icon-arrow-up"></i></span></td>
    <td>
        35579        										        									    									</td>
    <td><span class="label label-state b-danger">28.21% <i class="icon-arrow-up"></i></span></td>
</tr>
<tr>
    <td>woquguard</td>
    <td>20686</td>
    <td>3.25%</td>
    <td>
        20686        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        15686        										        									    									</td>
    <td><span class="label label-state b-danger">31.88% <i class="icon-arrow-up"></i></span></td>
    <td>
        12310        										        									    									</td>
    <td><span class="label label-state b-danger">68.04% <i class="icon-arrow-up"></i></span></td>
</tr>
<tr>
    <td>%haha</td>
    <td>17900</td>
    <td>2.81%</td>
    <td>
        17900        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        12358        										        									    									</td>
    <td><span class="label label-state b-danger">44.85% <i class="icon-arrow-up"></i></span></td>
    <td>
        12846        										        									    									</td>
    <td><span class="label label-state b-danger">39.34% <i class="icon-arrow-up"></i></span></td>
</tr>
<tr>
    <td>woqutech</td>
    <td>2515</td>
    <td>0.4%</td>
    <td>
        2515        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        2424        										        									    									</td>
    <td><span class="label label-state b-danger">3.75% <i class="icon-arrow-up"></i></span></td>
    <td>
        2454        										        									    									</td>
    <td><span class="label label-state b-danger">2.49% <i class="icon-arrow-up"></i></span></td>
</tr>
<tr>
    <td>donny</td>
    <td>8</td>
    <td>0%</td>
    <td>
        8        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        37815        										        									    									</td>
    <td><span class="label label-state b-success">99.98% <i class="icon-arrow-down"></i></span></td>
    <td>
        7770        										        									    									</td>
    <td><span class="label label-state b-success">99.9% <i class="icon-arrow-down"></i></span></td>
</tr>
<tr>
    <td>test1208</td>
    <td> 0</td>
    <td>0%</td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
</tr>
<tr>
    <td>yzy</td>
    <td> 0</td>
    <td>0%</td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
</tr>
<tr>
    <td>jackey.zhang</td>
    <td> 0</td>
    <td>0%</td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
</tr>
<tr>
    <td>mxy</td>
    <td> 0</td>
    <td>0%</td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
</tr>
<tr>
    <td>jianhui.li</td>
    <td> 0</td>
    <td>0%</td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
</tr>
<tr>
    <td>test1</td>
    <td> 0</td>
    <td>0%</td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>
        0        										        									    									</td>
    <td><span class="label label-state b-primary">0%</span></td>
</tr>
<tr>
    <td class="text-center">总计</td>
    <td>337140</td>
    <td></td>
    <td>337140</td>
    <td><span class="label label-state b-primary">0%</span></td>
    <td>265518</td>
    <td><span class="label label-state b-danger">26.97% <i class="icon-arrow-up"></i></span></td>
    <td>240995</td>
    <td><span class="label label-state b-danger">39.9% <i class="icon-arrow-up"></i></span></td>
</tr>
</tbody>
</table>
</div>
</div>
</div>

</div>
</div>

</div><!--/main content -->
</div>
</div><!--/container -->
<jsp:include page="../foot.jsp"/>
</body>
</html>

