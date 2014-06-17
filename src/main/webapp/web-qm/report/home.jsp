<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 16:47
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
            <ul class="navnew">
                <li class="navnew-item  active ignore ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/report/home.jsp" title="总览">总览</a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/report/inspect.jsp" title="巡检报告">巡检报告</a>
                </li>
                <li class="navnew-item ">
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

</div>
<!--/sub menu -->

<div class="col-xs-10 container-main_content">


<div class="panel panel-default transparent report-home-Inspection">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="icon-book"></i>巡检报告</h3>

        <div class="panel-toolbar">
            <div class="picker">
                <form class="form-inline" role="form">
                    <div class="form-group">
                        <label class="control-label sr-only">选择日期查看：</label>

                        <div class="input-group">
                            <input type="text" class="form-control" name="date" id="J_datePicker"
                                   data-dateFormat="yyyy-mm-dd" data-searchDate="" placeholder="选择日期查看" readonly/>
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
        <table class="table table-bordered table-striped table-condensed">
            <thead>
            <tr>
                <th class="home-inspect-name">指标名称</th>
                <th class="home-inspect-count">统计数</th>
                <th class="home-inspect-name">指标名称</th>
                <th class="home-inspect-count">统计数</th>
                <th class="home-inspect-name">指标名称</th>
                <th class="home-inspect-count">统计数</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="c-danger">失效对象</td>
                <td class="c-danger">9</td>
                <td class="c-danger">ASM磁盘组空间</td>
                <td class="c-danger">1</td>
                <td>unknown/suspend的报警</td>
                <td>0</td>
            </tr>
            <tr>
                <td>到期分区表</td>
                <td>0</td>
                <td>表空间</td>
                <td>0</td>
                <td>备库延迟</td>
                <td>0</td>
            </tr>
            <tr>
                <td>磁盘目录空间</td>
                <td>0</td>
                <td>nologging表空间</td>
                <td>0</td>
                <td>offline数据文件</td>
                <td>0</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="panel panel-default transparent report-home-space">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="icon-beaker"></i>空间</h3>

        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_reportSpace">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_reportSpace" class="panel-collapse collapse in">
        <div class="panel-body">
            <div class="panel panel-default transparent">
                <div class="panel-heading">
                    <h4 class="panel-title"><i class="icon-hand-right"></i>空间变化一览</h4>
                </div>
                <div class="panel-body">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th colspan="2"></th>
                            <th>名称</th>
                            <th>大小 / GB</th>
                            <th>昨日增长 / GB <i class="icon-question-sign c-blue" data-toggle="tooltip" title="昨日空间增长量"
                                             data-placement="right"></i></th>
                            <th>昨日涨跌 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="昨日增长量/昨日零点空间大小"
                                        data-placement="right"></i></th>
                            <th>上周涨跌 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上周增长量/上周一零点空间大小"
                                        data-placement="left"></i></th>
                            <th>上月涨跌 <i class="icon-question-sign c-blue" data-toggle="tooltip" title="上月增长量/上月一号零点空间大小"
                                        data-placement="left"></i></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td rowspan="2" class="text-center vertical-middle">Oracle <strong class="c-grey">[主库
                                19GB]</strong></td>
                            <td class="text-center vertical-middle">空间最大</td>
                            <td>rac11g</td>
                            <td>12</td>
                            <td>0</td>
                            <td>
                                <span class="label label-state b-default">N/A</span>
                            </td>

                            <td>
                                <span class="label label-state b-default">N/A</span>
                            </td>

                            <td>
    										<span class="label label-state b-danger">
    											5.05% <i class="icon-arrow-up"></i>
    										</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center vertical-middle">增长最快</td>
                            <td>rac11g</td>
                            <td>12</td>
                            <td>0</td>
                            <td>
                                <span class="label label-state b-default">N/A</span>
                            </td>

                            <td>
                                <span class="label label-state b-default">N/A</span>
                            </td>

                            <td>
    										<span class="label label-state b-danger">
    											5.05% <i class="icon-arrow-up"></i>
    										</span>
                            </td>
                        </tr>

                        <tr>
                            <td rowspan="2" class="text-center vertical-middle">MySQL <strong class="c-grey">[主库 22G 备库
                                0G]</strong></td>
                            <td class="text-center vertical-middle">空间最大</td>
                            <td>QMonitor_MySQL</td>
                            <td>18</td>
                            <td>0</td>
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
                            <td class="text-center vertical-middle">增长最快</td>
                            <td>QMonitor_MySQL</td>
                            <td>18</td>
                            <td>0</td>
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
    											5.05% <i class="icon-arrow-up"></i>
    										</span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="panel panel-default transparent">
                <div class="panel-heading">
                    <h4 class="panel-title"><i class="icon-hand-right"></i>物理空间 TOP10</h4>
                </div>
                <div class="panel-body">
                    <div id="ID-report-space-chart-placeholder" class="report-chartContainer"
                         data-chartData='{&quot;categories&quot;:[&quot;QMonitor_MySQL&quot;,&quot;JES&quot;,&quot;mysql_240_5.6&quot;,&quot;mysql_240_5.5&quot;,&quot;mysql_240_5.1&quot;],&quot;categoriesValues&quot;:[&quot;18.02&quot;,&quot;7.06&quot;,&quot;2.01&quot;,&quot;1.47&quot;,&quot;1.44&quot;]}'
                         data-nodata="暂无相关统计数据。" style="height: 280px;"></div>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="panel panel-default transparent report-home-warn">
    <div class="panel-heading">
        <h3 class="panel-title">
            <i class="icon-bell"></i>报警 <span class="label label-primary">2014-05-19 报警总数量(180859)同比上周(155960) 涨跌 <i
                class="icon-arrow-up"></i> <span>0.16%</span></span></h3>

        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_reportWarn">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_reportWarn" class="panel-collapse collapse in">
        <div class="panel-body">
            <div class="row">
                <div class="col-xs-6">
                    <div class="panel panel-default transparent">
                        <div class="panel-heading">
                            <h4 class="panel-title"><i class="icon-hand-right"></i> 报警次数归总排行 TOP10</h4>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-xs-6">
                                    <table class="table table-bordered table-striped table-condensed">
                                        <caption>数据库报警</caption>
                                        <thead>
                                        <tr>
                                            <th>名称</th>
                                            <th>次数</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>qm : qm1</td>
                                            <td>45615</td>
                                        </tr>
                                        <tr>
                                            <td>qm : qm2</td>
                                            <td>44841</td>
                                        </tr>
                                        <tr>
                                            <td>orcl : orcl</td>
                                            <td>44242</td>
                                        </tr>
                                        <tr>
                                            <td>rac11g : rac11g1</td>
                                            <td>17900</td>
                                        </tr>
                                        <tr>
                                            <td>rac11g : rac11g2</td>
                                            <td>15825</td>
                                        </tr>
                                        <tr>
                                            <td>mysql_240_5.1</td>
                                            <td>6198</td>
                                        </tr>
                                        <tr>
                                            <td>mysql_240_5.5</td>
                                            <td>6182</td>
                                        </tr>
                                        <tr>
                                            <td>dg : orcl</td>
                                            <td>48</td>
                                        </tr>
                                        <tr>
                                            <td>JES : jes</td>
                                            <td>8</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="col-xs-6">
                                    <table class="table table-bordered table-striped table-condensed">
                                        <caption>报警接收人</caption>
                                        <thead>
                                        <tr class="tr-white">
                                            <th>名称</th>
                                            <th>次数</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>woqu</td>
                                            <td>126599</td>
                                        </tr>
                                        <tr>
                                            <td>chun.luo</td>
                                            <td>63151</td>
                                        </tr>
                                        <tr>
                                            <td>lex</td>
                                            <td>60666</td>
                                        </tr>
                                        <tr>
                                            <td>laomeng</td>
                                            <td>45615</td>
                                        </tr>
                                        <tr>
                                            <td>woquguard</td>
                                            <td>20686</td>
                                        </tr>
                                        <tr>
                                            <td>%haha</td>
                                            <td>17900</td>
                                        </tr>
                                        <tr>
                                            <td>woqutech</td>
                                            <td>2515</td>
                                        </tr>
                                        <tr>
                                            <td>donny</td>
                                            <td>8</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="panel panel-default transparent">
                        <div class="panel-heading">
                            <h4 class="panel-title"><i class="icon-hand-right"></i> 报警分类统计</h4>
                        </div>
                        <div class="panel-body">
                            <div class="highcharts-container" id="highcharts-2"
                                 style="position: relative; overflow: hidden; width: 531px; height: 358px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: 'Open Sans'; font-size: 10px;">
                                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="531" height="358">
                                    <desc>Created with Highcharts 3.0.5</desc>
                                    <defs>
                                        <clipPath id="highcharts-3">
                                            <rect fill="none" x="0" y="0" width="304" height="401"></rect>
                                        </clipPath>
                                    </defs>
                                    <rect rx="5" ry="5" fill="#FFFFFF" x="0" y="0" width="531" height="358"></rect>
                                    <g class="highcharts-grid" zIndex="1"></g>
                                    <g class="highcharts-grid" zIndex="1">
                                        <path fill="none" d="M 186.5 10 L 186.5 314" stroke="#cfcfcf" stroke-width="1"
                                              zIndex="1" opacity="1"></path>
                                        <path fill="none" d="M 253.5 10 L 253.5 314" stroke="#cfcfcf" stroke-width="1"
                                              zIndex="1" opacity="1"></path>
                                        <path fill="none" d="M 320.5 10 L 320.5 314" stroke="#cfcfcf" stroke-width="1"
                                              zIndex="1" opacity="1"></path>
                                        <path fill="none" d="M 386.5 10 L 386.5 314" stroke="#cfcfcf" stroke-width="1"
                                              zIndex="1" opacity="1"></path>
                                        <path fill="none" d="M 453.5 10 L 453.5 314" stroke="#cfcfcf" stroke-width="1"
                                              zIndex="1" opacity="1"></path>
                                        <path fill="none" d="M 521.5 10 L 521.5 314" stroke="#cfcfcf" stroke-width="1"
                                              zIndex="1" opacity="1"></path>
                                        <path fill="none" d="M 119.5 10 L 119.5 314" stroke="#cfcfcf" stroke-width="1"
                                              zIndex="1" opacity="1"></path>
                                    </g>
                                    <g class="highcharts-axis" zIndex="2">
                                        <path fill="none" d="M 120 97.5 L 116 97.5" stroke="#cfcfcf" stroke-width="1"
                                              opacity="1"></path>
                                        <path fill="none" d="M 120 140.5 L 116 140.5" stroke="#cfcfcf" stroke-width="1"
                                              opacity="1"></path>
                                        <path fill="none" d="M 120 184.5 L 116 184.5" stroke="#cfcfcf" stroke-width="1"
                                              opacity="1"></path>
                                        <path fill="none" d="M 120 227.5 L 116 227.5" stroke="#cfcfcf" stroke-width="1"
                                              opacity="1"></path>
                                        <path fill="none" d="M 120 271.5 L 116 271.5" stroke="#cfcfcf" stroke-width="1"
                                              opacity="1"></path>
                                        <path fill="none" d="M 120 314.5 L 116 314.5" stroke="#cfcfcf" stroke-width="1"
                                              opacity="1"></path>
                                        <path fill="none" d="M 120 53.5 L 116 53.5" stroke="#cfcfcf" stroke-width="1"
                                              opacity="1"></path>
                                        <path fill="none" d="M 120 9.5 L 116 9.5" stroke="#cfcfcf"
                                              stroke-width="1"></path>
                                    </g>
                                    <g class="highcharts-axis" zIndex="2">
                                        <text x="320.5" y="343"
                                              style="font-family:Open Sans;font-size:10px;color:#4d759e;font-weight:bold;fill:#4d759e;"
                                              zIndex="7" text-anchor="middle" transform="translate(0,0)"
                                              visibility="visible">
                                            <tspan x="320.5">报警数/次</tspan>
                                        </text>
                                    </g>
                                    <g class="highcharts-series-group" zIndex="3">
                                        <g class="highcharts-series highcharts-tracker" visibility="visible"
                                           zIndex="0.1" transform="translate(521,314) rotate(90) scale(-1,1) scale(1 1)"
                                           style="" width="401" height="304" clip-path="url(#highcharts-3)">
                                            <rect fill="#2091CF" x="271.5" y="230.5" width="21" height="171"
                                                  stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
                                            <rect fill="#DA5430" x="227.5" y="257.5" width="21" height="144"
                                                  stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
                                            <rect fill="#68BC31" x="184.5" y="194.5" width="21" height="207"
                                                  stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
                                            <rect fill="#AF4E96" x="141.5" y="53.5" width="21" height="348"
                                                  stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
                                            <rect fill="#1aadce" x="97.5" y="311.5" width="21" height="90"
                                                  stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
                                            <rect fill="#492970" x="54.5" y="359.5" width="21" height="42"
                                                  stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
                                            <rect fill="#f28f43" x="10.5" y="277.5" width="21" height="124"
                                                  stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
                                        </g>
                                        <g class="highcharts-markers" visibility="visible" zIndex="0.1"
                                           transform="translate(521,314) rotate(90) scale(-1,1) scale(1 1)" width="401"
                                           height="304"></g>
                                    </g>
                                    <g class="highcharts-data-labels highcharts-tracker" visibility="visible" zIndex="6"
                                       transform="translate(120,10) scale(1 1)" style="">
                                        <g zIndex="1" style="cursor:default;" transform="translate(171,13)"
                                           visibility="inherit">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">51,247</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(144,57)"
                                           visibility="inherit">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">43,183</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(207,100)"
                                           visibility="inherit">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">61,950</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(348,143)"
                                           visibility="inherit">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">104,138</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(90,187)"
                                           visibility="inherit">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">26,950</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(42,230)"
                                           visibility="inherit">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">12,428</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(124,274)"
                                           visibility="inherit">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">37,244</tspan>
                                            </text>
                                        </g>
                                    </g>
                                    <g class="highcharts-axis-labels" zIndex="7">
                                        <text x="112" y="46.71428571428573"
                                              style="font-family:Open Sans;font-size:10px;width:155px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="end" opacity="1">
                                            <tspan x="112">CPU/Load</tspan>
                                        </text>
                                        <text x="112" y="90.14285714285714"
                                              style="font-family:Open Sans;font-size:10px;width:155px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="end" opacity="1">
                                            <tspan x="112">DBConnect/Locks</tspan>
                                        </text>
                                        <text x="112" y="133.57142857142858"
                                              style="font-family:Open Sans;font-size:10px;width:155px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="end" opacity="1">
                                            <tspan x="112">DiskIO/TableSpace</tspan>
                                        </text>
                                        <text x="112" y="177"
                                              style="font-family:Open Sans;font-size:10px;width:155px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="end" opacity="1">
                                            <tspan x="112">Logwatch</tspan>
                                        </text>
                                        <text x="112" y="220.42857142857144"
                                              style="font-family:Open Sans;font-size:10px;width:155px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="end" opacity="1">
                                            <tspan x="112">Memory/Process</tspan>
                                        </text>
                                        <text x="112" y="263.85714285714283"
                                              style="font-family:Open Sans;font-size:10px;width:155px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="end" opacity="1">
                                            <tspan x="112">Standby/Slave</tspan>
                                        </text>
                                        <text x="112" y="307.2857142857143"
                                              style="font-family:Open Sans;font-size:10px;width:155px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="end" opacity="1">
                                            <tspan x="112">Trans/Undo</tspan>
                                        </text>
                                    </g>
                                    <g class="highcharts-axis-labels" zIndex="7">
                                        <text x="120" y="328"
                                              style="font-family:Open Sans;font-size:11px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="middle" opacity="1">
                                            <tspan x="120">0k</tspan>
                                        </text>
                                        <text x="186.83333333333334" y="328"
                                              style="font-family:Open Sans;font-size:11px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="middle" opacity="1">
                                            <tspan x="186.83333333333334">20k</tspan>
                                        </text>
                                        <text x="253.66666666666669" y="328"
                                              style="font-family:Open Sans;font-size:11px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="middle" opacity="1">
                                            <tspan x="253.66666666666669">40k</tspan>
                                        </text>
                                        <text x="320.5" y="328"
                                              style="font-family:Open Sans;font-size:11px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="middle" opacity="1">
                                            <tspan x="320.5">60k</tspan>
                                        </text>
                                        <text x="387.33333333333337" y="328"
                                              style="font-family:Open Sans;font-size:11px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="middle" opacity="1">
                                            <tspan x="387.33333333333337">80k</tspan>
                                        </text>
                                        <text x="454.1666666666667" y="328"
                                              style="font-family:Open Sans;font-size:11px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="middle" opacity="1">
                                            <tspan x="454.1666666666667">100k</tspan>
                                        </text>
                                        <text x="521" y="328"
                                              style="font-family:Open Sans;font-size:11px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                              text-anchor="middle" opacity="1">
                                            <tspan x="521">120k</tspan>
                                        </text>
                                    </g>
                                    <g class="highcharts-tooltip" zIndex="8"
                                       style="cursor:default;padding:0;white-space:nowrap;" visibility="hidden"
                                       transform="translate(303,15)" opacity="0">
                                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="94" height="44"
                                              fill-opacity="0.85" isShadow="true" stroke="black"
                                              stroke-opacity="0.049999999999999996" stroke-width="5"
                                              transform="translate(1, 1)"></rect>
                                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="94" height="44"
                                              fill-opacity="0.85" isShadow="true" stroke="black"
                                              stroke-opacity="0.09999999999999999" stroke-width="3"
                                              transform="translate(1, 1)"></rect>
                                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="94" height="44"
                                              fill-opacity="0.85" isShadow="true" stroke="black" stroke-opacity="0.15"
                                              stroke-width="1" transform="translate(1, 1)"></rect>
                                        <rect rx="3" ry="3" fill="rgb(255,255,255)" x="0.5" y="0.5" width="94"
                                              height="44" fill-opacity="0.85" stroke="#2091CF" stroke-width="1"
                                              anchorX="-11.5" anchorY="17"></rect>
                                        <text x="8" y="21"
                                              style="font-family:Open Sans;font-size:12px;color:#333333;fill:#333333;"
                                              zIndex="1">
                                            <tspan style="font-size: 10px" x="8">CPU/Load</tspan>
                                            <tspan style="fill:#2091CF" x="8" dy="16">总数</tspan>
                                            <tspan dx="0">:</tspan>
                                            <tspan style="font-weight:bold" dx="0">51,247</tspan>
                                        </text>
                                    </g>
                                    <text x="521" y="353"
                                          style="font-family:Open Sans;font-size:9px;cursor:pointer;color:#909090;fill:#909090;"
                                          text-anchor="end" zIndex="8">
                                        <tspan x="521">woqutech.com</tspan>
                                    </text>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="panel panel-default transparent report-home-oracle">
    <div class="panel-heading">
        <h3 class="panel-title">
            <i class="icon-bookmark"></i>Oracle性能指标排行 TOP10 <span class="label label-primary">2014-05-19 整体业务支撑库共处理29万次业务请求，完成1万笔事务提交</span>
        </h3>

        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_reportOraclePerformance">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_reportOraclePerformance" class="panel-collapse collapse in">
        <div class="panel-body">
            <div class="row">
                <div class="col-xs-4">
                    <table class="table table-bordered table-striped table-condensed">
                        <caption>每秒查询数</caption>
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>次数</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>rac11g : rac11g1</td>
                            <td>3.39</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col-xs-4">
                    <table class="table table-bordered table-striped table-condensed">
                        <caption>每秒事务数</caption>
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>次数</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>rac11g : rac11g1</td>
                            <td>0.12</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col-xs-4">
                    <table class="table table-bordered table-striped table-condensed">
                        <caption>每秒磁盘吞吐量</caption>
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>大小 / MB</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>rac11g : rac11g1</td>
                            <td>0.00</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-4">
                    <table class="table table-bordered table-striped table-condensed">
                        <caption>每秒IO数</caption>
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>次数</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>rac11g : rac11g1</td>
                            <td>0.38</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col-xs-4">
                    <table class="table table-bordered table-striped table-condensed">
                        <caption>每秒网络流量</caption>
                        </caption>
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>大小</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>rac11g : rac11g1</td>
                            <td>3.32 KB</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>

<div class="panel panel-default transparent report-home-mysql">
    <div class="panel-heading">
        <h3 class="panel-title">
            <i class="icon-bookmark"></i>MySQL性能指标排行 TOP10 <span class="label label-primary">2014-05-19 整体业务支撑库共处理839万次业务请求，完成59万笔事务提交，磁盘吞吐70GB</span>
        </h3>

        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_reportMySQLPerformance">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_reportMySQLPerformance" class="panel-collapse collapse in">
        <div class="panel-body">
            <div class="row">
                <div class="col-xs-4">
                    <table class="table table-bordered table-striped table-condensed">
                        <caption>每秒查询数</caption>
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>次数</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>QMonitor_MySQL</td>
                            <td>96.96</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.6</td>
                            <td>0.14</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.1</td>
                            <td>0.05</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.5</td>
                            <td>0.03</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col-xs-4">
                    <table class="table table-bordered table-striped table-condensed">
                        <caption>每秒事务数</caption>
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>次数</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>QMonitor_MySQL</td>
                            <td>6.94</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.1</td>
                            <td>0.00</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.5</td>
                            <td>0.00</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.6</td>
                            <td>0.00</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col-xs-4">
                    <table class="table table-bordered table-striped table-condensed">
                        <caption>每秒磁盘吞吐量</caption>
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>大小 / MB</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>QMonitor_MySQL</td>
                            <td>0.80</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.6</td>
                            <td>0.01</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.5</td>
                            <td>0.01</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.1</td>
                            <td>0.01</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-4">
                    <table class="table table-bordered table-striped table-condensed">
                        <caption>每秒IO数</caption>
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>次数</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>QMonitor_MySQL</td>
                            <td>28.77</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.6</td>
                            <td>0.68</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.5</td>
                            <td>0.52</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.1</td>
                            <td>0.04</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col-xs-4">
                    <table class="table table-bordered table-striped table-condensed">
                        <caption>每秒网络流量</caption>
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>大小</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>QMonitor_MySQL</td>
                            <td>4.39 KB</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.6</td>
                            <td>0.92 KB</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.5</td>
                            <td>0.67 KB</td>
                        </tr>
                        <tr>
                            <td>mysql_240_5.1</td>
                            <td>0.59 KB</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="panel panel-default transparent report-home-resource">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="icon-globe"></i>资源</h3>

        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_reportResource">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_reportResource" class="panel-collapse collapse in">
        <div class="panel-body">
            <div class="row">
                <div class="col-xs-6">
                    <div class="panel panel-default transparent">
                        <div class="panel-heading">
                            <h4 class="panel-title"><i class="icon-hand-right"></i>数据库信息</h4>
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered table-condensed">
                                <thead>
                                <tr>
                                    <th>类型</th>
                                    <th>实例数量</th>
                                    <th>主机数量</th>
                                    <th>CPU核数</th>
                                    <th>物理内存 / G</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Oracle</td>
                                    <td>8</td>
                                    <td>8</td>
                                    <td>56</td>
                                    <td>54</td>
                                </tr>
                                <tr>
                                    <td>MySQL</td>
                                    <td>4</td>
                                    <td>2</td>
                                    <td>6</td>
                                    <td>20</td>
                                </tr>
                                <tr class="info">
                                    <td>TOTAL</td>
                                    <td>12</td>
                                    <td>10</td>
                                    <td>62</td>
                                    <td>74</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="panel panel-default transparent">
                        <div class="panel-heading">
                            <h4 class="panel-title"><i class="icon-hand-right"></i>系统信息</h4>
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered table-condensed">
                                <thead>
                                <tr>
                                    <th>类型</th>
                                    <th>数量</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Linux</td>
                                    <td>12</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="panel panel-default transparent">
                        <div class="panel-heading">
                            <h4 class="panel-title"><i class="icon-hand-right"></i>数据库版本统计图</h4>
                        </div>
                        <div class="panel-body">
                            <div class="highcharts-container" id="highcharts-4"
                                 style="position: relative; overflow: hidden; width: 531px; height: 248px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: 'Open Sans'; font-size: 10px;">
                                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="531" height="248">
                                    <desc>Created with Highcharts 3.0.5</desc>
                                    <defs>
                                        <clipPath id="highcharts-5">
                                            <rect fill="none" x="0" y="0" width="511" height="223"></rect>
                                        </clipPath>
                                    </defs>
                                    <rect rx="5" ry="5" fill="#FFFFFF" x="0" y="0" width="531" height="248"></rect>
                                    <g class="highcharts-series-group" zIndex="3">
                                        <g class="highcharts-series highcharts-tracker" visibility="visible"
                                           zIndex="0.1" transform="translate(10,10) scale(1 1)" style="cursor:pointer;">
                                            <path fill="none"
                                                  d="M 289.4874019006036 8.816218724557029 C 284.4874019006036 8.816218724557029 282.41687319341764 16.54363167280296 279.5698962210369 27.168824476641106 L 276.7229192486562 37.79401728047925"
                                                  stroke="#2091CF" stroke-width="1" visibility="visible"></path>
                                            <path fill="none"
                                                  d="M 357.50037618418196 61.009580997038654 C 352.50037618418196 61.009580997038654 345.5717778853118 65.00889664010731 336.04495522436537 70.50795564932673 L 326.51813256341893 76.00701465854615"
                                                  stroke="#DA5430" stroke-width="1" visibility="visible"></path>
                                            <path fill="none"
                                                  d="M 316.51916035487193 213.98378046423608 C 311.51916035487193 213.98378046423608 307.5177917580952 207.05636757393347 302.01590993752745 197.53117484976744 L 296.5140281169597 188.0059821256014"
                                                  stroke="#68BC31" stroke-width="1" visibility="visible"></path>
                                            <path fill="none"
                                                  d="M 171.3194448422547 196.2113608323405 C 176.3194448422547 196.2113608323405 181.9751987820937 190.55340648717328 189.75186044937226 182.77371926256842 L 197.5285221166508 174.99403203796356"
                                                  stroke="#AF4E96" stroke-width="1" visibility="visible"></path>
                                            <path fill="none"
                                                  d="M 142.3103170114269 145.96536716204437 C 147.3103170114269 145.96536716204437 155.0381515106107 143.8964123647555 165.6639239469884 141.05159951848327 L 176.2896963833661 138.20678667221105"
                                                  stroke="#1aadce" stroke-width="1" visibility="visible"></path>
                                            <path fill="none"
                                                  d="M 142.31943756146006 88.0005877562811 C 147.31943756146006 88.0005877562811 155.04662059278434 90.07197434511818 165.67149726085523 92.92013090476914 L 176.29637392892613 95.7682874644201"
                                                  stroke="#492970" stroke-width="1" visibility="visible"></path>
                                            <path fill="none"
                                                  d="M 171.30476776795234 37.80331325293945 C 176.30476776795234 37.80331325293945 181.96157007024146 43.46021944915806 189.739673235889 51.23846546895865 L 197.51777640153654 59.01671148875924"
                                                  stroke="#f28f43" stroke-width="1" visibility="visible"></path>
                                            <path fill="none"
                                                  d="M 221.50257460814203 8.81890497576007 C 226.50257460814203 8.81890497576007 228.57381927898908 16.546126048920065 231.4217807014037 27.17105502451506 L 234.2697421238183 37.79598400011005"
                                                  stroke="#77a1e5" stroke-width="1" visibility="visible"></path>
                                            <path fill="#2091CF"
                                                  d="M 255.48329879729698 35.00000170079382 A 82 82 0 0 1 296.44300163965613 45.953039356105364 L 255.5 117 A 0 0 0 0 0 255.5 117 Z"
                                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                                  transform="translate(0,0)"></path>
                                            <path fill="#DA5430"
                                                  d="M 296.5140281169597 45.994017874398594 A 82 82 0 0 1 337.4999590000034 116.91800001366668 L 255.5 117 A 0 0 0 0 0 255.5 117 Z"
                                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                                  transform="translate(0,0)"></path>
                                            <path fill="#68BC31"
                                                  d="M 337.5 117 A 82 82 0 0 1 214.59911178452302 188.07121318216707 L 255.5 117 A 0 0 0 0 0 255.5 117 Z"
                                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                                  transform="translate(0,0)"></path>
                                            <path fill="#AF4E96"
                                                  d="M 214.52806103362846 188.03027676516479 A 82 82 0 0 1 184.52670095423935 158.07055907290552 L 255.5 117 A 0 0 0 0 0 255.5 117 Z"
                                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                                  transform="translate(0,0)"></path>
                                            <path fill="#1aadce"
                                                  d="M 184.48566588865805 157.99956525041083 A 82 82 0 0 1 173.50001440076903 117.04859759151817 L 255.5 117 A 0 0 0 0 0 255.5 117 Z"
                                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                                  transform="translate(0,0)"></path>
                                            <path fill="#492970"
                                                  d="M 173.50000680317504 116.96659759528684 A 82 82 0 0 1 184.43711870688531 76.08463733118484 L 255.5 117 A 0 0 0 0 0 255.5 117 Z"
                                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                                  transform="translate(0,0)"></path>
                                            <path fill="#f28f43"
                                                  d="M 184.47806959417252 76.01359491941517 A 82 82 0 0 1 214.44389713814826 46.01833745398008 L 255.5 117 A 0 0 0 0 0 255.5 117 Z"
                                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                                  transform="translate(0,0)"></path>
                                            <path fill="#77a1e5"
                                                  d="M 214.51489931691376 45.97731684878924 A 82 82 0 0 1 255.38610364507812 35.000079099914274 L 255.5 117 A 0 0 0 0 0 255.5 117 Z"
                                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                                  transform="translate(0,0)"></path>
                                        </g>
                                        <g class="highcharts-markers" visibility="visible" zIndex="0.1"
                                           transform="translate(10,10) scale(1 1)"></g>
                                    </g>
                                    <g class="highcharts-data-labels highcharts-tracker" visibility="visible" zIndex="6"
                                       transform="translate(10,10) scale(1 1)" style="cursor:pointer;">
                                        <g zIndex="1" style="cursor:default;" transform="translate(294,-1)"
                                           visibility="visible">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">8.33%</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(363,51)"
                                           visibility="visible">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">16.67%</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(322,204)"
                                           visibility="visible">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">33.33%</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(133,186)"
                                           visibility="visible">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">8.33%</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(104,136)"
                                           visibility="visible">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">8.33%</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(104,78)"
                                           visibility="visible">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">8.33%</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(133,28)"
                                           visibility="visible">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">8.33%</tspan>
                                            </text>
                                        </g>
                                        <g zIndex="1" style="cursor:default;" transform="translate(184,-1)"
                                           visibility="visible">
                                            <text x="3" y="15"
                                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                                  zIndex="1">
                                                <tspan x="3">8.33%</tspan>
                                            </text>
                                        </g>
                                    </g>
                                    <g class="highcharts-legend" zIndex="7" transform="translate(360,10)">
                                        <g zIndex="1">
                                            <g>
                                                <g class="highcharts-legend-item" zIndex="1" transform="translate(8,3)">
                                                    <text x="21" y="15"
                                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                                          text-anchor="start" zIndex="2">
                                                        <tspan x="21">Oracle unknown version</tspan>
                                                    </text>
                                                    <rect rx="2" ry="2" fill="#2091CF" x="0" y="4" width="16"
                                                          height="12" zIndex="3"></rect>
                                                </g>
                                                <g class="highcharts-legend-item" zIndex="1"
                                                   transform="translate(8,15)">
                                                    <text x="21" y="15"
                                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                                          text-anchor="start" zIndex="2">
                                                        <tspan x="21">Oracle 10.2.0.1.0</tspan>
                                                    </text>
                                                    <rect rx="2" ry="2" fill="#DA5430" x="0" y="4" width="16"
                                                          height="12" zIndex="3"></rect>
                                                </g>
                                                <g class="highcharts-legend-item" zIndex="1"
                                                   transform="translate(8,27)">
                                                    <text x="21" y="15"
                                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                                          text-anchor="start" zIndex="2">
                                                        <tspan x="21">Oracle 11.2.0.3.0 RAC</tspan>
                                                    </text>
                                                    <rect rx="2" ry="2" fill="#68BC31" x="0" y="4" width="16"
                                                          height="12" zIndex="3"></rect>
                                                </g>
                                                <g class="highcharts-legend-item" zIndex="1"
                                                   transform="translate(8,39)">
                                                    <text x="21" y="15"
                                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                                          text-anchor="start" zIndex="2">
                                                        <tspan x="21">MySQL 5.1.67-log</tspan>
                                                    </text>
                                                    <rect rx="2" ry="2" fill="#AF4E96" x="0" y="4" width="16"
                                                          height="12" zIndex="3"></rect>
                                                </g>
                                                <g class="highcharts-legend-item" zIndex="1"
                                                   transform="translate(8,51)">
                                                    <text x="21" y="15"
                                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                                          text-anchor="start" zIndex="2">
                                                        <tspan x="21">MySQL 5.5.25a-log</tspan>
                                                    </text>
                                                    <rect rx="2" ry="2" fill="#1aadce" x="0" y="4" width="16"
                                                          height="12" zIndex="3"></rect>
                                                </g>
                                                <g class="highcharts-legend-item" zIndex="1"
                                                   transform="translate(8,63)">
                                                    <text x="21" y="15"
                                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                                          text-anchor="start" zIndex="2">
                                                        <tspan x="21">MySQL 5.5.29-log</tspan>
                                                    </text>
                                                    <rect rx="2" ry="2" fill="#492970" x="0" y="4" width="16"
                                                          height="12" zIndex="3"></rect>
                                                </g>
                                                <g class="highcharts-legend-item" zIndex="1"
                                                   transform="translate(8,75)">
                                                    <text x="21" y="15"
                                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                                          text-anchor="start" zIndex="2">
                                                        <tspan x="21">MySQL 5.6.10-log</tspan>
                                                    </text>
                                                    <rect rx="2" ry="2" fill="#f28f43" x="0" y="4" width="16"
                                                          height="12" zIndex="3"></rect>
                                                </g>
                                                <g class="highcharts-legend-item" zIndex="1"
                                                   transform="translate(8,87)">
                                                    <text x="21" y="15"
                                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                                          text-anchor="start" zIndex="2">
                                                        <tspan x="21">Oracle 9.2.0.8.0</tspan>
                                                    </text>
                                                    <rect rx="2" ry="2" fill="#77a1e5" x="0" y="4" width="16"
                                                          height="12" zIndex="3"></rect>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                    <g class="highcharts-tooltip" zIndex="8"
                                       style="cursor:default;padding:0;white-space:nowrap;" visibility="hidden"
                                       transform="translate(36,15)" opacity="0">
                                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="142" height="44"
                                              fill-opacity="0.85" isShadow="true" stroke="black"
                                              stroke-opacity="0.049999999999999996" stroke-width="5"
                                              transform="translate(1, 1)"></rect>
                                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="142" height="44"
                                              fill-opacity="0.85" isShadow="true" stroke="black"
                                              stroke-opacity="0.09999999999999999" stroke-width="3"
                                              transform="translate(1, 1)"></rect>
                                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="142" height="44"
                                              fill-opacity="0.85" isShadow="true" stroke="black" stroke-opacity="0.15"
                                              stroke-width="1" transform="translate(1, 1)"></rect>
                                        <rect rx="3" ry="3" fill="rgb(255,255,255)" x="0.5" y="0.5" width="142"
                                              height="44" fill-opacity="0.85" stroke="#68BC31" stroke-width="1"
                                              anchorX="-11.017106742650196" anchorY="18.489505890433662"></rect>
                                        <text x="8" y="21"
                                              style="font-family:Open Sans;font-size:12px;color:#333333;fill:#333333;"
                                              zIndex="1">
                                            <tspan style="font-size: 10px" x="8">Oracle 11.2.0.3.0 RAC</tspan>
                                            <tspan style="fill:" x="8" dy="16">总数</tspan>
                                            <tspan dx="0">:</tspan>
                                            <tspan style="font-weight:bold" dx="0">4</tspan>
                                        </text>
                                    </g>
                                    <text x="521" y="243"
                                          style="font-family:Open Sans;font-size:9px;cursor:pointer;color:#909090;fill:#909090;"
                                          text-anchor="end" zIndex="8">
                                        <tspan x="521">woqutech.com</tspan>
                                    </text>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="panel panel-default transparent report-home-runtime">
<div class="panel-heading">
    <h3 class="panel-title"><i class="icon-time"></i>运行时间 TOP10</h3>

    <div class="panel-toolbar">
        <a data-toggle="collapse" href="#J_reportRuntime">
            <i class="icon-chevron-up"></i>
        </a>
    </div>
</div>
<div id="J_reportRuntime" class="panel-collapse collapse in">
    <div class="panel-body">
        <div class="row">
            <div class="col-xs-6">
                <div class="panel panel-default transparent">
                    <div class="panel-heading">
                        <h4 class="panel-title"><i class="icon-hand-right"></i>数据库在线排行</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-bordered table-striped table-condensed dbOnlineTop">
                            <thead>
                            <tr>
                                <th>名称</th>
                                <th>时长</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <span class="badge identifying-mysql">M</span>MySQL
                                    mysql_240_5.1
                                </td>
                                <td data-realValue="5463697.0">
                                    63 天 5 小时 41 分 37 秒
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="badge identifying-mysql">M</span>MySQL
                                    mysql_240_5.5
                                </td>
                                <td data-realValue="5463683.0">
                                    63 天 5 小时 41 分 23 秒
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="badge identifying-mysql">M</span>MySQL
                                    mysql_240_5.6
                                </td>
                                <td data-realValue="5463673.0">
                                    63 天 5 小时 41 分 13 秒
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="badge identifying-mysql">M</span>MySQL
                                    QMonitor_MySQL
                                </td>
                                <td data-realValue="4168281.0">
                                    48 天 5 小时 51 分 21 秒
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="badge identifying-oracle">O</span>Oracle
                                    orcl : orcl
                                </td>
                                <td data-realValue="3883695.0">
                                    44 天 22 小时 48 分 15 秒
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="badge identifying-oracle">O</span>Oracle
                                    qm : qm2
                                </td>
                                <td data-realValue="1150909.0">
                                    13 天 7 小时 41 分 49 秒
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="badge identifying-oracle">O</span>Oracle
                                    qm : qm1
                                </td>
                                <td data-realValue="1130060.0">
                                    13 天 1 小时 54 分 20 秒
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="badge identifying-oracle">O</span>Oracle
                                    JES : jes
                                </td>
                                <td data-realValue="455199.0">
                                    5 天 6 小时 26 分 39 秒
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="badge identifying-oracle">O</span>Oracle
                                    rac11g : rac11g1
                                </td>
                                <td data-realValue="252861.0">
                                    2 天 22 小时 14 分 21 秒
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="badge identifying-oracle">O</span>Oracle
                                    rac11g : rac11g2
                                </td>
                                <td data-realValue="252856.0">
                                    2 天 22 小时 14 分 16 秒
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-xs-6">
                <div class="panel panel-default transparent">
                    <div class="panel-heading">
                        <h4 class="panel-title"><i class="icon-hand-right"></i>主机在线排行</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table table-bordered table-striped table-condensed">
                            <thead>
                            <tr>
                                <th>名称</th>
                                <th>时长</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>primary</td>
                                <td data-realValue="209.0">
                                    3 分 29 秒
                                </td>
                            </tr>
                            <tr>
                                <td>rac1</td>
                                <td data-realValue="958.0">
                                    15 分 58 秒
                                </td>
                            </tr>
                            <tr>
                                <td>sto1</td>
                                <td data-realValue="10728.0">
                                    2 小时 58 分 48 秒
                                </td>
                            </tr>
                            <tr>
                                <td>vm-rac1-11g</td>
                                <td data-realValue="18110.0">
                                    5 小时 1 分 50 秒
                                </td>
                            </tr>
                            <tr>
                                <td>vm-rac2-11g</td>
                                <td data-realValue="18566.0">
                                    5 小时 9 分 26 秒
                                </td>
                            </tr>
                            <tr>
                                <td>woquhost2</td>
                                <td data-realValue="25162.0">
                                    6 小时 59 分 22 秒
                                </td>
                            </tr>
                            <tr>
                                <td>standby</td>
                                <td data-realValue="26522.0">
                                    7 小时 22 分 2 秒
                                </td>
                            </tr>
                            <tr>
                                <td>rac2</td>
                                <td data-realValue="33709.0">
                                    9 小时 21 分 49 秒
                                </td>
                            </tr>
                            <tr>
                                <td>sto2</td>
                                <td data-realValue="94508.0">
                                    1 天 2 小时 15 分 8 秒
                                </td>
                            </tr>
                            <tr>
                                <td>multi-mysql</td>
                                <td data-realValue="5125517.0">
                                    59 天 7 小时 45 分 17 秒
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

</div>
<!--/main content -->
</div>
</div>
<!--/container -->
<jsp:include page="../foot.jsp"/>
<script src="http://woqutech.3322.org:8080/assets/js/qm.report-home.js?v=4.1.0.3.20140118160000"></script>
</body>
</html>

