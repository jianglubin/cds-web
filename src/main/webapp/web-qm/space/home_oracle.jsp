<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 15:57
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
                <li class='navnew-item '>
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/oracle.jsp" title="总览">总览</a>
                </li>
                <li class='navnew-item open '>
                    <i class="icon-angle-up toggle" title="收起"></i>
                    <a class="item-link" href="" title="JES">JES</a>
                    <ul class="subnav">
                        <li class=" active ignore " data-active="">
                            <a href="<%=request.getContextPath() %>/web-qm/database/instance_oracle.jsp" data-rac="0" title="主|JES|192.168.1.222">
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
                        <li class="" data-active="">
                            <a href="" data-rac="0" title="主|orcl|192.168.1.235">
                                <span class="badge identifying-master">主</span>
                                orcl
                            </a>
                        </li>
                        <li class="" data-active="">
                            <a href="" data-rac="0" title="备|dg|192.168.1.236">
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
                        <li class="" data-active="">
                            <a href="" data-rac="1" title="RAC|主|qm|192.168.1.141,192.168.1.142">
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
                        <li class="" data-active="">
                            <a href="" data-rac="1" title="RAC|主|rac11g|192.168.1.191,192.168.1.192">
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


<div class="row tabs-wrap">
    <div class="col-xs-10">
        <ul class="nav nav-tabs">
            <li>
                <a href="<%=request.getContextPath() %>/web-qm/database/instance_oracle.jsp">数据库信息</a>
            </li>
            <li>
                <a href="<%=request.getContextPath() %>/web-qm/performance/ora/top-sql.jsp">TOP SQL</a>
            </li>
            <li class="active">
                <a href="<%=request.getContextPath() %>/web-qm/space/home_oracle.jsp">空间</a>
            </li>
        </ul>
    </div>

    <div class="col-xs-2">
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

<div class="panel panel-default transparent space-archiving">
<div class="panel-heading">
    <h3 class="panel-title"><i class="icon-folder-open-alt"></i>归档</h3>

    <div class="panel-toolbar">
        <small class="c-grey">[采集频率:每天1点开始采集]</small>
        <a data-toggle="collapse" href="#J_archiving">
            <i class="icon-chevron-up"></i>
        </a>
    </div>
</div>
<div id="J_archiving" class="panel-collapse collapse in">
<div class="panel-body">
<div class="row">
<div class="col-xs-9">
<div class="panel panel-default transparent">
<div class="panel-heading">
    <h4 class="panel-title"><i class="icon-hand-right"></i>概览 <span class="label label-primary">最近两周 2014年05月06日 ~ 2014年05月20日</span>
    </h4>
</div>
<div class="panel-body">

<div class="highcharts-container" id="highcharts-0"
     style="position: relative; overflow: hidden; width: 812px; height: 218px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: 'Open Sans'; font-size: 10px;">
<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="812" height="218">
<desc>Created with Highcharts 3.0.5</desc>
<defs>
    <clipPath id="highcharts-1">
        <rect fill="none" x="0" y="0" width="756" height="181"></rect>
    </clipPath>
</defs>
<rect rx="5" ry="5" fill="#FFFFFF" x="0" y="0" width="812" height="218"></rect>
<g class="highcharts-grid" zIndex="1"></g>
<g class="highcharts-grid" zIndex="1">
    <path fill="none" d="M 46 101.5 L 802 101.5" stroke="#cfcfcf"
          stroke-width="1" zIndex="1" opacity="1"></path>
</g>
<g class="highcharts-axis" zIndex="2">
    <path fill="none" d="M 146.5 191 L 146.5 195" stroke="#cfcfcf"
          stroke-width="1" opacity="1"></path>
    <path fill="none" d="M 247.5 191 L 247.5 195" stroke="#cfcfcf"
          stroke-width="1" opacity="1"></path>
    <path fill="none" d="M 347.5 191 L 347.5 195" stroke="#cfcfcf"
          stroke-width="1" opacity="1"></path>
    <path fill="none" d="M 448.5 191 L 448.5 195" stroke="#cfcfcf"
          stroke-width="1" opacity="1"></path>
    <path fill="none" d="M 549.5 191 L 549.5 195" stroke="#cfcfcf"
          stroke-width="1" opacity="1"></path>
    <path fill="none" d="M 650.5 191 L 650.5 195" stroke="#cfcfcf"
          stroke-width="1" opacity="1"></path>
    <path fill="none" d="M 751.5 191 L 751.5 195" stroke="#cfcfcf"
          stroke-width="1" opacity="1"></path>
    <path fill="none" d="M 45.5 191 L 45.5 195" stroke="#cfcfcf"
          stroke-width="1" opacity="1"></path>
</g>
<g class="highcharts-axis" zIndex="2">
    <text x="22" y="100.5"
          style="font-family:Open Sans;font-size:10px;color:#4d759e;font-weight:bold;fill:#4d759e;"
          zIndex="7" text-anchor="middle"
          transform="translate(0,0) rotate(270 22 100.5)" visibility="visible">
        <tspan x="22">Size/MB</tspan>
    </text>
</g>
<g class="highcharts-series-group" zIndex="3">
    <g class="highcharts-series" visibility="visible" zIndex="0.1"
       transform="translate(46,10) scale(1 1)" clip-path="url(#highcharts-1)">
        <path fill="none"
              d="M 0 90.5 C 0 90.5 30.24 90.5 50.4 90.5 C 70.55999999999999 90.5 80.64 90.5 100.8 90.5 C 120.96 90.5 131.04 90.5 151.2 90.5 C 272.15999999999997 90.5 332.64 90.5 453.59999999999997 90.5 C 473.75999999999993 90.5 483.84 90.5 503.99999999999994 90.5 C 524.16 90.5 534.24 90.5 554.4 90.5 C 574.56 90.5 584.64 90.5 604.8 90.5 C 624.9599999999999 90.5 635.04 90.5 655.1999999999999 90.5 C 675.3599999999999 90.5 705.5999999999999 90.5 705.5999999999999 90.5"
              stroke="#a6c96a" stroke-width="1" zIndex="1"
              stroke-dasharray="3,1,1,1,1,1"></path>
    </g>
    <g class="highcharts-markers" visibility="visible" zIndex="0.1"
       transform="translate(46,10) scale(1 1)" clip-path="none"></g>
    <g class="highcharts-series highcharts-tracker" visibility="visible"
       zIndex="0.1" transform="translate(46,10) scale(1 1)"
       style="cursor:pointer;" clip-path="url(#highcharts-1)">
        <rect fill="#2091CF" x="12.5" y="91.5" width="25" height="0"
              stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
        <rect fill="#2091CF" x="63.5" y="91.5" width="25" height="0"
              stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
        <rect fill="#2091CF" x="113.5" y="91.5" width="25" height="0"
              stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
        <rect fill="#2091CF" x="163.5" y="91.5" width="25" height="0"
              stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
        <rect fill="#2091CF" x="466.5" y="91.5" width="25" height="0"
              stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
        <rect fill="#2091CF" x="516.5" y="91.5" width="25" height="0"
              stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
        <rect fill="#2091CF" x="567.5" y="91.5" width="25" height="0"
              stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
        <rect fill="#2091CF" x="617.5" y="91.5" width="25" height="0"
              stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
        <rect fill="#2091CF" x="667.5" y="91.5" width="25" height="0"
              stroke="#FFFFFF" stroke-width="1" rx="0" ry="0"></rect>
        <rect fill="#C0C0C0" x="718.5" y="91.5" width="25" height="0"
              stroke="#000000" stroke-width="1" rx="0" ry="0"></rect>
    </g>
    <g class="highcharts-markers" visibility="visible" zIndex="0.1"
       transform="translate(46,10) scale(1 1)"></g>
</g>
<g class="highcharts-data-labels highcharts-tracker" visibility="visible"
   zIndex="6" transform="translate(46,10) scale(1 1)" style="cursor:pointer;">
    <g zIndex="1" style="cursor:default;" transform="translate(10,74)"
       visibility="inherit">
        <text x="3" y="15"
              style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
              zIndex="1">
            <tspan x="3">0.00</tspan>
        </text>
    </g>
    <g zIndex="1" style="cursor:default;" transform="translate(61,74)"
       visibility="inherit">
        <text x="3" y="15"
              style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
              zIndex="1">
            <tspan x="3">0.00</tspan>
        </text>
    </g>
    <g zIndex="1" style="cursor:default;" transform="translate(111,74)"
       visibility="inherit">
        <text x="3" y="15"
              style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
              zIndex="1">
            <tspan x="3">0.00</tspan>
        </text>
    </g>
    <g zIndex="1" style="cursor:default;" transform="translate(161,74)"
       visibility="inherit">
        <text x="3" y="15"
              style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
              zIndex="1">
            <tspan x="3">0.00</tspan>
        </text>
    </g>
    <g zIndex="1" style="cursor:default;" transform="translate(464,74)"
       visibility="inherit">
        <text x="3" y="15"
              style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
              zIndex="1">
            <tspan x="3">0.00</tspan>
        </text>
    </g>
    <g zIndex="1" style="cursor:default;" transform="translate(514,74)"
       visibility="inherit">
        <text x="3" y="15"
              style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
              zIndex="1">
            <tspan x="3">0.00</tspan>
        </text>
    </g>
    <g zIndex="1" style="cursor:default;" transform="translate(565,74)"
       visibility="inherit">
        <text x="3" y="15"
              style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
              zIndex="1">
            <tspan x="3">0.00</tspan>
        </text>
    </g>
    <g zIndex="1" style="cursor:default;" transform="translate(615,74)"
       visibility="inherit">
        <text x="3" y="15"
              style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
              zIndex="1">
            <tspan x="3">0.00</tspan>
        </text>
    </g>
    <g zIndex="1" style="cursor:default;" transform="translate(665,74)"
       visibility="inherit">
        <text x="3" y="15"
              style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
              zIndex="1">
            <tspan x="3">0.00</tspan>
        </text>
    </g>
    <g zIndex="1" style="cursor:default;" transform="translate(716,74)"
       visibility="inherit">
        <text x="3" y="15"
              style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
              zIndex="1">
            <tspan x="3">0.00</tspan>
        </text>
    </g>
</g>
<g class="highcharts-axis-labels" zIndex="7">
    <text x="46" y="206"
          style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
          text-anchor="middle" opacity="1">
        <tspan x="46">05月06日</tspan>
    </text>
    <text x="146.8" y="206"
          style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
          text-anchor="middle" opacity="1">
        <tspan x="146.8">05月08日</tspan>
    </text>
    <text x="247.6" y="206"
          style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
          text-anchor="middle" opacity="1">
        <tspan x="247.6">05月10日</tspan>
    </text>
    <text x="348.4" y="206"
          style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
          text-anchor="middle" opacity="1">
        <tspan x="348.4">05月12日</tspan>
    </text>
    <text x="449.2" y="206"
          style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
          text-anchor="middle" opacity="1">
        <tspan x="449.2">05月14日</tspan>
    </text>
    <text x="550" y="206"
          style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
          text-anchor="middle" opacity="1">
        <tspan x="550">05月16日</tspan>
    </text>
    <text x="650.8" y="206"
          style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
          text-anchor="middle" opacity="1">
        <tspan x="650.8">05月18日</tspan>
    </text>
    <text x="751.5999999999999" y="206"
          style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
          text-anchor="middle" opacity="1">
        <tspan x="751.5999999999999">05月20日</tspan>
    </text>
</g>
<g class="highcharts-axis-labels" zIndex="7">
    <text x="38" y="106.5"
          style="font-family:Open Sans;font-size:11px;width:248px;color:#666;cursor:default;line-height:14px;fill:#666;"
          text-anchor="end" opacity="1">
        <tspan x="38">0</tspan>
    </text>
</g>
<g class="highcharts-tooltip" zIndex="8"
   style="cursor:default;padding:0;white-space:nowrap;" visibility="hidden"
   transform="translate(0,0)">
    <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="16" height="16"
          fill-opacity="0.85" isShadow="true" stroke="black"
          stroke-opacity="0.049999999999999996" stroke-width="5"
          transform="translate(1, 1)"></rect>
    <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="16" height="16"
          fill-opacity="0.85" isShadow="true" stroke="black"
          stroke-opacity="0.09999999999999999" stroke-width="3"
          transform="translate(1, 1)"></rect>
    <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="16" height="16"
          fill-opacity="0.85" isShadow="true" stroke="black"
          stroke-opacity="0.15" stroke-width="1"
          transform="translate(1, 1)"></rect>
    <rect rx="3" ry="3" fill="rgb(255,255,255)" x="0.5" y="0.5" width="16"
          height="16" fill-opacity="0.85"></rect>
    <text x="8" y="21"
          style="font-family:Open Sans;font-size:12px;color:#333333;fill:#333333;"
          zIndex="1"></text>
</g>
<text x="802" y="213"
      style="font-family:Open Sans;font-size:9px;cursor:pointer;color:#909090;fill:#909090;"
      text-anchor="end" zIndex="8">
    <tspan x="802">woqutech.com</tspan>
</text>
</svg>
</div>
</div>
</div>
</div>

<div class="col-xs-3">
    <div class="panel panel-default transparent">
        <div class="panel-heading">
            <h4 class="panel-title"><i class="icon-hand-right"></i>详情 <span class="label label-primary"
                                                                            id="ID-fmtReplaceDay"
                                                                            data-fmtShowDay="2014年05月20日">当天 2014年05月20日</span>
            </h4>
        </div>
        <div class="panel-body">
            <div class="highcharts-container" id="highcharts-6"
                 style="position: relative; overflow: hidden; width: 249px; height: 218px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: 'Open Sans'; font-size: 10px;">
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="249" height="218">
                    <desc>Created with Highcharts 3.0.5</desc>
                    <defs>
                        <clipPath id="highcharts-7">
                            <rect fill="none" x="0" y="0" width="193" height="181"></rect>
                        </clipPath>
                        <linearGradient x1="0" y1="0" x2="0" y2="1" id="highcharts-8">
                            <stop offset="0" stop-color="#2091CF" stop-opacity="1"></stop>
                            <stop offset="1" stop-color="rgb(32,145,207)" stop-opacity="0"></stop>
                        </linearGradient>
                    </defs>
                    <rect rx="5" ry="5" fill="#FFFFFF" x="0" y="0" width="249" height="218"></rect>
                    <g class="highcharts-grid" zIndex="1"></g>
                    <g class="highcharts-grid" zIndex="1">
                        <path fill="none" d="M 46 101.5 L 239 101.5" stroke="#cfcfcf"
                              stroke-width="1" zIndex="1" opacity="1"></path>
                    </g>
                    <g class="highcharts-axis" zIndex="2">
                        <path fill="none" d="M 148.5 191 L 148.5 195" stroke="#cfcfcf"
                              stroke-width="1" opacity="1"></path>
                        <path fill="none" d="M 45.5 191 L 45.5 195" stroke="#cfcfcf"
                              stroke-width="1" opacity="1"></path>
                    </g>
                    <g class="highcharts-axis" zIndex="2">
                        <text x="22" y="100.5"
                              style="font-family:Open Sans;font-size:10px;color:#4d759e;font-weight:bold;fill:#4d759e;"
                              zIndex="7" text-anchor="middle"
                              transform="translate(0,0) rotate(270 22 100.5)" visibility="visible">
                            <tspan x="22">Size/MB</tspan>
                        </text>
                    </g>
                    <g class="highcharts-series-group" zIndex="3">
                        <g class="highcharts-series" visibility="visible" zIndex="0.1"
                           transform="translate(46,10) scale(1 1)" clip-path="url(#highcharts-7)">
                            <path fill="url(#highcharts-8)"
                                  d="M 0 90.5 C 0 90.5 7.720000000000001 90.5 12.866666666666667 90.5 C 18.013333333333332 90.5 20.586666666666666 90.5 25.733333333333334 90.5 C 30.880000000000003 90.5 33.45333333333333 90.5 38.6 90.5 C 43.74666666666667 90.5 46.32000000000001 90.5 51.46666666666667 90.5 C 56.613333333333344 90.5 59.18666666666668 90.5 64.33333333333334 90.5 C 69.48 90.5 72.05333333333334 90.5 77.2 90.5 C 82.34666666666666 90.5 84.92 90.5 90.06666666666668 90.5 C 95.21333333333334 90.5 97.78666666666668 90.5 102.93333333333334 90.5 C 108.08000000000001 90.5 110.65333333333334 90.5 115.80000000000001 90.5 C 120.94666666666667 90.5 123.52000000000002 90.5 128.66666666666669 90.5 C 133.81333333333333 90.5 136.38666666666668 90.5 141.53333333333333 90.5 C 146.68 90.5 149.25333333333333 90.5 154.4 90.5 C 159.54666666666668 90.5 162.12000000000003 90.5 167.26666666666668 90.5 C 172.41333333333336 90.5 174.98666666666668 90.5 180.13333333333335 90.5 C 185.28000000000003 90.5 193 90.5 193 90.5 L 193 90.5 L 0 90.5"
                                  zIndex="0"></path>
                            <path fill="none"
                                  d="M 0 90.5 C 0 90.5 7.720000000000001 90.5 12.866666666666667 90.5 C 18.013333333333332 90.5 20.586666666666666 90.5 25.733333333333334 90.5 C 30.880000000000003 90.5 33.45333333333333 90.5 38.6 90.5 C 43.74666666666667 90.5 46.32000000000001 90.5 51.46666666666667 90.5 C 56.613333333333344 90.5 59.18666666666668 90.5 64.33333333333334 90.5 C 69.48 90.5 72.05333333333334 90.5 77.2 90.5 C 82.34666666666666 90.5 84.92 90.5 90.06666666666668 90.5 C 95.21333333333334 90.5 97.78666666666668 90.5 102.93333333333334 90.5 C 108.08000000000001 90.5 110.65333333333334 90.5 115.80000000000001 90.5 C 120.94666666666667 90.5 123.52000000000002 90.5 128.66666666666669 90.5 C 133.81333333333333 90.5 136.38666666666668 90.5 141.53333333333333 90.5 C 146.68 90.5 149.25333333333333 90.5 154.4 90.5 C 159.54666666666668 90.5 162.12000000000003 90.5 167.26666666666668 90.5 C 172.41333333333336 90.5 174.98666666666668 90.5 180.13333333333335 90.5 C 185.28000000000003 90.5 193 90.5 193 90.5"
                                  stroke="#2091CF" stroke-width="1" zIndex="1"></path>
                            <path fill="none"
                                  d="M -10 90.5 L 0 90.5 C 0 90.5 7.720000000000001 90.5 12.866666666666667 90.5 C 18.013333333333332 90.5 20.586666666666666 90.5 25.733333333333334 90.5 C 30.880000000000003 90.5 33.45333333333333 90.5 38.6 90.5 C 43.74666666666667 90.5 46.32000000000001 90.5 51.46666666666667 90.5 C 56.613333333333344 90.5 59.18666666666668 90.5 64.33333333333334 90.5 C 69.48 90.5 72.05333333333334 90.5 77.2 90.5 C 82.34666666666666 90.5 84.92 90.5 90.06666666666668 90.5 C 95.21333333333334 90.5 97.78666666666668 90.5 102.93333333333334 90.5 C 108.08000000000001 90.5 110.65333333333334 90.5 115.80000000000001 90.5 C 120.94666666666667 90.5 123.52000000000002 90.5 128.66666666666669 90.5 C 133.81333333333333 90.5 136.38666666666668 90.5 141.53333333333333 90.5 C 146.68 90.5 149.25333333333333 90.5 154.4 90.5 C 159.54666666666668 90.5 162.12000000000003 90.5 167.26666666666668 90.5 C 172.41333333333336 90.5 174.98666666666668 90.5 180.13333333333335 90.5 C 185.28000000000003 90.5 193 90.5 193 90.5 L 203 90.5"
                                  stroke-linejoin="round" visibility="visible"
                                  stroke-opacity="0.0001" stroke="rgb(192,192,192)"
                                  stroke-width="21" zIndex="2" class=" highcharts-tracker"
                                  style=""></path>
                        </g>
                        <g class="highcharts-markers highcharts-tracker" visibility="visible"
                           zIndex="0.1" transform="translate(46,10) scale(1 1)" style=""
                           clip-path="none"></g>
                    </g>
                    <g class="highcharts-axis-labels" zIndex="7">
                        <text x="46" y="206"
                              style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                              text-anchor="middle" opacity="1">
                            <tspan x="46">20. May</tspan>
                        </text>
                        <text x="148.93333333333334" y="206"
                              style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                              text-anchor="middle" opacity="1">
                            <tspan x="148.93333333333334">08:00</tspan>
                        </text>
                    </g>
                    <g class="highcharts-axis-labels" zIndex="7">
                        <text x="38" y="106.5"
                              style="font-family:Open Sans;font-size:11px;width:62px;color:#666;cursor:default;line-height:14px;fill:#666;"
                              text-anchor="end" opacity="1">
                            <tspan x="38">0</tspan>
                        </text>
                    </g>
                    <g class="highcharts-tooltip" zIndex="8"
                       style="cursor:default;padding:0;white-space:nowrap;" visibility="hidden"
                       transform="translate(0,0)">
                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="16" height="16"
                              fill-opacity="0.85" isShadow="true" stroke="black"
                              stroke-opacity="0.049999999999999996" stroke-width="5"
                              transform="translate(1, 1)"></rect>
                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="16" height="16"
                              fill-opacity="0.85" isShadow="true" stroke="black"
                              stroke-opacity="0.09999999999999999" stroke-width="3"
                              transform="translate(1, 1)"></rect>
                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="16" height="16"
                              fill-opacity="0.85" isShadow="true" stroke="black"
                              stroke-opacity="0.15" stroke-width="1"
                              transform="translate(1, 1)"></rect>
                        <rect rx="3" ry="3" fill="rgb(255,255,255)" x="0.5" y="0.5" width="16"
                              height="16" fill-opacity="0.85"></rect>
                        <text x="8" y="21"
                              style="font-family:Open Sans;font-size:12px;color:#333333;fill:#333333;"
                              zIndex="1"></text>
                    </g>
                    <text x="239" y="213"
                          style="font-family:Open Sans;font-size:9px;cursor:pointer;color:#909090;fill:#909090;"
                          text-anchor="end" zIndex="8">
                        <tspan x="239">woqutech.com</tspan>
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

<div class="panel panel-default transparent space-tablespace">
<div class="panel-heading">
    <h3 class="panel-title"><i class="icon-table"></i>表空间</h3>

    <div id="ID-ts-physical-size" class="panel-toolbar no-border"></div>
    <div class="panel-toolbar">
        <a data-toggle="collapse" href="#J_tableSpace">
            <i class="icon-chevron-up"></i>
        </a>
    </div>
</div>
<div id="J_tableSpace" class="panel-collapse collapse in">
<div class="panel-body">
<ul class="nav nav-tabs" id="myTab">
    <li class="active"><a data-toggle="tab" href="#ID-table-space-overview">概览</a></li>
    <li><a data-toggle="tab" href="#ID-table-space-detail">详情</a></li>
</ul>
<div class="tab-content tab-content-wrapper">
<div id="ID-table-space-overview" class="tab-pane active">
<div class="row">
<div class="col-xs-6">
    <div class="panel panel-default transparent">
        <div class="panel-heading">
            <h4 class="panel-title"><i class="icon-hand-right"></i>空间变化</h4>
        </div>
        <div class="panel-body">
            <table id="ID-space-table-overview" class="table table-bordered">
                <thead>
                <tr>
                    <th></th>
                    <th>名称</th>
                    <th>物理大小 / MB</th>
                    <th>剩余比例</th>
                    <th>日增长 / MB</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td rowspan="2" class="text-center vertical-middle">空间最大</td>
                    <td>PERFSTAT</td>
                    <td>4072</td>
                    <td>
                        <div class="progress no-margin" data-percent="79.5%">
                            <div class="progress-bar progress-bar-success" role="progressbar"
                                 aria-valuenow=" 79.5 " aria-valuemin="0" aria-valuemax="100"
                                 style="width:  79.5% ;">
                                <span> 79.5% </span>
                            </div>
                        </div>
                    </td>
                    <td>4</td>
                </tr>
                <tr>
                    <td>SYSTEM</td>
                    <td>2048</td>
                    <td>
                        <div class="progress no-margin" data-percent="91.53%">
                            <div class="progress-bar progress-bar-success" role="progressbar"
                                 aria-valuenow=" 91.53 " aria-valuemin="0" aria-valuemax="100"
                                 style="width:  91.53% ;">
                                <span> 91.53% </span>
                            </div>
                        </div>
                    </td>
                    <td>0</td>
                </tr>
                <tr>
                    <td rowspan="2" class="text-center vertical-middle">增长最快</td>
                    <td>PERFSTAT</td>
                    <td>4072</td>
                    <td>
                        <div class="progress no-margin" data-percent="79.5%">
                            <div class="progress-bar progress-bar-success" role="progressbar"
                                 aria-valuenow=" 79.5 " aria-valuemin="0" aria-valuemax="100"
                                 style="width:  79.5% ;">
                                <span> 79.5% </span>
                            </div>
                        </div>
                    </td>
                    <td>4</td>
                </tr>
                <tr>
                    <td>SYSTEM</td>
                    <td>2048</td>
                    <td>
                        <div class="progress no-margin" data-percent="91.53%">
                            <div class="progress-bar progress-bar-success" role="progressbar"
                                 aria-valuenow=" 91.53 " aria-valuemin="0" aria-valuemax="100"
                                 style="width:  91.53% ;">
                                <span> 91.53% </span>
                            </div>
                        </div>
                    </td>
                    <td>0</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="col-xs-6">
    <div class="panel panel-default transparent space-tablespace-distribute">
        <div class="panel-heading">
            <h4 class="panel-title"><i class="icon-hand-right"></i>空间分布 <span
                    class="label label-primary">当天 2014年05月19日</span>
            </h4>
        </div>
        <div class="panel-body">
            <div class="highcharts-container" id="highcharts-01"
                 style="position: relative; overflow: hidden; width: 531px; height: 258px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: 'Open Sans'; font-size: 10px;">
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="531" height="258">
                    <desc>Created with Highcharts 3.0.5</desc>
                    <defs>
                        <clipPath id="highcharts-1">
                            <rect fill="none" x="0" y="0" width="424" height="233"></rect>
                        </clipPath>
                    </defs>
                    <rect rx="5" ry="5" fill="#FFFFFF" x="0" y="0" width="531" height="258"></rect>
                    <g class="highcharts-series-group" zIndex="3">
                        <g class="highcharts-series highcharts-tracker" visibility="visible" zIndex="0.1"
                           transform="translate(10,10) scale(1 1)" style="cursor:pointer;">
                            <path fill="none"
                                  d="M 338.0870515790215 153.7935369985392 C 333.0870515790215 153.7935369985392 325.243355930178 152.21986658567835 314.45827441301816 150.0560697679947 L 303.67319289585834 147.89227295031105"
                                  stroke="#2091CF" stroke-width="1" visibility="visible"></path>
                            <path fill="none"
                                  d="M 88.48500361105161 164.23392622390278 C 93.48500361105161 164.23392622390278 101.16208839738027 161.98395529441922 111.71807997858215 158.89024526637928 L 122.27407155978403 155.79653523833935"
                                  stroke="#DA5430" stroke-width="1" visibility="visible"></path>
                            <path fill="none"
                                  d="M 126.93124099157194 35.47211141980132 C 131.93124099157194 35.47211141980132 137.11788125122737 41.56298679341744 144.24951160825333 49.937940432139584 L 151.38114196527928 58.31289407086173"
                                  stroke="#68BC31" stroke-width="1" visibility="visible"></path>
                            <path fill="none"
                                  d="M 179.76079084892416 9.041395139973737 C 184.76079084892416 9.041395139973737 186.52527403279967 16.84438168961107 188.95143841062827 27.573488195362394 L 191.37760278845687 38.30259470111372"
                                  stroke="#AF4E96" stroke-width="1" visibility="visible"></path>
                            <path fill="#2091CF"
                                  d="M 211.9809565554545 36.00000193931977 A 93.5 93.5 0 1 1 176.00285805880605 215.79284890456177 L 212 129.5 A 0 0 0 1 0 212 129.5 Z"
                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                  transform="translate(0,0)"></path>
                            <path fill="#DA5430"
                                  d="M 175.9165832228531 215.7568086221993 A 93.5 93.5 0 0 1 135.01145531234252 76.44329460966748 L 212 129.5 A 0 0 0 0 0 212 129.5 Z"
                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                  transform="translate(0,0)"></path>
                            <path fill="#68BC31"
                                  d="M 135.06455050315918 76.36633260616173 A 93.5 93.5 0 0 1 171.71936358915525 45.1215647790426 L 212 129.5 A 0 0 0 0 0 212 129.5 Z"
                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                  transform="translate(0,0)"></path>
                            <path fill="#AF4E96"
                                  d="M 171.80376215062964 45.081326338559236 A 93.5 93.5 0 0 1 211.8701303757903 36.000090193194936 L 212 129.5 A 0 0 0 0 0 212 129.5 Z"
                                  stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round"
                                  transform="translate(0,0)"></path>
                        </g>
                        <g class="highcharts-markers" visibility="visible" zIndex="0.1"
                           transform="translate(10,10) scale(1 1)"></g>
                    </g>
                    <g class="highcharts-data-labels highcharts-tracker" visibility="visible" zIndex="6"
                       transform="translate(10,10) scale(1 1)" style="cursor:pointer;">
                        <g zIndex="1" style="cursor:default;" transform="translate(343,144)"
                           visibility="visible">
                            <text x="3" y="15"
                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                  zIndex="1">
                                <tspan x="3">56.31%</tspan>
                            </text>
                        </g>
                        <g zIndex="1" style="cursor:default;" transform="translate(44,154)"
                           visibility="visible">
                            <text x="3" y="15"
                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                  zIndex="1">
                                <tspan x="3">28.32%</tspan>
                            </text>
                        </g>
                        <g zIndex="1" style="cursor:default;" transform="translate(89,25)" visibility="visible">
                            <text x="3" y="15"
                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                  zIndex="1">
                                <tspan x="3">8.30%</tspan>
                            </text>
                        </g>
                        <g zIndex="1" style="cursor:default;" transform="translate(142,-1)"
                           visibility="visible">
                            <text x="3" y="15"
                                  style="font-family:Open Sans;font-size:11px;color:#666;line-height:14px;fill:#666;"
                                  zIndex="1">
                                <tspan x="3">7.08%</tspan>
                            </text>
                        </g>
                    </g>
                    <g class="highcharts-legend" zIndex="7" transform="translate(444,10)">
                        <g zIndex="1">
                            <g>
                                <g class="highcharts-legend-item" zIndex="1" transform="translate(8,3)">
                                    <text x="21" y="15"
                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                          text-anchor="start" zIndex="2">
                                        <tspan x="21">PERFSTAT</tspan>
                                    </text>
                                    <rect rx="2" ry="2" fill="#2091CF" x="0" y="4" width="16" height="12"
                                          zIndex="3"></rect>
                                </g>
                                <g class="highcharts-legend-item" zIndex="1" transform="translate(8,15)">
                                    <text x="21" y="15"
                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                          text-anchor="start" zIndex="2">
                                        <tspan x="21">SYSTEM</tspan>
                                    </text>
                                    <rect rx="2" ry="2" fill="#DA5430" x="0" y="4" width="16" height="12"
                                          zIndex="3"></rect>
                                </g>
                                <g class="highcharts-legend-item" zIndex="1" transform="translate(8,27)">
                                    <text x="21" y="15"
                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                          text-anchor="start" zIndex="2">
                                        <tspan x="21">TEMP</tspan>
                                    </text>
                                    <rect rx="2" ry="2" fill="#68BC31" x="0" y="4" width="16" height="12"
                                          zIndex="3"></rect>
                                </g>
                                <g class="highcharts-legend-item" zIndex="1" transform="translate(8,39)">
                                    <text x="21" y="15"
                                          style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                          text-anchor="start" zIndex="2">
                                        <tspan x="21">UNDOTBS1</tspan>
                                    </text>
                                    <rect rx="2" ry="2" fill="#AF4E96" x="0" y="4" width="16" height="12"
                                          zIndex="3"></rect>
                                </g>
                            </g>
                        </g>
                    </g>
                    <g class="highcharts-tooltip" zIndex="8"
                       style="cursor:default;padding:0;white-space:nowrap;" visibility="hidden"
                       transform="translate(63,15)" opacity="0">
                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="125" height="44"
                              fill-opacity="0.85" isShadow="true" stroke="black"
                              stroke-opacity="0.049999999999999996" stroke-width="5"
                              transform="translate(1, 1)"></rect>
                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="125" height="44"
                              fill-opacity="0.85" isShadow="true" stroke="black"
                              stroke-opacity="0.09999999999999999" stroke-width="3"
                              transform="translate(1, 1)"></rect>
                        <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="125" height="44"
                              fill-opacity="0.85" isShadow="true" stroke="black" stroke-opacity="0.15"
                              stroke-width="1" transform="translate(1, 1)"></rect>
                        <rect rx="3" ry="3" fill="rgb(255,255,255)" x="0.5" y="0.5" width="125" height="44"
                              fill-opacity="0.85" stroke="#DA5430" stroke-width="1"
                              anchorX="-11.657911333930144" anchorY="29.010522424342533"></rect>
                        <text x="8" y="21"
                              style="font-family:Open Sans;font-size:12px;color:#333333;fill:#333333;"
                              zIndex="1">
                            <tspan style="font-size: 10px" x="8">SYSTEM</tspan>
                            <tspan style="fill:" x="8" dy="16">物理大小</tspan>
                            <tspan dx="0">:</tspan>
                            <tspan style="font-weight:bold" dx="0">2,048MB</tspan>
                        </text>
                    </g>
                    <text x="521" y="253"
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

<div id="ID-table-space-detail" class="tab-pane">
    <div class="panel panel-default transparent">
        <div class="panel-heading">
            <h4 class="panel-title"><i class="icon-hand-right"></i>变化趋势 <span class="label label-primary">最近一年 2013年05月20日 ~ 2014年05月20日</span>
            </h4>
        </div>
        <div class="panel-body">
            <div
                 data-chartdata="[{&quot;name&quot;:&quot;Total&quot;,&quot;data&quot;:[[1392652800000,2960],[1392739200000,2960],[1392825600000,2960],[1392912000000,2960],[1392998400000,2960],[1393084800000,2960],[1393171200000,2960],[1393257600000,2960],[1393344000000,2960],[1393430400000,2960],[1393516800000,2960],[1394640000000,2960],[1394726400000,2960],[1394812800000,2960],[1394899200000,2960],[1394985600000,2960],[1395072000000,2960],[1395158400000,2960],[1395244800000,2960],[1395331200000,2960],[1395417600000,3160],[1395590400000,7232],[1395676800000,7232],[1395763200000,7232],[1395849600000,7232],[1395936000000,7232],[1396022400000,7232],[1396108800000,7232],[1396195200000,7232],[1396368000000,7232],[1396454400000,7232],[1396540800000,7232],[1396627200000,7232],[1396713600000,7232],[1396800000000,7232],[1396886400000,7232],[1396972800000,7232],[1397059200000,7232],[1397145600000,7232],[1397232000000,7232],[1397318400000,7232],[1397404800000,7232],[1397491200000,7232],[1397577600000,7232],[1397664000000,7232],[1397750400000,7232],[1397836800000,7232],[1397923200000,7232],[1398009600000,7232],[1398096000000,7232],[1398182400000,7232],[1398268800000,7232],[1398355200000,7232],[1398441600000,7232],[1398528000000,7232],[1398614400000,7232],[1398700800000,7232],[1398787200000,7232],[1398873600000,7232],[1398960000000,7232],[1399046400000,7232],[1399132800000,7232],[1399219200000,7232],[1399305600000,7232],[1399392000000,7232],[1399478400000,7232],[1399564800000,7232],[1400169600000,7232],[1400256000000,7232],[1400342400000,7232],[1400428800000,7232],[1400515200000,7232]],&quot;visible&quot;:true},{&quot;name&quot;:&quot;PERFSTAT&quot;,&quot;data&quot;:[[1392652800000,800],[1392739200000,800],[1392825600000,800],[1392912000000,800],[1392998400000,800],[1393084800000,800],[1393171200000,800],[1393257600000,800],[1393344000000,800],[1393430400000,800],[1393516800000,800],[1394640000000,800],[1394726400000,800],[1394812800000,800],[1394899200000,800],[1394985600000,800],[1395072000000,800],[1395158400000,800],[1395244800000,800],[1395331200000,800],[1395417600000,1000],[1395590400000,4072],[1395676800000,4072],[1395763200000,4072],[1395849600000,4072],[1395936000000,4072],[1396022400000,4072],[1396108800000,4072],[1396195200000,4072],[1396368000000,4072],[1396454400000,4072],[1396540800000,4072],[1396627200000,4072],[1396713600000,4072],[1396800000000,4072],[1396886400000,4072],[1396972800000,4072],[1397059200000,4072],[1397145600000,4072],[1397232000000,4072],[1397318400000,4072],[1397404800000,4072],[1397491200000,4072],[1397577600000,4072],[1397664000000,4072],[1397750400000,4072],[1397836800000,4072],[1397923200000,4072],[1398009600000,4072],[1398096000000,4072],[1398182400000,4072],[1398268800000,4072],[1398355200000,4072],[1398441600000,4072],[1398528000000,4072],[1398614400000,4072],[1398700800000,4072],[1398787200000,4072],[1398873600000,4072],[1398960000000,4072],[1399046400000,4072],[1399132800000,4072],[1399219200000,4072],[1399305600000,4072],[1399392000000,4072],[1399478400000,4072],[1399564800000,4072],[1400169600000,4072],[1400256000000,4072],[1400342400000,4072],[1400428800000,4072],[1400515200000,4072]],&quot;visible&quot;:false},{&quot;name&quot;:&quot;SYSTEM&quot;,&quot;data&quot;:[[1392652800000,1048],[1392739200000,1048],[1392825600000,1048],[1392912000000,1048],[1392998400000,1048],[1393084800000,1048],[1393171200000,1048],[1393257600000,1048],[1393344000000,1048],[1393430400000,1048],[1393516800000,1048],[1394640000000,1048],[1394726400000,1048],[1394812800000,1048],[1394899200000,1048],[1394985600000,1048],[1395072000000,1048],[1395158400000,1048],[1395244800000,1048],[1395331200000,1048],[1395417600000,1048],[1395590400000,2048],[1395676800000,2048],[1395763200000,2048],[1395849600000,2048],[1395936000000,2048],[1396022400000,2048],[1396108800000,2048],[1396195200000,2048],[1396368000000,2048],[1396454400000,2048],[1396540800000,2048],[1396627200000,2048],[1396713600000,2048],[1396800000000,2048],[1396886400000,2048],[1396972800000,2048],[1397059200000,2048],[1397145600000,2048],[1397232000000,2048],[1397318400000,2048],[1397404800000,2048],[1397491200000,2048],[1397577600000,2048],[1397664000000,2048],[1397750400000,2048],[1397836800000,2048],[1397923200000,2048],[1398009600000,2048],[1398096000000,2048],[1398182400000,2048],[1398268800000,2048],[1398355200000,2048],[1398441600000,2048],[1398528000000,2048],[1398614400000,2048],[1398700800000,2048],[1398787200000,2048],[1398873600000,2048],[1398960000000,2048],[1399046400000,2048],[1399132800000,2048],[1399219200000,2048],[1399305600000,2048],[1399392000000,2048],[1399478400000,2048],[1399564800000,2048],[1400169600000,2048],[1400256000000,2048],[1400342400000,2048],[1400428800000,2048],[1400515200000,2048]],&quot;visible&quot;:false},{&quot;name&quot;:&quot;TEMP&quot;,&quot;data&quot;:[[1392652800000,600],[1392739200000,600],[1392825600000,600],[1392912000000,600],[1392998400000,600],[1393084800000,600],[1393171200000,600],[1393257600000,600],[1393344000000,600],[1393430400000,600],[1393516800000,600],[1394640000000,600],[1394726400000,600],[1394812800000,600],[1394899200000,600],[1394985600000,600],[1395072000000,600],[1395158400000,600],[1395244800000,600],[1395331200000,600],[1395417600000,600],[1395590400000,600],[1395676800000,600],[1395763200000,600],[1395849600000,600],[1395936000000,600],[1396022400000,600],[1396108800000,600],[1396195200000,600],[1396368000000,600],[1396454400000,600],[1396540800000,600],[1396627200000,600],[1396713600000,600],[1396800000000,600],[1396886400000,600],[1396972800000,600],[1397059200000,600],[1397145600000,600],[1397232000000,600],[1397318400000,600],[1397404800000,600],[1397491200000,600],[1397577600000,600],[1397664000000,600],[1397750400000,600],[1397836800000,600],[1397923200000,600],[1398009600000,600],[1398096000000,600],[1398182400000,600],[1398268800000,600],[1398355200000,600],[1398441600000,600],[1398528000000,600],[1398614400000,600],[1398700800000,600],[1398787200000,600],[1398873600000,600],[1398960000000,600],[1399046400000,600],[1399132800000,600],[1399219200000,600],[1399305600000,600],[1399392000000,600],[1399478400000,600],[1399564800000,600],[1400169600000,600],[1400256000000,600],[1400342400000,600],[1400428800000,600],[1400515200000,600]],&quot;visible&quot;:false},{&quot;name&quot;:&quot;UNDOTBS1&quot;,&quot;data&quot;:[[1392652800000,512],[1392739200000,512],[1392825600000,512],[1392912000000,512],[1392998400000,512],[1393084800000,512],[1393171200000,512],[1393257600000,512],[1393344000000,512],[1393430400000,512],[1393516800000,512],[1394640000000,512],[1394726400000,512],[1394812800000,512],[1394899200000,512],[1394985600000,512],[1395072000000,512],[1395158400000,512],[1395244800000,512],[1395331200000,512],[1395417600000,512],[1395590400000,512],[1395676800000,512],[1395763200000,512],[1395849600000,512],[1395936000000,512],[1396022400000,512],[1396108800000,512],[1396195200000,512],[1396368000000,512],[1396454400000,512],[1396540800000,512],[1396627200000,512],[1396713600000,512],[1396800000000,512],[1396886400000,512],[1396972800000,512],[1397059200000,512],[1397145600000,512],[1397232000000,512],[1397318400000,512],[1397404800000,512],[1397491200000,512],[1397577600000,512],[1397664000000,512],[1397750400000,512],[1397836800000,512],[1397923200000,512],[1398009600000,512],[1398096000000,512],[1398182400000,512],[1398268800000,512],[1398355200000,512],[1398441600000,512],[1398528000000,512],[1398614400000,512],[1398700800000,512],[1398787200000,512],[1398873600000,512],[1398960000000,512],[1399046400000,512],[1399132800000,512],[1399219200000,512],[1399305600000,512],[1399392000000,512],[1399478400000,512],[1399564800000,512],[1400169600000,512],[1400256000000,512],[1400342400000,512],[1400428800000,512],[1400515200000,512]],&quot;visible&quot;:false}]"
                 data-nodata="暂无变化趋势相关信息。" style="height: 260px; width: 1092px;">
                <div class="highcharts-container" id="highcharts-4"
                     style="position: relative; overflow: hidden; width: 1090px; height: 258px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: 'Open Sans'; font-size: 10px;">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="1090" height="258">
                        <desc>Created with Highcharts 3.0.5</desc>
                        <defs>
                            <clipPath id="highcharts-5">
                                <rect fill="none" x="0" y="0" width="921" height="221"></rect>
                            </clipPath>
                        </defs>
                        <rect rx="5" ry="5" fill="#FFFFFF" x="0" y="0" width="1090" height="258"></rect>
                        <g class="highcharts-grid" zIndex="1"></g>
                        <g class="highcharts-grid" zIndex="1">
                            <path fill="none" d="M 64 157.5 L 985 157.5" stroke="#cfcfcf" stroke-width="1" zIndex="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 64 84.5 L 985 84.5" stroke="#cfcfcf" stroke-width="1" zIndex="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 64 9.5 L 985 9.5" stroke="#cfcfcf" stroke-width="1" zIndex="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 64 231.5 L 985 231.5" stroke="#cfcfcf" stroke-width="1" zIndex="1"
                                  opacity="1"></path>
                        </g>
                        <g class="highcharts-axis" zIndex="2">
                            <path fill="none" d="M 195.5 231 L 195.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 265.5 231 L 265.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 336.5 231 L 336.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 407.5 231 L 407.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 478.5 231 L 478.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 549.5 231 L 549.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 620.5 231 L 620.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 690.5 231 L 690.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 761.5 231 L 761.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 832.5 231 L 832.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 903.5 231 L 903.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 974.5 231 L 974.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                            <path fill="none" d="M 124.5 231 L 124.5 235" stroke="#cfcfcf" stroke-width="1"
                                  opacity="1"></path>
                        </g>
                        <g class="highcharts-axis" zIndex="2">
                            <text x="22" y="120.5"
                                  style="font-family:Open Sans;font-size:10px;color:#4d759e;font-weight:bold;fill:#4d759e;"
                                  zIndex="7" text-anchor="middle" transform="translate(0,0) rotate(270 22 120.5)"
                                  visibility="visible">
                                <tspan x="22">Size/MB</tspan>
                            </text>
                        </g>
                        <g class="highcharts-series-group" zIndex="3">
                            <g class="highcharts-series" visibility="visible" zIndex="0.1"
                               transform="translate(64,10) scale(1 1)" clip-path="url(#highcharts-5)">
                                <path fill="none"
                                      d="M 0 133.77866666666665 C 0 133.77866666666665 6.072527472527472 133.77866666666665 10.12087912087912 133.77866666666665 C 14.169230769230769 133.77866666666665 16.193406593406593 133.77866666666665 20.24175824175824 133.77866666666665 C 24.29010989010989 133.77866666666665 26.31428571428571 133.77866666666665 30.36263736263736 133.77866666666665 C 34.41098901098901 133.77866666666665 36.435164835164834 133.77866666666665 40.48351648351648 133.77866666666665 C 44.53186813186814 133.77866666666665 46.55604395604395 133.77866666666665 50.604395604395606 133.77866666666665 C 54.65274725274725 133.77866666666665 56.676923076923075 133.77866666666665 60.72527472527472 133.77866666666665 C 64.77362637362637 133.77866666666665 66.7978021978022 133.77866666666665 70.84615384615384 133.77866666666665 C 74.89450549450548 133.77866666666665 76.91868131868132 133.77866666666665 80.96703296703296 133.77866666666665 C 85.01538461538462 133.77866666666665 87.03956043956045 133.77866666666665 91.08791208791209 133.77866666666665 C 95.13626373626374 133.77866666666665 97.16043956043956 133.77866666666665 101.20879120879121 133.77866666666665 C 153.83736263736265 133.77866666666665 180.15164835164833 133.77866666666665 232.78021978021977 133.77866666666665 C 236.82857142857142 133.77866666666665 238.85274725274726 133.77866666666665 242.9010989010989 133.77866666666665 C 246.94945054945055 133.77866666666665 248.97362637362636 133.77866666666665 253.02197802197801 133.77866666666665 C 257.07032967032967 133.77866666666665 259.0945054945055 133.77866666666665 263.1428571428571 133.77866666666665 C 267.19120879120874 133.77866666666665 269.21538461538455 133.77866666666665 273.26373626373623 133.77866666666665 C 277.31208791208786 133.77866666666665 279.33626373626373 133.77866666666665 283.38461538461536 133.77866666666665 C 287.432967032967 133.77866666666665 289.45714285714286 133.77866666666665 293.5054945054945 133.77866666666665 C 297.55384615384617 133.77866666666665 299.5780219780219 133.77866666666665 303.6263736263736 133.77866666666665 C 307.6747252747253 133.77866666666665 309.69890109890105 133.77866666666665 313.74725274725273 133.77866666666665 C 317.79560439560436 133.77866666666665 319.8197802197802 133.77866666666665 323.86813186813185 127.88533333333334 C 331.9648351648351 121.99200000000002 336.0131868131868 7.897066666666689 344.1098901098901 7.897066666666689 C 348.15824175824173 7.897066666666689 350.18241758241754 7.897066666666689 354.2307692307692 7.897066666666689 C 358.27912087912085 7.897066666666689 360.3032967032967 7.897066666666689 364.35164835164835 7.897066666666689 C 368.4 7.897066666666689 370.42417582417585 7.897066666666689 374.4725274725275 7.897066666666689 C 378.52087912087916 7.897066666666689 380.5450549450549 7.897066666666689 384.5934065934066 7.897066666666689 C 388.6417582417583 7.897066666666689 390.66593406593404 7.897066666666689 394.7142857142857 7.897066666666689 C 398.76263736263735 7.897066666666689 400.7868131868132 7.897066666666689 404.83516483516485 7.897066666666689 C 408.8835164835165 7.897066666666689 410.9076923076923 7.897066666666689 414.9560439560439 7.897066666666689 C 423.0527472527472 7.897066666666689 427.1010989010989 7.897066666666689 435.19780219780216 7.897066666666689 C 439.2461538461538 7.897066666666689 441.27032967032966 7.897066666666689 445.3186813186813 7.897066666666689 C 449.3670329670329 7.897066666666689 451.3912087912087 7.897066666666689 455.4395604395604 7.897066666666689 C 459.4879120879121 7.897066666666689 461.5120879120879 7.897066666666689 465.56043956043953 7.897066666666689 C 469.60879120879116 7.897066666666689 471.63296703296703 7.897066666666689 475.68131868131866 7.897066666666689 C 479.7296703296703 7.897066666666689 481.7538461538461 7.897066666666689 485.8021978021978 7.897066666666689 C 489.85054945054947 7.897066666666689 491.8747252747253 7.897066666666689 495.9230769230769 7.897066666666689 C 499.97142857142853 7.897066666666689 501.99560439560435 7.897066666666689 506.04395604395603 7.897066666666689 C 510.0923076923076 7.897066666666689 512.1164835164835 7.897066666666689 516.1648351648352 7.897066666666689 C 520.2131868131868 7.897066666666689 522.2373626373626 7.897066666666689 526.2857142857142 7.897066666666689 C 530.3340659340658 7.897066666666689 532.3582417582418 7.897066666666689 536.4065934065934 7.897066666666689 C 540.454945054945 7.897066666666689 542.4791208791208 7.897066666666689 546.5274725274725 7.897066666666689 C 550.5758241758242 7.897066666666689 552.6 7.897066666666689 556.6483516483516 7.897066666666689 C 560.6967032967033 7.897066666666689 562.7208791208791 7.897066666666689 566.7692307692307 7.897066666666689 C 570.8175824175823 7.897066666666689 572.8417582417582 7.897066666666689 576.8901098901099 7.897066666666689 C 580.9384615384615 7.897066666666689 582.9626373626373 7.897066666666689 587.010989010989 7.897066666666689 C 591.0593406593407 7.897066666666689 593.0835164835165 7.897066666666689 597.1318681318681 7.897066666666689 C 601.1802197802198 7.897066666666689 603.2043956043956 7.897066666666689 607.2527472527472 7.897066666666689 C 611.3010989010988 7.897066666666689 613.3252747252748 7.897066666666689 617.3736263736264 7.897066666666689 C 621.421978021978 7.897066666666689 623.4461538461538 7.897066666666689 627.4945054945055 7.897066666666689 C 631.5428571428571 7.897066666666689 633.5670329670329 7.897066666666689 637.6153846153846 7.897066666666689 C 641.6637362637363 7.897066666666689 643.6879120879121 7.897066666666689 647.7362637362637 7.897066666666689 C 651.7846153846153 7.897066666666689 653.8087912087911 7.897066666666689 657.8571428571428 7.897066666666689 C 661.9054945054944 7.897066666666689 663.9296703296702 7.897066666666689 667.978021978022 7.897066666666689 C 672.0263736263736 7.897066666666689 674.0505494505494 7.897066666666689 678.098901098901 7.897066666666689 C 682.1472527472527 7.897066666666689 684.1714285714286 7.897066666666689 688.2197802197802 7.897066666666689 C 692.2681318681318 7.897066666666689 694.2923076923076 7.897066666666689 698.3406593406593 7.897066666666689 C 702.389010989011 7.897066666666689 704.4131868131868 7.897066666666689 708.4615384615385 7.897066666666689 C 712.5098901098901 7.897066666666689 714.534065934066 7.897066666666689 718.5824175824175 7.897066666666689 C 722.6307692307693 7.897066666666689 724.6549450549451 7.897066666666689 728.7032967032967 7.897066666666689 C 732.7516483516483 7.897066666666689 734.7758241758241 7.897066666666689 738.8241758241758 7.897066666666689 C 742.8725274725275 7.897066666666689 744.8967032967033 7.897066666666689 748.945054945055 7.897066666666689 C 752.9934065934066 7.897066666666689 755.0175824175824 7.897066666666689 759.065934065934 7.897066666666689 C 763.1142857142856 7.897066666666689 765.1384615384616 7.897066666666689 769.1868131868132 7.897066666666689 C 773.2351648351648 7.897066666666689 775.2593406593406 7.897066666666689 779.3076923076923 7.897066666666689 C 783.3560439560439 7.897066666666689 785.3802197802197 7.897066666666689 789.4285714285714 7.897066666666689 C 793.4769230769231 7.897066666666689 795.5010989010989 7.897066666666689 799.5494505494505 7.897066666666689 C 803.5978021978021 7.897066666666689 805.621978021978 7.897066666666689 809.6703296703297 7.897066666666689 C 838.0087912087911 7.897066666666689 852.1780219780219 7.897066666666689 880.5164835164835 7.897066666666689 C 884.5648351648351 7.897066666666689 886.589010989011 7.897066666666689 890.6373626373626 7.897066666666689 C 894.6857142857143 7.897066666666689 896.7098901098901 7.897066666666689 900.7582417582418 7.897066666666689 C 904.8065934065933 7.897066666666689 906.8307692307692 7.897066666666689 910.8791208791208 7.897066666666689 C 914.9274725274724 7.897066666666689 921 7.897066666666689 921 7.897066666666689"
                                      stroke="#2091CF" stroke-width="1" zIndex="1"></path>
                                <path fill="none"
                                      d="M -10 133.77866666666665 L 0 133.77866666666665 C 0 133.77866666666665 6.072527472527472 133.77866666666665 10.12087912087912 133.77866666666665 C 14.169230769230769 133.77866666666665 16.193406593406593 133.77866666666665 20.24175824175824 133.77866666666665 C 24.29010989010989 133.77866666666665 26.31428571428571 133.77866666666665 30.36263736263736 133.77866666666665 C 34.41098901098901 133.77866666666665 36.435164835164834 133.77866666666665 40.48351648351648 133.77866666666665 C 44.53186813186814 133.77866666666665 46.55604395604395 133.77866666666665 50.604395604395606 133.77866666666665 C 54.65274725274725 133.77866666666665 56.676923076923075 133.77866666666665 60.72527472527472 133.77866666666665 C 64.77362637362637 133.77866666666665 66.7978021978022 133.77866666666665 70.84615384615384 133.77866666666665 C 74.89450549450548 133.77866666666665 76.91868131868132 133.77866666666665 80.96703296703296 133.77866666666665 C 85.01538461538462 133.77866666666665 87.03956043956045 133.77866666666665 91.08791208791209 133.77866666666665 C 95.13626373626374 133.77866666666665 97.16043956043956 133.77866666666665 101.20879120879121 133.77866666666665 C 153.83736263736265 133.77866666666665 180.15164835164833 133.77866666666665 232.78021978021977 133.77866666666665 C 236.82857142857142 133.77866666666665 238.85274725274726 133.77866666666665 242.9010989010989 133.77866666666665 C 246.94945054945055 133.77866666666665 248.97362637362636 133.77866666666665 253.02197802197801 133.77866666666665 C 257.07032967032967 133.77866666666665 259.0945054945055 133.77866666666665 263.1428571428571 133.77866666666665 C 267.19120879120874 133.77866666666665 269.21538461538455 133.77866666666665 273.26373626373623 133.77866666666665 C 277.31208791208786 133.77866666666665 279.33626373626373 133.77866666666665 283.38461538461536 133.77866666666665 C 287.432967032967 133.77866666666665 289.45714285714286 133.77866666666665 293.5054945054945 133.77866666666665 C 297.55384615384617 133.77866666666665 299.5780219780219 133.77866666666665 303.6263736263736 133.77866666666665 C 307.6747252747253 133.77866666666665 309.69890109890105 133.77866666666665 313.74725274725273 133.77866666666665 C 317.79560439560436 133.77866666666665 319.8197802197802 133.77866666666665 323.86813186813185 127.88533333333334 C 331.9648351648351 121.99200000000002 336.0131868131868 7.897066666666689 344.1098901098901 7.897066666666689 C 348.15824175824173 7.897066666666689 350.18241758241754 7.897066666666689 354.2307692307692 7.897066666666689 C 358.27912087912085 7.897066666666689 360.3032967032967 7.897066666666689 364.35164835164835 7.897066666666689 C 368.4 7.897066666666689 370.42417582417585 7.897066666666689 374.4725274725275 7.897066666666689 C 378.52087912087916 7.897066666666689 380.5450549450549 7.897066666666689 384.5934065934066 7.897066666666689 C 388.6417582417583 7.897066666666689 390.66593406593404 7.897066666666689 394.7142857142857 7.897066666666689 C 398.76263736263735 7.897066666666689 400.7868131868132 7.897066666666689 404.83516483516485 7.897066666666689 C 408.8835164835165 7.897066666666689 410.9076923076923 7.897066666666689 414.9560439560439 7.897066666666689 C 423.0527472527472 7.897066666666689 427.1010989010989 7.897066666666689 435.19780219780216 7.897066666666689 C 439.2461538461538 7.897066666666689 441.27032967032966 7.897066666666689 445.3186813186813 7.897066666666689 C 449.3670329670329 7.897066666666689 451.3912087912087 7.897066666666689 455.4395604395604 7.897066666666689 C 459.4879120879121 7.897066666666689 461.5120879120879 7.897066666666689 465.56043956043953 7.897066666666689 C 469.60879120879116 7.897066666666689 471.63296703296703 7.897066666666689 475.68131868131866 7.897066666666689 C 479.7296703296703 7.897066666666689 481.7538461538461 7.897066666666689 485.8021978021978 7.897066666666689 C 489.85054945054947 7.897066666666689 491.8747252747253 7.897066666666689 495.9230769230769 7.897066666666689 C 499.97142857142853 7.897066666666689 501.99560439560435 7.897066666666689 506.04395604395603 7.897066666666689 C 510.0923076923076 7.897066666666689 512.1164835164835 7.897066666666689 516.1648351648352 7.897066666666689 C 520.2131868131868 7.897066666666689 522.2373626373626 7.897066666666689 526.2857142857142 7.897066666666689 C 530.3340659340658 7.897066666666689 532.3582417582418 7.897066666666689 536.4065934065934 7.897066666666689 C 540.454945054945 7.897066666666689 542.4791208791208 7.897066666666689 546.5274725274725 7.897066666666689 C 550.5758241758242 7.897066666666689 552.6 7.897066666666689 556.6483516483516 7.897066666666689 C 560.6967032967033 7.897066666666689 562.7208791208791 7.897066666666689 566.7692307692307 7.897066666666689 C 570.8175824175823 7.897066666666689 572.8417582417582 7.897066666666689 576.8901098901099 7.897066666666689 C 580.9384615384615 7.897066666666689 582.9626373626373 7.897066666666689 587.010989010989 7.897066666666689 C 591.0593406593407 7.897066666666689 593.0835164835165 7.897066666666689 597.1318681318681 7.897066666666689 C 601.1802197802198 7.897066666666689 603.2043956043956 7.897066666666689 607.2527472527472 7.897066666666689 C 611.3010989010988 7.897066666666689 613.3252747252748 7.897066666666689 617.3736263736264 7.897066666666689 C 621.421978021978 7.897066666666689 623.4461538461538 7.897066666666689 627.4945054945055 7.897066666666689 C 631.5428571428571 7.897066666666689 633.5670329670329 7.897066666666689 637.6153846153846 7.897066666666689 C 641.6637362637363 7.897066666666689 643.6879120879121 7.897066666666689 647.7362637362637 7.897066666666689 C 651.7846153846153 7.897066666666689 653.8087912087911 7.897066666666689 657.8571428571428 7.897066666666689 C 661.9054945054944 7.897066666666689 663.9296703296702 7.897066666666689 667.978021978022 7.897066666666689 C 672.0263736263736 7.897066666666689 674.0505494505494 7.897066666666689 678.098901098901 7.897066666666689 C 682.1472527472527 7.897066666666689 684.1714285714286 7.897066666666689 688.2197802197802 7.897066666666689 C 692.2681318681318 7.897066666666689 694.2923076923076 7.897066666666689 698.3406593406593 7.897066666666689 C 702.389010989011 7.897066666666689 704.4131868131868 7.897066666666689 708.4615384615385 7.897066666666689 C 712.5098901098901 7.897066666666689 714.534065934066 7.897066666666689 718.5824175824175 7.897066666666689 C 722.6307692307693 7.897066666666689 724.6549450549451 7.897066666666689 728.7032967032967 7.897066666666689 C 732.7516483516483 7.897066666666689 734.7758241758241 7.897066666666689 738.8241758241758 7.897066666666689 C 742.8725274725275 7.897066666666689 744.8967032967033 7.897066666666689 748.945054945055 7.897066666666689 C 752.9934065934066 7.897066666666689 755.0175824175824 7.897066666666689 759.065934065934 7.897066666666689 C 763.1142857142856 7.897066666666689 765.1384615384616 7.897066666666689 769.1868131868132 7.897066666666689 C 773.2351648351648 7.897066666666689 775.2593406593406 7.897066666666689 779.3076923076923 7.897066666666689 C 783.3560439560439 7.897066666666689 785.3802197802197 7.897066666666689 789.4285714285714 7.897066666666689 C 793.4769230769231 7.897066666666689 795.5010989010989 7.897066666666689 799.5494505494505 7.897066666666689 C 803.5978021978021 7.897066666666689 805.621978021978 7.897066666666689 809.6703296703297 7.897066666666689 C 838.0087912087911 7.897066666666689 852.1780219780219 7.897066666666689 880.5164835164835 7.897066666666689 C 884.5648351648351 7.897066666666689 886.589010989011 7.897066666666689 890.6373626373626 7.897066666666689 C 894.6857142857143 7.897066666666689 896.7098901098901 7.897066666666689 900.7582417582418 7.897066666666689 C 904.8065934065933 7.897066666666689 906.8307692307692 7.897066666666689 910.8791208791208 7.897066666666689 C 914.9274725274724 7.897066666666689 921 7.897066666666689 921 7.897066666666689 L 931 7.897066666666689"
                                      stroke-linejoin="round" visibility="visible" stroke-opacity="0.0001"
                                      stroke="rgb(192,192,192)" stroke-width="21" zIndex="2" class=" highcharts-tracker"
                                      style=""></path>
                            </g>
                            <g class="highcharts-markers highcharts-tracker" visibility="visible" zIndex="0.1"
                               transform="translate(64,10) scale(1 1)" style="" clip-path="none">
                                <path fill="#2091CF"
                                      d="M 101.20879120879121 127.77866666666665 C 109.20079120879122 127.77866666666665 109.20079120879122 139.77866666666665 101.20879120879121 139.77866666666665 C 93.21679120879121 139.77866666666665 93.21679120879121 127.77866666666665 101.20879120879121 127.77866666666665 Z"
                                      stroke="#cfcfcf" stroke-width="1" visibility="visible"></path>
                            </g>
                            <g class="highcharts-series" visibility="hidden" zIndex="0.1"
                               transform="translate(64,10) scale(1 1)" clip-path="url(#highcharts-5)">
                                <path fill="none"
                                      d="M 0 197.42666666666668 C 0 197.42666666666668 6.072527472527472 197.42666666666668 10.12087912087912 197.42666666666668 C 14.169230769230769 197.42666666666668 16.193406593406593 197.42666666666668 20.24175824175824 197.42666666666668 C 24.29010989010989 197.42666666666668 26.31428571428571 197.42666666666668 30.36263736263736 197.42666666666668 C 34.41098901098901 197.42666666666668 36.435164835164834 197.42666666666668 40.48351648351648 197.42666666666668 C 44.53186813186814 197.42666666666668 46.55604395604395 197.42666666666668 50.604395604395606 197.42666666666668 C 54.65274725274725 197.42666666666668 56.676923076923075 197.42666666666668 60.72527472527472 197.42666666666668 C 64.77362637362637 197.42666666666668 66.7978021978022 197.42666666666668 70.84615384615384 197.42666666666668 C 74.89450549450548 197.42666666666668 76.91868131868132 197.42666666666668 80.96703296703296 197.42666666666668 C 85.01538461538462 197.42666666666668 87.03956043956045 197.42666666666668 91.08791208791209 197.42666666666668 C 95.13626373626374 197.42666666666668 97.16043956043956 197.42666666666668 101.20879120879121 197.42666666666668 C 153.83736263736265 197.42666666666668 180.15164835164833 197.42666666666668 232.78021978021977 197.42666666666668 C 236.82857142857142 197.42666666666668 238.85274725274726 197.42666666666668 242.9010989010989 197.42666666666668 C 246.94945054945055 197.42666666666668 248.97362637362636 197.42666666666668 253.02197802197801 197.42666666666668 C 257.07032967032967 197.42666666666668 259.0945054945055 197.42666666666668 263.1428571428571 197.42666666666668 C 267.19120879120874 197.42666666666668 269.21538461538455 197.42666666666668 273.26373626373623 197.42666666666668 C 277.31208791208786 197.42666666666668 279.33626373626373 197.42666666666668 283.38461538461536 197.42666666666668 C 287.432967032967 197.42666666666668 289.45714285714286 197.42666666666668 293.5054945054945 197.42666666666668 C 297.55384615384617 197.42666666666668 299.5780219780219 197.42666666666668 303.6263736263736 197.42666666666668 C 307.6747252747253 197.42666666666668 309.69890109890105 197.42666666666668 313.74725274725273 197.42666666666668 C 317.79560439560436 197.42666666666668 319.8197802197802 197.42666666666668 323.86813186813185 191.53333333333333 C 331.9648351648351 185.64 336.0131868131868 101.01173333333334 344.1098901098901 101.01173333333334 C 348.15824175824173 101.01173333333334 350.18241758241754 101.01173333333334 354.2307692307692 101.01173333333334 C 358.27912087912085 101.01173333333334 360.3032967032967 101.01173333333334 364.35164835164835 101.01173333333334 C 368.4 101.01173333333334 370.42417582417585 101.01173333333334 374.4725274725275 101.01173333333334 C 378.52087912087916 101.01173333333334 380.5450549450549 101.01173333333334 384.5934065934066 101.01173333333334 C 388.6417582417583 101.01173333333334 390.66593406593404 101.01173333333334 394.7142857142857 101.01173333333334 C 398.76263736263735 101.01173333333334 400.7868131868132 101.01173333333334 404.83516483516485 101.01173333333334 C 408.8835164835165 101.01173333333334 410.9076923076923 101.01173333333334 414.9560439560439 101.01173333333334 C 423.0527472527472 101.01173333333334 427.1010989010989 101.01173333333334 435.19780219780216 101.01173333333334 C 439.2461538461538 101.01173333333334 441.27032967032966 101.01173333333334 445.3186813186813 101.01173333333334 C 449.3670329670329 101.01173333333334 451.3912087912087 101.01173333333334 455.4395604395604 101.01173333333334 C 459.4879120879121 101.01173333333334 461.5120879120879 101.01173333333334 465.56043956043953 101.01173333333334 C 469.60879120879116 101.01173333333334 471.63296703296703 101.01173333333334 475.68131868131866 101.01173333333334 C 479.7296703296703 101.01173333333334 481.7538461538461 101.01173333333334 485.8021978021978 101.01173333333334 C 489.85054945054947 101.01173333333334 491.8747252747253 101.01173333333334 495.9230769230769 101.01173333333334 C 499.97142857142853 101.01173333333334 501.99560439560435 101.01173333333334 506.04395604395603 101.01173333333334 C 510.0923076923076 101.01173333333334 512.1164835164835 101.01173333333334 516.1648351648352 101.01173333333334 C 520.2131868131868 101.01173333333334 522.2373626373626 101.01173333333334 526.2857142857142 101.01173333333334 C 530.3340659340658 101.01173333333334 532.3582417582418 101.01173333333334 536.4065934065934 101.01173333333334 C 540.454945054945 101.01173333333334 542.4791208791208 101.01173333333334 546.5274725274725 101.01173333333334 C 550.5758241758242 101.01173333333334 552.6 101.01173333333334 556.6483516483516 101.01173333333334 C 560.6967032967033 101.01173333333334 562.7208791208791 101.01173333333334 566.7692307692307 101.01173333333334 C 570.8175824175823 101.01173333333334 572.8417582417582 101.01173333333334 576.8901098901099 101.01173333333334 C 580.9384615384615 101.01173333333334 582.9626373626373 101.01173333333334 587.010989010989 101.01173333333334 C 591.0593406593407 101.01173333333334 593.0835164835165 101.01173333333334 597.1318681318681 101.01173333333334 C 601.1802197802198 101.01173333333334 603.2043956043956 101.01173333333334 607.2527472527472 101.01173333333334 C 611.3010989010988 101.01173333333334 613.3252747252748 101.01173333333334 617.3736263736264 101.01173333333334 C 621.421978021978 101.01173333333334 623.4461538461538 101.01173333333334 627.4945054945055 101.01173333333334 C 631.5428571428571 101.01173333333334 633.5670329670329 101.01173333333334 637.6153846153846 101.01173333333334 C 641.6637362637363 101.01173333333334 643.6879120879121 101.01173333333334 647.7362637362637 101.01173333333334 C 651.7846153846153 101.01173333333334 653.8087912087911 101.01173333333334 657.8571428571428 101.01173333333334 C 661.9054945054944 101.01173333333334 663.9296703296702 101.01173333333334 667.978021978022 101.01173333333334 C 672.0263736263736 101.01173333333334 674.0505494505494 101.01173333333334 678.098901098901 101.01173333333334 C 682.1472527472527 101.01173333333334 684.1714285714286 101.01173333333334 688.2197802197802 101.01173333333334 C 692.2681318681318 101.01173333333334 694.2923076923076 101.01173333333334 698.3406593406593 101.01173333333334 C 702.389010989011 101.01173333333334 704.4131868131868 101.01173333333334 708.4615384615385 101.01173333333334 C 712.5098901098901 101.01173333333334 714.534065934066 101.01173333333334 718.5824175824175 101.01173333333334 C 722.6307692307693 101.01173333333334 724.6549450549451 101.01173333333334 728.7032967032967 101.01173333333334 C 732.7516483516483 101.01173333333334 734.7758241758241 101.01173333333334 738.8241758241758 101.01173333333334 C 742.8725274725275 101.01173333333334 744.8967032967033 101.01173333333334 748.945054945055 101.01173333333334 C 752.9934065934066 101.01173333333334 755.0175824175824 101.01173333333334 759.065934065934 101.01173333333334 C 763.1142857142856 101.01173333333334 765.1384615384616 101.01173333333334 769.1868131868132 101.01173333333334 C 773.2351648351648 101.01173333333334 775.2593406593406 101.01173333333334 779.3076923076923 101.01173333333334 C 783.3560439560439 101.01173333333334 785.3802197802197 101.01173333333334 789.4285714285714 101.01173333333334 C 793.4769230769231 101.01173333333334 795.5010989010989 101.01173333333334 799.5494505494505 101.01173333333334 C 803.5978021978021 101.01173333333334 805.621978021978 101.01173333333334 809.6703296703297 101.01173333333334 C 838.0087912087911 101.01173333333334 852.1780219780219 101.01173333333334 880.5164835164835 101.01173333333334 C 884.5648351648351 101.01173333333334 886.589010989011 101.01173333333334 890.6373626373626 101.01173333333334 C 894.6857142857143 101.01173333333334 896.7098901098901 101.01173333333334 900.7582417582418 101.01173333333334 C 904.8065934065933 101.01173333333334 906.8307692307692 101.01173333333334 910.8791208791208 101.01173333333334 C 914.9274725274724 101.01173333333334 921 101.01173333333334 921 101.01173333333334"
                                      stroke="#DA5430" stroke-width="1" zIndex="1"></path>
                                <path fill="none"
                                      d="M -10 197.42666666666668 L 0 197.42666666666668 C 0 197.42666666666668 6.072527472527472 197.42666666666668 10.12087912087912 197.42666666666668 C 14.169230769230769 197.42666666666668 16.193406593406593 197.42666666666668 20.24175824175824 197.42666666666668 C 24.29010989010989 197.42666666666668 26.31428571428571 197.42666666666668 30.36263736263736 197.42666666666668 C 34.41098901098901 197.42666666666668 36.435164835164834 197.42666666666668 40.48351648351648 197.42666666666668 C 44.53186813186814 197.42666666666668 46.55604395604395 197.42666666666668 50.604395604395606 197.42666666666668 C 54.65274725274725 197.42666666666668 56.676923076923075 197.42666666666668 60.72527472527472 197.42666666666668 C 64.77362637362637 197.42666666666668 66.7978021978022 197.42666666666668 70.84615384615384 197.42666666666668 C 74.89450549450548 197.42666666666668 76.91868131868132 197.42666666666668 80.96703296703296 197.42666666666668 C 85.01538461538462 197.42666666666668 87.03956043956045 197.42666666666668 91.08791208791209 197.42666666666668 C 95.13626373626374 197.42666666666668 97.16043956043956 197.42666666666668 101.20879120879121 197.42666666666668 C 153.83736263736265 197.42666666666668 180.15164835164833 197.42666666666668 232.78021978021977 197.42666666666668 C 236.82857142857142 197.42666666666668 238.85274725274726 197.42666666666668 242.9010989010989 197.42666666666668 C 246.94945054945055 197.42666666666668 248.97362637362636 197.42666666666668 253.02197802197801 197.42666666666668 C 257.07032967032967 197.42666666666668 259.0945054945055 197.42666666666668 263.1428571428571 197.42666666666668 C 267.19120879120874 197.42666666666668 269.21538461538455 197.42666666666668 273.26373626373623 197.42666666666668 C 277.31208791208786 197.42666666666668 279.33626373626373 197.42666666666668 283.38461538461536 197.42666666666668 C 287.432967032967 197.42666666666668 289.45714285714286 197.42666666666668 293.5054945054945 197.42666666666668 C 297.55384615384617 197.42666666666668 299.5780219780219 197.42666666666668 303.6263736263736 197.42666666666668 C 307.6747252747253 197.42666666666668 309.69890109890105 197.42666666666668 313.74725274725273 197.42666666666668 C 317.79560439560436 197.42666666666668 319.8197802197802 197.42666666666668 323.86813186813185 191.53333333333333 C 331.9648351648351 185.64 336.0131868131868 101.01173333333334 344.1098901098901 101.01173333333334 C 348.15824175824173 101.01173333333334 350.18241758241754 101.01173333333334 354.2307692307692 101.01173333333334 C 358.27912087912085 101.01173333333334 360.3032967032967 101.01173333333334 364.35164835164835 101.01173333333334 C 368.4 101.01173333333334 370.42417582417585 101.01173333333334 374.4725274725275 101.01173333333334 C 378.52087912087916 101.01173333333334 380.5450549450549 101.01173333333334 384.5934065934066 101.01173333333334 C 388.6417582417583 101.01173333333334 390.66593406593404 101.01173333333334 394.7142857142857 101.01173333333334 C 398.76263736263735 101.01173333333334 400.7868131868132 101.01173333333334 404.83516483516485 101.01173333333334 C 408.8835164835165 101.01173333333334 410.9076923076923 101.01173333333334 414.9560439560439 101.01173333333334 C 423.0527472527472 101.01173333333334 427.1010989010989 101.01173333333334 435.19780219780216 101.01173333333334 C 439.2461538461538 101.01173333333334 441.27032967032966 101.01173333333334 445.3186813186813 101.01173333333334 C 449.3670329670329 101.01173333333334 451.3912087912087 101.01173333333334 455.4395604395604 101.01173333333334 C 459.4879120879121 101.01173333333334 461.5120879120879 101.01173333333334 465.56043956043953 101.01173333333334 C 469.60879120879116 101.01173333333334 471.63296703296703 101.01173333333334 475.68131868131866 101.01173333333334 C 479.7296703296703 101.01173333333334 481.7538461538461 101.01173333333334 485.8021978021978 101.01173333333334 C 489.85054945054947 101.01173333333334 491.8747252747253 101.01173333333334 495.9230769230769 101.01173333333334 C 499.97142857142853 101.01173333333334 501.99560439560435 101.01173333333334 506.04395604395603 101.01173333333334 C 510.0923076923076 101.01173333333334 512.1164835164835 101.01173333333334 516.1648351648352 101.01173333333334 C 520.2131868131868 101.01173333333334 522.2373626373626 101.01173333333334 526.2857142857142 101.01173333333334 C 530.3340659340658 101.01173333333334 532.3582417582418 101.01173333333334 536.4065934065934 101.01173333333334 C 540.454945054945 101.01173333333334 542.4791208791208 101.01173333333334 546.5274725274725 101.01173333333334 C 550.5758241758242 101.01173333333334 552.6 101.01173333333334 556.6483516483516 101.01173333333334 C 560.6967032967033 101.01173333333334 562.7208791208791 101.01173333333334 566.7692307692307 101.01173333333334 C 570.8175824175823 101.01173333333334 572.8417582417582 101.01173333333334 576.8901098901099 101.01173333333334 C 580.9384615384615 101.01173333333334 582.9626373626373 101.01173333333334 587.010989010989 101.01173333333334 C 591.0593406593407 101.01173333333334 593.0835164835165 101.01173333333334 597.1318681318681 101.01173333333334 C 601.1802197802198 101.01173333333334 603.2043956043956 101.01173333333334 607.2527472527472 101.01173333333334 C 611.3010989010988 101.01173333333334 613.3252747252748 101.01173333333334 617.3736263736264 101.01173333333334 C 621.421978021978 101.01173333333334 623.4461538461538 101.01173333333334 627.4945054945055 101.01173333333334 C 631.5428571428571 101.01173333333334 633.5670329670329 101.01173333333334 637.6153846153846 101.01173333333334 C 641.6637362637363 101.01173333333334 643.6879120879121 101.01173333333334 647.7362637362637 101.01173333333334 C 651.7846153846153 101.01173333333334 653.8087912087911 101.01173333333334 657.8571428571428 101.01173333333334 C 661.9054945054944 101.01173333333334 663.9296703296702 101.01173333333334 667.978021978022 101.01173333333334 C 672.0263736263736 101.01173333333334 674.0505494505494 101.01173333333334 678.098901098901 101.01173333333334 C 682.1472527472527 101.01173333333334 684.1714285714286 101.01173333333334 688.2197802197802 101.01173333333334 C 692.2681318681318 101.01173333333334 694.2923076923076 101.01173333333334 698.3406593406593 101.01173333333334 C 702.389010989011 101.01173333333334 704.4131868131868 101.01173333333334 708.4615384615385 101.01173333333334 C 712.5098901098901 101.01173333333334 714.534065934066 101.01173333333334 718.5824175824175 101.01173333333334 C 722.6307692307693 101.01173333333334 724.6549450549451 101.01173333333334 728.7032967032967 101.01173333333334 C 732.7516483516483 101.01173333333334 734.7758241758241 101.01173333333334 738.8241758241758 101.01173333333334 C 742.8725274725275 101.01173333333334 744.8967032967033 101.01173333333334 748.945054945055 101.01173333333334 C 752.9934065934066 101.01173333333334 755.0175824175824 101.01173333333334 759.065934065934 101.01173333333334 C 763.1142857142856 101.01173333333334 765.1384615384616 101.01173333333334 769.1868131868132 101.01173333333334 C 773.2351648351648 101.01173333333334 775.2593406593406 101.01173333333334 779.3076923076923 101.01173333333334 C 783.3560439560439 101.01173333333334 785.3802197802197 101.01173333333334 789.4285714285714 101.01173333333334 C 793.4769230769231 101.01173333333334 795.5010989010989 101.01173333333334 799.5494505494505 101.01173333333334 C 803.5978021978021 101.01173333333334 805.621978021978 101.01173333333334 809.6703296703297 101.01173333333334 C 838.0087912087911 101.01173333333334 852.1780219780219 101.01173333333334 880.5164835164835 101.01173333333334 C 884.5648351648351 101.01173333333334 886.589010989011 101.01173333333334 890.6373626373626 101.01173333333334 C 894.6857142857143 101.01173333333334 896.7098901098901 101.01173333333334 900.7582417582418 101.01173333333334 C 904.8065934065933 101.01173333333334 906.8307692307692 101.01173333333334 910.8791208791208 101.01173333333334 C 914.9274725274724 101.01173333333334 921 101.01173333333334 921 101.01173333333334 L 931 101.01173333333334"
                                      stroke-linejoin="round" visibility="hidden" stroke-opacity="0.0001"
                                      stroke="rgb(192,192,192)" stroke-width="21" zIndex="2" class=" highcharts-tracker"
                                      style=""></path>
                            </g>
                            <g class="highcharts-markers highcharts-tracker" visibility="hidden" zIndex="0.1"
                               transform="translate(64,10) scale(1 1)" style="" clip-path="none"></g>
                            <g class="highcharts-series" visibility="hidden" zIndex="0.1"
                               transform="translate(64,10) scale(1 1)" clip-path="url(#highcharts-5)">
                                <path fill="none"
                                      d="M 0 190.11893333333333 C 0 190.11893333333333 6.072527472527472 190.11893333333333 10.12087912087912 190.11893333333333 C 14.169230769230769 190.11893333333333 16.193406593406593 190.11893333333333 20.24175824175824 190.11893333333333 C 24.29010989010989 190.11893333333333 26.31428571428571 190.11893333333333 30.36263736263736 190.11893333333333 C 34.41098901098901 190.11893333333333 36.435164835164834 190.11893333333333 40.48351648351648 190.11893333333333 C 44.53186813186814 190.11893333333333 46.55604395604395 190.11893333333333 50.604395604395606 190.11893333333333 C 54.65274725274725 190.11893333333333 56.676923076923075 190.11893333333333 60.72527472527472 190.11893333333333 C 64.77362637362637 190.11893333333333 66.7978021978022 190.11893333333333 70.84615384615384 190.11893333333333 C 74.89450549450548 190.11893333333333 76.91868131868132 190.11893333333333 80.96703296703296 190.11893333333333 C 85.01538461538462 190.11893333333333 87.03956043956045 190.11893333333333 91.08791208791209 190.11893333333333 C 95.13626373626374 190.11893333333333 97.16043956043956 190.11893333333333 101.20879120879121 190.11893333333333 C 153.83736263736265 190.11893333333333 180.15164835164833 190.11893333333333 232.78021978021977 190.11893333333333 C 236.82857142857142 190.11893333333333 238.85274725274726 190.11893333333333 242.9010989010989 190.11893333333333 C 246.94945054945055 190.11893333333333 248.97362637362636 190.11893333333333 253.02197802197801 190.11893333333333 C 257.07032967032967 190.11893333333333 259.0945054945055 190.11893333333333 263.1428571428571 190.11893333333333 C 267.19120879120874 190.11893333333333 269.21538461538455 190.11893333333333 273.26373626373623 190.11893333333333 C 277.31208791208786 190.11893333333333 279.33626373626373 190.11893333333333 283.38461538461536 190.11893333333333 C 287.432967032967 190.11893333333333 289.45714285714286 190.11893333333333 293.5054945054945 190.11893333333333 C 297.55384615384617 190.11893333333333 299.5780219780219 190.11893333333333 303.6263736263736 190.11893333333333 C 307.6747252747253 190.11893333333333 309.69890109890105 190.11893333333333 313.74725274725273 190.11893333333333 C 317.79560439560436 190.11893333333333 319.8197802197802 190.11893333333333 323.86813186813185 190.11893333333333 C 331.9648351648351 190.11893333333333 336.0131868131868 160.65226666666666 344.1098901098901 160.65226666666666 C 348.15824175824173 160.65226666666666 350.18241758241754 160.65226666666666 354.2307692307692 160.65226666666666 C 358.27912087912085 160.65226666666666 360.3032967032967 160.65226666666666 364.35164835164835 160.65226666666666 C 368.4 160.65226666666666 370.42417582417585 160.65226666666666 374.4725274725275 160.65226666666666 C 378.52087912087916 160.65226666666666 380.5450549450549 160.65226666666666 384.5934065934066 160.65226666666666 C 388.6417582417583 160.65226666666666 390.66593406593404 160.65226666666666 394.7142857142857 160.65226666666666 C 398.76263736263735 160.65226666666666 400.7868131868132 160.65226666666666 404.83516483516485 160.65226666666666 C 408.8835164835165 160.65226666666666 410.9076923076923 160.65226666666666 414.9560439560439 160.65226666666666 C 423.0527472527472 160.65226666666666 427.1010989010989 160.65226666666666 435.19780219780216 160.65226666666666 C 439.2461538461538 160.65226666666666 441.27032967032966 160.65226666666666 445.3186813186813 160.65226666666666 C 449.3670329670329 160.65226666666666 451.3912087912087 160.65226666666666 455.4395604395604 160.65226666666666 C 459.4879120879121 160.65226666666666 461.5120879120879 160.65226666666666 465.56043956043953 160.65226666666666 C 469.60879120879116 160.65226666666666 471.63296703296703 160.65226666666666 475.68131868131866 160.65226666666666 C 479.7296703296703 160.65226666666666 481.7538461538461 160.65226666666666 485.8021978021978 160.65226666666666 C 489.85054945054947 160.65226666666666 491.8747252747253 160.65226666666666 495.9230769230769 160.65226666666666 C 499.97142857142853 160.65226666666666 501.99560439560435 160.65226666666666 506.04395604395603 160.65226666666666 C 510.0923076923076 160.65226666666666 512.1164835164835 160.65226666666666 516.1648351648352 160.65226666666666 C 520.2131868131868 160.65226666666666 522.2373626373626 160.65226666666666 526.2857142857142 160.65226666666666 C 530.3340659340658 160.65226666666666 532.3582417582418 160.65226666666666 536.4065934065934 160.65226666666666 C 540.454945054945 160.65226666666666 542.4791208791208 160.65226666666666 546.5274725274725 160.65226666666666 C 550.5758241758242 160.65226666666666 552.6 160.65226666666666 556.6483516483516 160.65226666666666 C 560.6967032967033 160.65226666666666 562.7208791208791 160.65226666666666 566.7692307692307 160.65226666666666 C 570.8175824175823 160.65226666666666 572.8417582417582 160.65226666666666 576.8901098901099 160.65226666666666 C 580.9384615384615 160.65226666666666 582.9626373626373 160.65226666666666 587.010989010989 160.65226666666666 C 591.0593406593407 160.65226666666666 593.0835164835165 160.65226666666666 597.1318681318681 160.65226666666666 C 601.1802197802198 160.65226666666666 603.2043956043956 160.65226666666666 607.2527472527472 160.65226666666666 C 611.3010989010988 160.65226666666666 613.3252747252748 160.65226666666666 617.3736263736264 160.65226666666666 C 621.421978021978 160.65226666666666 623.4461538461538 160.65226666666666 627.4945054945055 160.65226666666666 C 631.5428571428571 160.65226666666666 633.5670329670329 160.65226666666666 637.6153846153846 160.65226666666666 C 641.6637362637363 160.65226666666666 643.6879120879121 160.65226666666666 647.7362637362637 160.65226666666666 C 651.7846153846153 160.65226666666666 653.8087912087911 160.65226666666666 657.8571428571428 160.65226666666666 C 661.9054945054944 160.65226666666666 663.9296703296702 160.65226666666666 667.978021978022 160.65226666666666 C 672.0263736263736 160.65226666666666 674.0505494505494 160.65226666666666 678.098901098901 160.65226666666666 C 682.1472527472527 160.65226666666666 684.1714285714286 160.65226666666666 688.2197802197802 160.65226666666666 C 692.2681318681318 160.65226666666666 694.2923076923076 160.65226666666666 698.3406593406593 160.65226666666666 C 702.389010989011 160.65226666666666 704.4131868131868 160.65226666666666 708.4615384615385 160.65226666666666 C 712.5098901098901 160.65226666666666 714.534065934066 160.65226666666666 718.5824175824175 160.65226666666666 C 722.6307692307693 160.65226666666666 724.6549450549451 160.65226666666666 728.7032967032967 160.65226666666666 C 732.7516483516483 160.65226666666666 734.7758241758241 160.65226666666666 738.8241758241758 160.65226666666666 C 742.8725274725275 160.65226666666666 744.8967032967033 160.65226666666666 748.945054945055 160.65226666666666 C 752.9934065934066 160.65226666666666 755.0175824175824 160.65226666666666 759.065934065934 160.65226666666666 C 763.1142857142856 160.65226666666666 765.1384615384616 160.65226666666666 769.1868131868132 160.65226666666666 C 773.2351648351648 160.65226666666666 775.2593406593406 160.65226666666666 779.3076923076923 160.65226666666666 C 783.3560439560439 160.65226666666666 785.3802197802197 160.65226666666666 789.4285714285714 160.65226666666666 C 793.4769230769231 160.65226666666666 795.5010989010989 160.65226666666666 799.5494505494505 160.65226666666666 C 803.5978021978021 160.65226666666666 805.621978021978 160.65226666666666 809.6703296703297 160.65226666666666 C 838.0087912087911 160.65226666666666 852.1780219780219 160.65226666666666 880.5164835164835 160.65226666666666 C 884.5648351648351 160.65226666666666 886.589010989011 160.65226666666666 890.6373626373626 160.65226666666666 C 894.6857142857143 160.65226666666666 896.7098901098901 160.65226666666666 900.7582417582418 160.65226666666666 C 904.8065934065933 160.65226666666666 906.8307692307692 160.65226666666666 910.8791208791208 160.65226666666666 C 914.9274725274724 160.65226666666666 921 160.65226666666666 921 160.65226666666666"
                                      stroke="#68BC31" stroke-width="1" zIndex="1"></path>
                                <path fill="none"
                                      d="M -10 190.11893333333333 L 0 190.11893333333333 C 0 190.11893333333333 6.072527472527472 190.11893333333333 10.12087912087912 190.11893333333333 C 14.169230769230769 190.11893333333333 16.193406593406593 190.11893333333333 20.24175824175824 190.11893333333333 C 24.29010989010989 190.11893333333333 26.31428571428571 190.11893333333333 30.36263736263736 190.11893333333333 C 34.41098901098901 190.11893333333333 36.435164835164834 190.11893333333333 40.48351648351648 190.11893333333333 C 44.53186813186814 190.11893333333333 46.55604395604395 190.11893333333333 50.604395604395606 190.11893333333333 C 54.65274725274725 190.11893333333333 56.676923076923075 190.11893333333333 60.72527472527472 190.11893333333333 C 64.77362637362637 190.11893333333333 66.7978021978022 190.11893333333333 70.84615384615384 190.11893333333333 C 74.89450549450548 190.11893333333333 76.91868131868132 190.11893333333333 80.96703296703296 190.11893333333333 C 85.01538461538462 190.11893333333333 87.03956043956045 190.11893333333333 91.08791208791209 190.11893333333333 C 95.13626373626374 190.11893333333333 97.16043956043956 190.11893333333333 101.20879120879121 190.11893333333333 C 153.83736263736265 190.11893333333333 180.15164835164833 190.11893333333333 232.78021978021977 190.11893333333333 C 236.82857142857142 190.11893333333333 238.85274725274726 190.11893333333333 242.9010989010989 190.11893333333333 C 246.94945054945055 190.11893333333333 248.97362637362636 190.11893333333333 253.02197802197801 190.11893333333333 C 257.07032967032967 190.11893333333333 259.0945054945055 190.11893333333333 263.1428571428571 190.11893333333333 C 267.19120879120874 190.11893333333333 269.21538461538455 190.11893333333333 273.26373626373623 190.11893333333333 C 277.31208791208786 190.11893333333333 279.33626373626373 190.11893333333333 283.38461538461536 190.11893333333333 C 287.432967032967 190.11893333333333 289.45714285714286 190.11893333333333 293.5054945054945 190.11893333333333 C 297.55384615384617 190.11893333333333 299.5780219780219 190.11893333333333 303.6263736263736 190.11893333333333 C 307.6747252747253 190.11893333333333 309.69890109890105 190.11893333333333 313.74725274725273 190.11893333333333 C 317.79560439560436 190.11893333333333 319.8197802197802 190.11893333333333 323.86813186813185 190.11893333333333 C 331.9648351648351 190.11893333333333 336.0131868131868 160.65226666666666 344.1098901098901 160.65226666666666 C 348.15824175824173 160.65226666666666 350.18241758241754 160.65226666666666 354.2307692307692 160.65226666666666 C 358.27912087912085 160.65226666666666 360.3032967032967 160.65226666666666 364.35164835164835 160.65226666666666 C 368.4 160.65226666666666 370.42417582417585 160.65226666666666 374.4725274725275 160.65226666666666 C 378.52087912087916 160.65226666666666 380.5450549450549 160.65226666666666 384.5934065934066 160.65226666666666 C 388.6417582417583 160.65226666666666 390.66593406593404 160.65226666666666 394.7142857142857 160.65226666666666 C 398.76263736263735 160.65226666666666 400.7868131868132 160.65226666666666 404.83516483516485 160.65226666666666 C 408.8835164835165 160.65226666666666 410.9076923076923 160.65226666666666 414.9560439560439 160.65226666666666 C 423.0527472527472 160.65226666666666 427.1010989010989 160.65226666666666 435.19780219780216 160.65226666666666 C 439.2461538461538 160.65226666666666 441.27032967032966 160.65226666666666 445.3186813186813 160.65226666666666 C 449.3670329670329 160.65226666666666 451.3912087912087 160.65226666666666 455.4395604395604 160.65226666666666 C 459.4879120879121 160.65226666666666 461.5120879120879 160.65226666666666 465.56043956043953 160.65226666666666 C 469.60879120879116 160.65226666666666 471.63296703296703 160.65226666666666 475.68131868131866 160.65226666666666 C 479.7296703296703 160.65226666666666 481.7538461538461 160.65226666666666 485.8021978021978 160.65226666666666 C 489.85054945054947 160.65226666666666 491.8747252747253 160.65226666666666 495.9230769230769 160.65226666666666 C 499.97142857142853 160.65226666666666 501.99560439560435 160.65226666666666 506.04395604395603 160.65226666666666 C 510.0923076923076 160.65226666666666 512.1164835164835 160.65226666666666 516.1648351648352 160.65226666666666 C 520.2131868131868 160.65226666666666 522.2373626373626 160.65226666666666 526.2857142857142 160.65226666666666 C 530.3340659340658 160.65226666666666 532.3582417582418 160.65226666666666 536.4065934065934 160.65226666666666 C 540.454945054945 160.65226666666666 542.4791208791208 160.65226666666666 546.5274725274725 160.65226666666666 C 550.5758241758242 160.65226666666666 552.6 160.65226666666666 556.6483516483516 160.65226666666666 C 560.6967032967033 160.65226666666666 562.7208791208791 160.65226666666666 566.7692307692307 160.65226666666666 C 570.8175824175823 160.65226666666666 572.8417582417582 160.65226666666666 576.8901098901099 160.65226666666666 C 580.9384615384615 160.65226666666666 582.9626373626373 160.65226666666666 587.010989010989 160.65226666666666 C 591.0593406593407 160.65226666666666 593.0835164835165 160.65226666666666 597.1318681318681 160.65226666666666 C 601.1802197802198 160.65226666666666 603.2043956043956 160.65226666666666 607.2527472527472 160.65226666666666 C 611.3010989010988 160.65226666666666 613.3252747252748 160.65226666666666 617.3736263736264 160.65226666666666 C 621.421978021978 160.65226666666666 623.4461538461538 160.65226666666666 627.4945054945055 160.65226666666666 C 631.5428571428571 160.65226666666666 633.5670329670329 160.65226666666666 637.6153846153846 160.65226666666666 C 641.6637362637363 160.65226666666666 643.6879120879121 160.65226666666666 647.7362637362637 160.65226666666666 C 651.7846153846153 160.65226666666666 653.8087912087911 160.65226666666666 657.8571428571428 160.65226666666666 C 661.9054945054944 160.65226666666666 663.9296703296702 160.65226666666666 667.978021978022 160.65226666666666 C 672.0263736263736 160.65226666666666 674.0505494505494 160.65226666666666 678.098901098901 160.65226666666666 C 682.1472527472527 160.65226666666666 684.1714285714286 160.65226666666666 688.2197802197802 160.65226666666666 C 692.2681318681318 160.65226666666666 694.2923076923076 160.65226666666666 698.3406593406593 160.65226666666666 C 702.389010989011 160.65226666666666 704.4131868131868 160.65226666666666 708.4615384615385 160.65226666666666 C 712.5098901098901 160.65226666666666 714.534065934066 160.65226666666666 718.5824175824175 160.65226666666666 C 722.6307692307693 160.65226666666666 724.6549450549451 160.65226666666666 728.7032967032967 160.65226666666666 C 732.7516483516483 160.65226666666666 734.7758241758241 160.65226666666666 738.8241758241758 160.65226666666666 C 742.8725274725275 160.65226666666666 744.8967032967033 160.65226666666666 748.945054945055 160.65226666666666 C 752.9934065934066 160.65226666666666 755.0175824175824 160.65226666666666 759.065934065934 160.65226666666666 C 763.1142857142856 160.65226666666666 765.1384615384616 160.65226666666666 769.1868131868132 160.65226666666666 C 773.2351648351648 160.65226666666666 775.2593406593406 160.65226666666666 779.3076923076923 160.65226666666666 C 783.3560439560439 160.65226666666666 785.3802197802197 160.65226666666666 789.4285714285714 160.65226666666666 C 793.4769230769231 160.65226666666666 795.5010989010989 160.65226666666666 799.5494505494505 160.65226666666666 C 803.5978021978021 160.65226666666666 805.621978021978 160.65226666666666 809.6703296703297 160.65226666666666 C 838.0087912087911 160.65226666666666 852.1780219780219 160.65226666666666 880.5164835164835 160.65226666666666 C 884.5648351648351 160.65226666666666 886.589010989011 160.65226666666666 890.6373626373626 160.65226666666666 C 894.6857142857143 160.65226666666666 896.7098901098901 160.65226666666666 900.7582417582418 160.65226666666666 C 904.8065934065933 160.65226666666666 906.8307692307692 160.65226666666666 910.8791208791208 160.65226666666666 C 914.9274725274724 160.65226666666666 921 160.65226666666666 921 160.65226666666666 L 931 160.65226666666666"
                                      stroke-linejoin="round" visibility="hidden" stroke-opacity="0.0001"
                                      stroke="rgb(192,192,192)" stroke-width="21" zIndex="2" class=" highcharts-tracker"
                                      style=""></path>
                            </g>
                            <g class="highcharts-markers highcharts-tracker" visibility="hidden" zIndex="0.1"
                               transform="translate(64,10) scale(1 1)" style="" clip-path="none"></g>
                            <g class="highcharts-series" visibility="hidden" zIndex="0.1"
                               transform="translate(64,10) scale(1 1)" clip-path="url(#highcharts-5)">
                                <path fill="none"
                                      d="M 0 203.32 C 0 203.32 6.072527472527472 203.32 10.12087912087912 203.32 C 14.169230769230769 203.32 16.193406593406593 203.32 20.24175824175824 203.32 C 24.29010989010989 203.32 26.31428571428571 203.32 30.36263736263736 203.32 C 34.41098901098901 203.32 36.435164835164834 203.32 40.48351648351648 203.32 C 44.53186813186814 203.32 46.55604395604395 203.32 50.604395604395606 203.32 C 54.65274725274725 203.32 56.676923076923075 203.32 60.72527472527472 203.32 C 64.77362637362637 203.32 66.7978021978022 203.32 70.84615384615384 203.32 C 74.89450549450548 203.32 76.91868131868132 203.32 80.96703296703296 203.32 C 85.01538461538462 203.32 87.03956043956045 203.32 91.08791208791209 203.32 C 95.13626373626374 203.32 97.16043956043956 203.32 101.20879120879121 203.32 C 153.83736263736265 203.32 180.15164835164833 203.32 232.78021978021977 203.32 C 236.82857142857142 203.32 238.85274725274726 203.32 242.9010989010989 203.32 C 246.94945054945055 203.32 248.97362637362636 203.32 253.02197802197801 203.32 C 257.07032967032967 203.32 259.0945054945055 203.32 263.1428571428571 203.32 C 267.19120879120874 203.32 269.21538461538455 203.32 273.26373626373623 203.32 C 277.31208791208786 203.32 279.33626373626373 203.32 283.38461538461536 203.32 C 287.432967032967 203.32 289.45714285714286 203.32 293.5054945054945 203.32 C 297.55384615384617 203.32 299.5780219780219 203.32 303.6263736263736 203.32 C 307.6747252747253 203.32 309.69890109890105 203.32 313.74725274725273 203.32 C 317.79560439560436 203.32 319.8197802197802 203.32 323.86813186813185 203.32 C 331.9648351648351 203.32 336.0131868131868 203.32 344.1098901098901 203.32 C 348.15824175824173 203.32 350.18241758241754 203.32 354.2307692307692 203.32 C 358.27912087912085 203.32 360.3032967032967 203.32 364.35164835164835 203.32 C 368.4 203.32 370.42417582417585 203.32 374.4725274725275 203.32 C 378.52087912087916 203.32 380.5450549450549 203.32 384.5934065934066 203.32 C 388.6417582417583 203.32 390.66593406593404 203.32 394.7142857142857 203.32 C 398.76263736263735 203.32 400.7868131868132 203.32 404.83516483516485 203.32 C 408.8835164835165 203.32 410.9076923076923 203.32 414.9560439560439 203.32 C 423.0527472527472 203.32 427.1010989010989 203.32 435.19780219780216 203.32 C 439.2461538461538 203.32 441.27032967032966 203.32 445.3186813186813 203.32 C 449.3670329670329 203.32 451.3912087912087 203.32 455.4395604395604 203.32 C 459.4879120879121 203.32 461.5120879120879 203.32 465.56043956043953 203.32 C 469.60879120879116 203.32 471.63296703296703 203.32 475.68131868131866 203.32 C 479.7296703296703 203.32 481.7538461538461 203.32 485.8021978021978 203.32 C 489.85054945054947 203.32 491.8747252747253 203.32 495.9230769230769 203.32 C 499.97142857142853 203.32 501.99560439560435 203.32 506.04395604395603 203.32 C 510.0923076923076 203.32 512.1164835164835 203.32 516.1648351648352 203.32 C 520.2131868131868 203.32 522.2373626373626 203.32 526.2857142857142 203.32 C 530.3340659340658 203.32 532.3582417582418 203.32 536.4065934065934 203.32 C 540.454945054945 203.32 542.4791208791208 203.32 546.5274725274725 203.32 C 550.5758241758242 203.32 552.6 203.32 556.6483516483516 203.32 C 560.6967032967033 203.32 562.7208791208791 203.32 566.7692307692307 203.32 C 570.8175824175823 203.32 572.8417582417582 203.32 576.8901098901099 203.32 C 580.9384615384615 203.32 582.9626373626373 203.32 587.010989010989 203.32 C 591.0593406593407 203.32 593.0835164835165 203.32 597.1318681318681 203.32 C 601.1802197802198 203.32 603.2043956043956 203.32 607.2527472527472 203.32 C 611.3010989010988 203.32 613.3252747252748 203.32 617.3736263736264 203.32 C 621.421978021978 203.32 623.4461538461538 203.32 627.4945054945055 203.32 C 631.5428571428571 203.32 633.5670329670329 203.32 637.6153846153846 203.32 C 641.6637362637363 203.32 643.6879120879121 203.32 647.7362637362637 203.32 C 651.7846153846153 203.32 653.8087912087911 203.32 657.8571428571428 203.32 C 661.9054945054944 203.32 663.9296703296702 203.32 667.978021978022 203.32 C 672.0263736263736 203.32 674.0505494505494 203.32 678.098901098901 203.32 C 682.1472527472527 203.32 684.1714285714286 203.32 688.2197802197802 203.32 C 692.2681318681318 203.32 694.2923076923076 203.32 698.3406593406593 203.32 C 702.389010989011 203.32 704.4131868131868 203.32 708.4615384615385 203.32 C 712.5098901098901 203.32 714.534065934066 203.32 718.5824175824175 203.32 C 722.6307692307693 203.32 724.6549450549451 203.32 728.7032967032967 203.32 C 732.7516483516483 203.32 734.7758241758241 203.32 738.8241758241758 203.32 C 742.8725274725275 203.32 744.8967032967033 203.32 748.945054945055 203.32 C 752.9934065934066 203.32 755.0175824175824 203.32 759.065934065934 203.32 C 763.1142857142856 203.32 765.1384615384616 203.32 769.1868131868132 203.32 C 773.2351648351648 203.32 775.2593406593406 203.32 779.3076923076923 203.32 C 783.3560439560439 203.32 785.3802197802197 203.32 789.4285714285714 203.32 C 793.4769230769231 203.32 795.5010989010989 203.32 799.5494505494505 203.32 C 803.5978021978021 203.32 805.621978021978 203.32 809.6703296703297 203.32 C 838.0087912087911 203.32 852.1780219780219 203.32 880.5164835164835 203.32 C 884.5648351648351 203.32 886.589010989011 203.32 890.6373626373626 203.32 C 894.6857142857143 203.32 896.7098901098901 203.32 900.7582417582418 203.32 C 904.8065934065933 203.32 906.8307692307692 203.32 910.8791208791208 203.32 C 914.9274725274724 203.32 921 203.32 921 203.32"
                                      stroke="#AF4E96" stroke-width="1" zIndex="1"></path>
                                <path fill="none"
                                      d="M -10 203.32 L 0 203.32 C 0 203.32 6.072527472527472 203.32 10.12087912087912 203.32 C 14.169230769230769 203.32 16.193406593406593 203.32 20.24175824175824 203.32 C 24.29010989010989 203.32 26.31428571428571 203.32 30.36263736263736 203.32 C 34.41098901098901 203.32 36.435164835164834 203.32 40.48351648351648 203.32 C 44.53186813186814 203.32 46.55604395604395 203.32 50.604395604395606 203.32 C 54.65274725274725 203.32 56.676923076923075 203.32 60.72527472527472 203.32 C 64.77362637362637 203.32 66.7978021978022 203.32 70.84615384615384 203.32 C 74.89450549450548 203.32 76.91868131868132 203.32 80.96703296703296 203.32 C 85.01538461538462 203.32 87.03956043956045 203.32 91.08791208791209 203.32 C 95.13626373626374 203.32 97.16043956043956 203.32 101.20879120879121 203.32 C 153.83736263736265 203.32 180.15164835164833 203.32 232.78021978021977 203.32 C 236.82857142857142 203.32 238.85274725274726 203.32 242.9010989010989 203.32 C 246.94945054945055 203.32 248.97362637362636 203.32 253.02197802197801 203.32 C 257.07032967032967 203.32 259.0945054945055 203.32 263.1428571428571 203.32 C 267.19120879120874 203.32 269.21538461538455 203.32 273.26373626373623 203.32 C 277.31208791208786 203.32 279.33626373626373 203.32 283.38461538461536 203.32 C 287.432967032967 203.32 289.45714285714286 203.32 293.5054945054945 203.32 C 297.55384615384617 203.32 299.5780219780219 203.32 303.6263736263736 203.32 C 307.6747252747253 203.32 309.69890109890105 203.32 313.74725274725273 203.32 C 317.79560439560436 203.32 319.8197802197802 203.32 323.86813186813185 203.32 C 331.9648351648351 203.32 336.0131868131868 203.32 344.1098901098901 203.32 C 348.15824175824173 203.32 350.18241758241754 203.32 354.2307692307692 203.32 C 358.27912087912085 203.32 360.3032967032967 203.32 364.35164835164835 203.32 C 368.4 203.32 370.42417582417585 203.32 374.4725274725275 203.32 C 378.52087912087916 203.32 380.5450549450549 203.32 384.5934065934066 203.32 C 388.6417582417583 203.32 390.66593406593404 203.32 394.7142857142857 203.32 C 398.76263736263735 203.32 400.7868131868132 203.32 404.83516483516485 203.32 C 408.8835164835165 203.32 410.9076923076923 203.32 414.9560439560439 203.32 C 423.0527472527472 203.32 427.1010989010989 203.32 435.19780219780216 203.32 C 439.2461538461538 203.32 441.27032967032966 203.32 445.3186813186813 203.32 C 449.3670329670329 203.32 451.3912087912087 203.32 455.4395604395604 203.32 C 459.4879120879121 203.32 461.5120879120879 203.32 465.56043956043953 203.32 C 469.60879120879116 203.32 471.63296703296703 203.32 475.68131868131866 203.32 C 479.7296703296703 203.32 481.7538461538461 203.32 485.8021978021978 203.32 C 489.85054945054947 203.32 491.8747252747253 203.32 495.9230769230769 203.32 C 499.97142857142853 203.32 501.99560439560435 203.32 506.04395604395603 203.32 C 510.0923076923076 203.32 512.1164835164835 203.32 516.1648351648352 203.32 C 520.2131868131868 203.32 522.2373626373626 203.32 526.2857142857142 203.32 C 530.3340659340658 203.32 532.3582417582418 203.32 536.4065934065934 203.32 C 540.454945054945 203.32 542.4791208791208 203.32 546.5274725274725 203.32 C 550.5758241758242 203.32 552.6 203.32 556.6483516483516 203.32 C 560.6967032967033 203.32 562.7208791208791 203.32 566.7692307692307 203.32 C 570.8175824175823 203.32 572.8417582417582 203.32 576.8901098901099 203.32 C 580.9384615384615 203.32 582.9626373626373 203.32 587.010989010989 203.32 C 591.0593406593407 203.32 593.0835164835165 203.32 597.1318681318681 203.32 C 601.1802197802198 203.32 603.2043956043956 203.32 607.2527472527472 203.32 C 611.3010989010988 203.32 613.3252747252748 203.32 617.3736263736264 203.32 C 621.421978021978 203.32 623.4461538461538 203.32 627.4945054945055 203.32 C 631.5428571428571 203.32 633.5670329670329 203.32 637.6153846153846 203.32 C 641.6637362637363 203.32 643.6879120879121 203.32 647.7362637362637 203.32 C 651.7846153846153 203.32 653.8087912087911 203.32 657.8571428571428 203.32 C 661.9054945054944 203.32 663.9296703296702 203.32 667.978021978022 203.32 C 672.0263736263736 203.32 674.0505494505494 203.32 678.098901098901 203.32 C 682.1472527472527 203.32 684.1714285714286 203.32 688.2197802197802 203.32 C 692.2681318681318 203.32 694.2923076923076 203.32 698.3406593406593 203.32 C 702.389010989011 203.32 704.4131868131868 203.32 708.4615384615385 203.32 C 712.5098901098901 203.32 714.534065934066 203.32 718.5824175824175 203.32 C 722.6307692307693 203.32 724.6549450549451 203.32 728.7032967032967 203.32 C 732.7516483516483 203.32 734.7758241758241 203.32 738.8241758241758 203.32 C 742.8725274725275 203.32 744.8967032967033 203.32 748.945054945055 203.32 C 752.9934065934066 203.32 755.0175824175824 203.32 759.065934065934 203.32 C 763.1142857142856 203.32 765.1384615384616 203.32 769.1868131868132 203.32 C 773.2351648351648 203.32 775.2593406593406 203.32 779.3076923076923 203.32 C 783.3560439560439 203.32 785.3802197802197 203.32 789.4285714285714 203.32 C 793.4769230769231 203.32 795.5010989010989 203.32 799.5494505494505 203.32 C 803.5978021978021 203.32 805.621978021978 203.32 809.6703296703297 203.32 C 838.0087912087911 203.32 852.1780219780219 203.32 880.5164835164835 203.32 C 884.5648351648351 203.32 886.589010989011 203.32 890.6373626373626 203.32 C 894.6857142857143 203.32 896.7098901098901 203.32 900.7582417582418 203.32 C 904.8065934065933 203.32 906.8307692307692 203.32 910.8791208791208 203.32 C 914.9274725274724 203.32 921 203.32 921 203.32 L 931 203.32"
                                      stroke-linejoin="round" visibility="hidden" stroke-opacity="0.0001"
                                      stroke="rgb(192,192,192)" stroke-width="21" zIndex="2" class=" highcharts-tracker"
                                      style=""></path>
                            </g>
                            <g class="highcharts-markers highcharts-tracker" visibility="hidden" zIndex="0.1"
                               transform="translate(64,10) scale(1 1)" style="" clip-path="none"></g>
                            <g class="highcharts-series" visibility="hidden" zIndex="0.1"
                               transform="translate(64,10) scale(1 1)" clip-path="url(#highcharts-5)">
                                <path fill="none"
                                      d="M 0 205.91306666666668 C 0 205.91306666666668 6.072527472527472 205.91306666666668 10.12087912087912 205.91306666666668 C 14.169230769230769 205.91306666666668 16.193406593406593 205.91306666666668 20.24175824175824 205.91306666666668 C 24.29010989010989 205.91306666666668 26.31428571428571 205.91306666666668 30.36263736263736 205.91306666666668 C 34.41098901098901 205.91306666666668 36.435164835164834 205.91306666666668 40.48351648351648 205.91306666666668 C 44.53186813186814 205.91306666666668 46.55604395604395 205.91306666666668 50.604395604395606 205.91306666666668 C 54.65274725274725 205.91306666666668 56.676923076923075 205.91306666666668 60.72527472527472 205.91306666666668 C 64.77362637362637 205.91306666666668 66.7978021978022 205.91306666666668 70.84615384615384 205.91306666666668 C 74.89450549450548 205.91306666666668 76.91868131868132 205.91306666666668 80.96703296703296 205.91306666666668 C 85.01538461538462 205.91306666666668 87.03956043956045 205.91306666666668 91.08791208791209 205.91306666666668 C 95.13626373626374 205.91306666666668 97.16043956043956 205.91306666666668 101.20879120879121 205.91306666666668 C 153.83736263736265 205.91306666666668 180.15164835164833 205.91306666666668 232.78021978021977 205.91306666666668 C 236.82857142857142 205.91306666666668 238.85274725274726 205.91306666666668 242.9010989010989 205.91306666666668 C 246.94945054945055 205.91306666666668 248.97362637362636 205.91306666666668 253.02197802197801 205.91306666666668 C 257.07032967032967 205.91306666666668 259.0945054945055 205.91306666666668 263.1428571428571 205.91306666666668 C 267.19120879120874 205.91306666666668 269.21538461538455 205.91306666666668 273.26373626373623 205.91306666666668 C 277.31208791208786 205.91306666666668 279.33626373626373 205.91306666666668 283.38461538461536 205.91306666666668 C 287.432967032967 205.91306666666668 289.45714285714286 205.91306666666668 293.5054945054945 205.91306666666668 C 297.55384615384617 205.91306666666668 299.5780219780219 205.91306666666668 303.6263736263736 205.91306666666668 C 307.6747252747253 205.91306666666668 309.69890109890105 205.91306666666668 313.74725274725273 205.91306666666668 C 317.79560439560436 205.91306666666668 319.8197802197802 205.91306666666668 323.86813186813185 205.91306666666668 C 331.9648351648351 205.91306666666668 336.0131868131868 205.91306666666668 344.1098901098901 205.91306666666668 C 348.15824175824173 205.91306666666668 350.18241758241754 205.91306666666668 354.2307692307692 205.91306666666668 C 358.27912087912085 205.91306666666668 360.3032967032967 205.91306666666668 364.35164835164835 205.91306666666668 C 368.4 205.91306666666668 370.42417582417585 205.91306666666668 374.4725274725275 205.91306666666668 C 378.52087912087916 205.91306666666668 380.5450549450549 205.91306666666668 384.5934065934066 205.91306666666668 C 388.6417582417583 205.91306666666668 390.66593406593404 205.91306666666668 394.7142857142857 205.91306666666668 C 398.76263736263735 205.91306666666668 400.7868131868132 205.91306666666668 404.83516483516485 205.91306666666668 C 408.8835164835165 205.91306666666668 410.9076923076923 205.91306666666668 414.9560439560439 205.91306666666668 C 423.0527472527472 205.91306666666668 427.1010989010989 205.91306666666668 435.19780219780216 205.91306666666668 C 439.2461538461538 205.91306666666668 441.27032967032966 205.91306666666668 445.3186813186813 205.91306666666668 C 449.3670329670329 205.91306666666668 451.3912087912087 205.91306666666668 455.4395604395604 205.91306666666668 C 459.4879120879121 205.91306666666668 461.5120879120879 205.91306666666668 465.56043956043953 205.91306666666668 C 469.60879120879116 205.91306666666668 471.63296703296703 205.91306666666668 475.68131868131866 205.91306666666668 C 479.7296703296703 205.91306666666668 481.7538461538461 205.91306666666668 485.8021978021978 205.91306666666668 C 489.85054945054947 205.91306666666668 491.8747252747253 205.91306666666668 495.9230769230769 205.91306666666668 C 499.97142857142853 205.91306666666668 501.99560439560435 205.91306666666668 506.04395604395603 205.91306666666668 C 510.0923076923076 205.91306666666668 512.1164835164835 205.91306666666668 516.1648351648352 205.91306666666668 C 520.2131868131868 205.91306666666668 522.2373626373626 205.91306666666668 526.2857142857142 205.91306666666668 C 530.3340659340658 205.91306666666668 532.3582417582418 205.91306666666668 536.4065934065934 205.91306666666668 C 540.454945054945 205.91306666666668 542.4791208791208 205.91306666666668 546.5274725274725 205.91306666666668 C 550.5758241758242 205.91306666666668 552.6 205.91306666666668 556.6483516483516 205.91306666666668 C 560.6967032967033 205.91306666666668 562.7208791208791 205.91306666666668 566.7692307692307 205.91306666666668 C 570.8175824175823 205.91306666666668 572.8417582417582 205.91306666666668 576.8901098901099 205.91306666666668 C 580.9384615384615 205.91306666666668 582.9626373626373 205.91306666666668 587.010989010989 205.91306666666668 C 591.0593406593407 205.91306666666668 593.0835164835165 205.91306666666668 597.1318681318681 205.91306666666668 C 601.1802197802198 205.91306666666668 603.2043956043956 205.91306666666668 607.2527472527472 205.91306666666668 C 611.3010989010988 205.91306666666668 613.3252747252748 205.91306666666668 617.3736263736264 205.91306666666668 C 621.421978021978 205.91306666666668 623.4461538461538 205.91306666666668 627.4945054945055 205.91306666666668 C 631.5428571428571 205.91306666666668 633.5670329670329 205.91306666666668 637.6153846153846 205.91306666666668 C 641.6637362637363 205.91306666666668 643.6879120879121 205.91306666666668 647.7362637362637 205.91306666666668 C 651.7846153846153 205.91306666666668 653.8087912087911 205.91306666666668 657.8571428571428 205.91306666666668 C 661.9054945054944 205.91306666666668 663.9296703296702 205.91306666666668 667.978021978022 205.91306666666668 C 672.0263736263736 205.91306666666668 674.0505494505494 205.91306666666668 678.098901098901 205.91306666666668 C 682.1472527472527 205.91306666666668 684.1714285714286 205.91306666666668 688.2197802197802 205.91306666666668 C 692.2681318681318 205.91306666666668 694.2923076923076 205.91306666666668 698.3406593406593 205.91306666666668 C 702.389010989011 205.91306666666668 704.4131868131868 205.91306666666668 708.4615384615385 205.91306666666668 C 712.5098901098901 205.91306666666668 714.534065934066 205.91306666666668 718.5824175824175 205.91306666666668 C 722.6307692307693 205.91306666666668 724.6549450549451 205.91306666666668 728.7032967032967 205.91306666666668 C 732.7516483516483 205.91306666666668 734.7758241758241 205.91306666666668 738.8241758241758 205.91306666666668 C 742.8725274725275 205.91306666666668 744.8967032967033 205.91306666666668 748.945054945055 205.91306666666668 C 752.9934065934066 205.91306666666668 755.0175824175824 205.91306666666668 759.065934065934 205.91306666666668 C 763.1142857142856 205.91306666666668 765.1384615384616 205.91306666666668 769.1868131868132 205.91306666666668 C 773.2351648351648 205.91306666666668 775.2593406593406 205.91306666666668 779.3076923076923 205.91306666666668 C 783.3560439560439 205.91306666666668 785.3802197802197 205.91306666666668 789.4285714285714 205.91306666666668 C 793.4769230769231 205.91306666666668 795.5010989010989 205.91306666666668 799.5494505494505 205.91306666666668 C 803.5978021978021 205.91306666666668 805.621978021978 205.91306666666668 809.6703296703297 205.91306666666668 C 838.0087912087911 205.91306666666668 852.1780219780219 205.91306666666668 880.5164835164835 205.91306666666668 C 884.5648351648351 205.91306666666668 886.589010989011 205.91306666666668 890.6373626373626 205.91306666666668 C 894.6857142857143 205.91306666666668 896.7098901098901 205.91306666666668 900.7582417582418 205.91306666666668 C 904.8065934065933 205.91306666666668 906.8307692307692 205.91306666666668 910.8791208791208 205.91306666666668 C 914.9274725274724 205.91306666666668 921 205.91306666666668 921 205.91306666666668"
                                      stroke="#1aadce" stroke-width="1" zIndex="1"></path>
                                <path fill="none"
                                      d="M -10 205.91306666666668 L 0 205.91306666666668 C 0 205.91306666666668 6.072527472527472 205.91306666666668 10.12087912087912 205.91306666666668 C 14.169230769230769 205.91306666666668 16.193406593406593 205.91306666666668 20.24175824175824 205.91306666666668 C 24.29010989010989 205.91306666666668 26.31428571428571 205.91306666666668 30.36263736263736 205.91306666666668 C 34.41098901098901 205.91306666666668 36.435164835164834 205.91306666666668 40.48351648351648 205.91306666666668 C 44.53186813186814 205.91306666666668 46.55604395604395 205.91306666666668 50.604395604395606 205.91306666666668 C 54.65274725274725 205.91306666666668 56.676923076923075 205.91306666666668 60.72527472527472 205.91306666666668 C 64.77362637362637 205.91306666666668 66.7978021978022 205.91306666666668 70.84615384615384 205.91306666666668 C 74.89450549450548 205.91306666666668 76.91868131868132 205.91306666666668 80.96703296703296 205.91306666666668 C 85.01538461538462 205.91306666666668 87.03956043956045 205.91306666666668 91.08791208791209 205.91306666666668 C 95.13626373626374 205.91306666666668 97.16043956043956 205.91306666666668 101.20879120879121 205.91306666666668 C 153.83736263736265 205.91306666666668 180.15164835164833 205.91306666666668 232.78021978021977 205.91306666666668 C 236.82857142857142 205.91306666666668 238.85274725274726 205.91306666666668 242.9010989010989 205.91306666666668 C 246.94945054945055 205.91306666666668 248.97362637362636 205.91306666666668 253.02197802197801 205.91306666666668 C 257.07032967032967 205.91306666666668 259.0945054945055 205.91306666666668 263.1428571428571 205.91306666666668 C 267.19120879120874 205.91306666666668 269.21538461538455 205.91306666666668 273.26373626373623 205.91306666666668 C 277.31208791208786 205.91306666666668 279.33626373626373 205.91306666666668 283.38461538461536 205.91306666666668 C 287.432967032967 205.91306666666668 289.45714285714286 205.91306666666668 293.5054945054945 205.91306666666668 C 297.55384615384617 205.91306666666668 299.5780219780219 205.91306666666668 303.6263736263736 205.91306666666668 C 307.6747252747253 205.91306666666668 309.69890109890105 205.91306666666668 313.74725274725273 205.91306666666668 C 317.79560439560436 205.91306666666668 319.8197802197802 205.91306666666668 323.86813186813185 205.91306666666668 C 331.9648351648351 205.91306666666668 336.0131868131868 205.91306666666668 344.1098901098901 205.91306666666668 C 348.15824175824173 205.91306666666668 350.18241758241754 205.91306666666668 354.2307692307692 205.91306666666668 C 358.27912087912085 205.91306666666668 360.3032967032967 205.91306666666668 364.35164835164835 205.91306666666668 C 368.4 205.91306666666668 370.42417582417585 205.91306666666668 374.4725274725275 205.91306666666668 C 378.52087912087916 205.91306666666668 380.5450549450549 205.91306666666668 384.5934065934066 205.91306666666668 C 388.6417582417583 205.91306666666668 390.66593406593404 205.91306666666668 394.7142857142857 205.91306666666668 C 398.76263736263735 205.91306666666668 400.7868131868132 205.91306666666668 404.83516483516485 205.91306666666668 C 408.8835164835165 205.91306666666668 410.9076923076923 205.91306666666668 414.9560439560439 205.91306666666668 C 423.0527472527472 205.91306666666668 427.1010989010989 205.91306666666668 435.19780219780216 205.91306666666668 C 439.2461538461538 205.91306666666668 441.27032967032966 205.91306666666668 445.3186813186813 205.91306666666668 C 449.3670329670329 205.91306666666668 451.3912087912087 205.91306666666668 455.4395604395604 205.91306666666668 C 459.4879120879121 205.91306666666668 461.5120879120879 205.91306666666668 465.56043956043953 205.91306666666668 C 469.60879120879116 205.91306666666668 471.63296703296703 205.91306666666668 475.68131868131866 205.91306666666668 C 479.7296703296703 205.91306666666668 481.7538461538461 205.91306666666668 485.8021978021978 205.91306666666668 C 489.85054945054947 205.91306666666668 491.8747252747253 205.91306666666668 495.9230769230769 205.91306666666668 C 499.97142857142853 205.91306666666668 501.99560439560435 205.91306666666668 506.04395604395603 205.91306666666668 C 510.0923076923076 205.91306666666668 512.1164835164835 205.91306666666668 516.1648351648352 205.91306666666668 C 520.2131868131868 205.91306666666668 522.2373626373626 205.91306666666668 526.2857142857142 205.91306666666668 C 530.3340659340658 205.91306666666668 532.3582417582418 205.91306666666668 536.4065934065934 205.91306666666668 C 540.454945054945 205.91306666666668 542.4791208791208 205.91306666666668 546.5274725274725 205.91306666666668 C 550.5758241758242 205.91306666666668 552.6 205.91306666666668 556.6483516483516 205.91306666666668 C 560.6967032967033 205.91306666666668 562.7208791208791 205.91306666666668 566.7692307692307 205.91306666666668 C 570.8175824175823 205.91306666666668 572.8417582417582 205.91306666666668 576.8901098901099 205.91306666666668 C 580.9384615384615 205.91306666666668 582.9626373626373 205.91306666666668 587.010989010989 205.91306666666668 C 591.0593406593407 205.91306666666668 593.0835164835165 205.91306666666668 597.1318681318681 205.91306666666668 C 601.1802197802198 205.91306666666668 603.2043956043956 205.91306666666668 607.2527472527472 205.91306666666668 C 611.3010989010988 205.91306666666668 613.3252747252748 205.91306666666668 617.3736263736264 205.91306666666668 C 621.421978021978 205.91306666666668 623.4461538461538 205.91306666666668 627.4945054945055 205.91306666666668 C 631.5428571428571 205.91306666666668 633.5670329670329 205.91306666666668 637.6153846153846 205.91306666666668 C 641.6637362637363 205.91306666666668 643.6879120879121 205.91306666666668 647.7362637362637 205.91306666666668 C 651.7846153846153 205.91306666666668 653.8087912087911 205.91306666666668 657.8571428571428 205.91306666666668 C 661.9054945054944 205.91306666666668 663.9296703296702 205.91306666666668 667.978021978022 205.91306666666668 C 672.0263736263736 205.91306666666668 674.0505494505494 205.91306666666668 678.098901098901 205.91306666666668 C 682.1472527472527 205.91306666666668 684.1714285714286 205.91306666666668 688.2197802197802 205.91306666666668 C 692.2681318681318 205.91306666666668 694.2923076923076 205.91306666666668 698.3406593406593 205.91306666666668 C 702.389010989011 205.91306666666668 704.4131868131868 205.91306666666668 708.4615384615385 205.91306666666668 C 712.5098901098901 205.91306666666668 714.534065934066 205.91306666666668 718.5824175824175 205.91306666666668 C 722.6307692307693 205.91306666666668 724.6549450549451 205.91306666666668 728.7032967032967 205.91306666666668 C 732.7516483516483 205.91306666666668 734.7758241758241 205.91306666666668 738.8241758241758 205.91306666666668 C 742.8725274725275 205.91306666666668 744.8967032967033 205.91306666666668 748.945054945055 205.91306666666668 C 752.9934065934066 205.91306666666668 755.0175824175824 205.91306666666668 759.065934065934 205.91306666666668 C 763.1142857142856 205.91306666666668 765.1384615384616 205.91306666666668 769.1868131868132 205.91306666666668 C 773.2351648351648 205.91306666666668 775.2593406593406 205.91306666666668 779.3076923076923 205.91306666666668 C 783.3560439560439 205.91306666666668 785.3802197802197 205.91306666666668 789.4285714285714 205.91306666666668 C 793.4769230769231 205.91306666666668 795.5010989010989 205.91306666666668 799.5494505494505 205.91306666666668 C 803.5978021978021 205.91306666666668 805.621978021978 205.91306666666668 809.6703296703297 205.91306666666668 C 838.0087912087911 205.91306666666668 852.1780219780219 205.91306666666668 880.5164835164835 205.91306666666668 C 884.5648351648351 205.91306666666668 886.589010989011 205.91306666666668 890.6373626373626 205.91306666666668 C 894.6857142857143 205.91306666666668 896.7098901098901 205.91306666666668 900.7582417582418 205.91306666666668 C 904.8065934065933 205.91306666666668 906.8307692307692 205.91306666666668 910.8791208791208 205.91306666666668 C 914.9274725274724 205.91306666666668 921 205.91306666666668 921 205.91306666666668 L 931 205.91306666666668"
                                      stroke-linejoin="round" visibility="hidden" stroke-opacity="0.0001"
                                      stroke="rgb(192,192,192)" stroke-width="21" zIndex="2" class=" highcharts-tracker"
                                      style=""></path>
                            </g>
                            <g class="highcharts-markers highcharts-tracker" visibility="hidden" zIndex="0.1"
                               transform="translate(64,10) scale(1 1)" style="" clip-path="none"></g>
                        </g>
                        <g class="highcharts-legend" zIndex="7" transform="translate(995,10)">
                            <rect rx="5" ry="5" fill="none" x="0.5" y="0.5" width="84" height="70" stroke="#6fb3e0"
                                  stroke-width="1" visibility="visible"></rect>
                            <g zIndex="1">
                                <g>
                                    <g class="highcharts-legend-item" zIndex="1" transform="translate(8,3)">
                                        <path fill="none" d="M 0 11 L 16 11" stroke="#2091CF" stroke-width="1"></path>
                                        <text x="21" y="15"
                                              style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#274b6d;fill:#274b6d;"
                                              text-anchor="start" zIndex="2">
                                            <tspan x="21">Total</tspan>
                                        </text>
                                    </g>
                                    <g class="highcharts-legend-item" zIndex="1" transform="translate(8,15)">
                                        <path fill="none" d="M 0 11 L 16 11" stroke="#CCC" stroke-width="1"></path>
                                        <text x="21" y="15"
                                              style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#CCC;fill:#CCC;"
                                              text-anchor="start" zIndex="2">
                                            <tspan x="21">PERFSTAT</tspan>
                                        </text>
                                    </g>
                                    <g class="highcharts-legend-item" zIndex="1" transform="translate(8,27)">
                                        <path fill="none" d="M 0 11 L 16 11" stroke="#CCC" stroke-width="1"></path>
                                        <text x="21" y="15"
                                              style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#CCC;fill:#CCC;"
                                              text-anchor="start" zIndex="2">
                                            <tspan x="21">SYSTEM</tspan>
                                        </text>
                                    </g>
                                    <g class="highcharts-legend-item" zIndex="1" transform="translate(8,39)">
                                        <path fill="none" d="M 0 11 L 16 11" stroke="#CCC" stroke-width="1"></path>
                                        <text x="21" y="15"
                                              style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#CCC;fill:#CCC;"
                                              text-anchor="start" zIndex="2">
                                            <tspan x="21">TEMP</tspan>
                                        </text>
                                    </g>
                                    <g class="highcharts-legend-item" zIndex="1" transform="translate(8,51)">
                                        <path fill="none" d="M 0 11 L 16 11" stroke="#CCC" stroke-width="1"></path>
                                        <text x="21" y="15"
                                              style="font-family:Open Sans;font-size:12px;cursor:pointer;color:#CCC;fill:#CCC;"
                                              text-anchor="start" zIndex="2">
                                            <tspan x="21">UNDOTBS1</tspan>
                                        </text>
                                    </g>
                                </g>
                            </g>
                        </g>
                        <g class="highcharts-axis-labels" zIndex="7">
                            <text x="124.72527472527472" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="124.72527472527472">24. Feb</tspan>
                            </text>
                            <text x="195.57142857142856" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="195.57142857142856">3. Mar</tspan>
                            </text>
                            <text x="266.4175824175824" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="266.4175824175824">10. Mar</tspan>
                            </text>
                            <text x="337.26373626373623" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="337.26373626373623">17. Mar</tspan>
                            </text>
                            <text x="408.1098901098901" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="408.1098901098901">24. Mar</tspan>
                            </text>
                            <text x="478.9560439560439" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="478.9560439560439">31. Mar</tspan>
                            </text>
                            <text x="549.8021978021977" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="549.8021978021977">7. Apr</tspan>
                            </text>
                            <text x="620.6483516483516" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="620.6483516483516">14. Apr</tspan>
                            </text>
                            <text x="691.4945054945055" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="691.4945054945055">21. Apr</tspan>
                            </text>
                            <text x="762.3406593406593" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="762.3406593406593">28. Apr</tspan>
                            </text>
                            <text x="833.1868131868132" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="833.1868131868132">5. May</tspan>
                            </text>
                            <text x="904.032967032967" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="904.032967032967">12. May</tspan>
                            </text>
                            <text x="974.8791208791208" y="246"
                                  style="font-family:Open Sans;font-size:10px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="middle" opacity="1">
                                <tspan x="974.8791208791208">19. May</tspan>
                            </text>
                        </g>
                        <g class="highcharts-axis-labels" zIndex="7">
                            <text x="56" y="237"
                                  style="font-family:Open Sans;font-size:11px;width:340px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="end" opacity="1">
                                <tspan x="56">0k</tspan>
                            </text>
                            <text x="56" y="163.33333333333334"
                                  style="font-family:Open Sans;font-size:11px;width:340px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="end" opacity="1">
                                <tspan x="56">2.5k</tspan>
                            </text>
                            <text x="56" y="89.66666666666669"
                                  style="font-family:Open Sans;font-size:11px;width:340px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="end" opacity="1">
                                <tspan x="56">5k</tspan>
                            </text>
                            <text x="56" y="16"
                                  style="font-family:Open Sans;font-size:11px;width:340px;color:#666;cursor:default;line-height:14px;fill:#666;"
                                  text-anchor="end" opacity="1">
                                <tspan x="56">7.5k</tspan>
                            </text>
                        </g>
                        <g class="highcharts-tooltip" zIndex="8" style="cursor:default;padding:0;white-space:nowrap;"
                           visibility="visible" transform="translate(46,115)" opacity="1">
                            <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="107" height="44" fill-opacity="0.85"
                                  isShadow="true" stroke="black" stroke-opacity="0.049999999999999996" stroke-width="5"
                                  transform="translate(1, 1)"></rect>
                            <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="107" height="44" fill-opacity="0.85"
                                  isShadow="true" stroke="black" stroke-opacity="0.09999999999999999" stroke-width="3"
                                  transform="translate(1, 1)"></rect>
                            <rect rx="3" ry="3" fill="none" x="0.5" y="0.5" width="107" height="44" fill-opacity="0.85"
                                  isShadow="true" stroke="black" stroke-opacity="0.15" stroke-width="1"
                                  transform="translate(1, 1)"></rect>
                            <rect rx="3" ry="3" fill="rgb(255,255,255)" x="0.5" y="0.5" width="107" height="44"
                                  fill-opacity="0.85" stroke="#2091CF" stroke-width="1" anchorX="119.5"
                                  anchorY="29"></rect>
                            <text x="8" y="21" style="font-family:Open Sans;font-size:12px;color:#333333;fill:#333333;"
                                  zIndex="1">
                                <tspan style="font-size: 10px" x="8">2014年02月28日</tspan>
                                <tspan style="fill:#2091CF" x="8" dy="16">Total</tspan>
                                <tspan dx="0">:</tspan>
                                <tspan style="font-weight:bold" dx="0">2,960MB</tspan>
                            </text>
                        </g>
                        <text x="1080" y="253"
                              style="font-family:Open Sans;font-size:9px;cursor:pointer;color:#909090;fill:#909090;"
                              text-anchor="end" zIndex="8">
                            <tspan x="1080">woqutech.com</tspan>
                        </text>
                    </svg>
                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-default transparent">
        <div class="panel-heading">
            <h4 class="panel-title"><i class="icon-hand-right"></i>使用情况 <span
                    class="label label-primary">当天 2014年05月19日</span></h4>
        </div>
        <div class="panel-body">
            <table id="ID-space-table-detail" class="table table-bordered table-hover">
                <thead>
                <tr>
                    <th>名称</th>
                    <th>类型</th>
                    <th>force logging</th>
                    <th>logging</th>
                    <th>物理大小 / MB</th>
                    <th>实际使用 / MB</th>
                    <th>剩余大小 / MB</th>
                    <th>剩余比例</th>
                    <th>日增长 / MB</th>
                    <th>剩余使用天数</th>
                    <th>状态</th>
                </tr>
                </thead>
                <tbody>
                <tr class=''>
                    <td>SYSTEM</td>
                    <td>PERMANENT</td>
                    <td>NO</td>
                    <td>LOGGING</td>
                    <td>2048</td>
                    <td> 173</td>
                    <td> 1874</td>
                    <td>
                        <div class="progress no-margin" data-percent="91.53%">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow=" 91.53 "
                                 aria-valuemin="0" aria-valuemax="100" style="width:  91.53% ;">
                                <span> 91.53% </span>
                            </div>
                        </div>
                    </td>
                    <td>0</td>
                    <td></td>
                    <td class="hidden-phone">
                        <span class='label label-state b-success '>ONLINE</span>
                    </td>
                </tr>
                <tr class=''>
                    <td>PERFSTAT</td>
                    <td>PERMANENT</td>
                    <td>NO</td>
                    <td>LOGGING</td>
                    <td>4072</td>
                    <td> 834</td>
                    <td> 3237</td>
                    <td>
                        <div class="progress no-margin" data-percent="79.5%">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow=" 79.5 "
                                 aria-valuemin="0" aria-valuemax="100" style="width:  79.5% ;">
                                <span> 79.5% </span>
                            </div>
                        </div>
                    </td>
                    <td>4</td>
                    <td> 超过1年</td>
                    <td class="hidden-phone">
                        <span class='label label-state b-success '>ONLINE</span>
                    </td>
                </tr>
                <tr class=''>
                    <td>TEMP</td>
                    <td>TEMPORARY</td>
                    <td>NO</td>
                    <td>NOLOGGING</td>
                    <td>600</td>
                    <td> -</td>
                    <td> -</td>
                    <td>
                        -
                    </td>
                    <td>-</td>
                    <td>-</td>
                    <td class="hidden-phone">
                        <span class='label label-state b-success '>ONLINE</span>
                    </td>
                </tr>
                <tr class=''>
                    <td>UNDOTBS1</td>
                    <td>UNDO</td>
                    <td>NO</td>
                    <td>LOGGING</td>
                    <td>512</td>
                    <td> -</td>
                    <td> -</td>
                    <td>
                        -
                    </td>
                    <td>-</td>
                    <td>-</td>
                    <td class="hidden-phone">
                        <span class='label label-state b-success '>ONLINE</span>
                    </td>
                </tr>
                <tr class="info">
                    <td colspan="4" style="text-align:center;">Total</td>
                    <td id="ID-total-physical">7232</td>
                    <td>1007</td>
                    <td>5111</td>
                    <td>
                        <div class="progress no-margin" data-percent='85.52%'>
                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow='85.52'
                                 aria-valuemin="0" aria-valuemax="100" style='width: 85.52%;'>
                                <span>85.52%</span>
                            </div>
                        </div>
                    </td>
                    <td colspan="3">4</td>
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

<div class="panel panel-default transparent space-onlineRedoLog">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="icon-file"></i>Online Redo Log</h3>

        <div class="panel-toolbar no-border">总大小:300 MB</div>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_onlineRedoLog">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_onlineRedoLog" class="panel-collapse collapse in">
        <div class="panel-body">
            <table id="ID-online-redo-log-table" class="table table-bordered table-hover">
                <thead>
                <tr>
                    <th>日志组</th>
                    <th>大小 / MB</th>
                    <th>类型</th>
                    <th>路径</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>50</td>
                    <td>online redo</td>
                    <td>/opt/oracle9/oradata/jes/redo01.log</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>50</td>
                    <td>online redo</td>
                    <td>/opt/oracle9/oradata/jes/redo02.log</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>50</td>
                    <td>online redo</td>
                    <td>/opt/oracle9/oradata/jes/redo03.log</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>50</td>
                    <td>online redo</td>
                    <td>/opt/oracle9/oradata/jes/redo04.log</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>50</td>
                    <td>online redo</td>
                    <td>/opt/oracle9/oradata/jes/redo05.log</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>50</td>
                    <td>online redo</td>
                    <td>/opt/oracle9/oradata/jes/redo06.log</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="panel panel-default transparent space-controlFile">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="icon-file-alt"></i>控制文件</h3>

        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_controlFile">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_controlFile" class="panel-collapse collapse in">
        <div class="panel-body">
            <table id="ID-control-file-table" class="table table-bordered">
                <thead>
                <tr>
                    <th>大小 / MB</th>
                    <th>路径</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>0</td>
                    <td>/opt/oracle9/oradata/jes/control01.ctl</td>
                </tr>
                <tr>
                    <td>0</td>
                    <td>/opt/oracle9/oradata/jes/control02.ctl</td>
                </tr>
                <tr>
                    <td>0</td>
                    <td>/opt/oracle9/oradata/jes/control03.ctl</td>
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
<script src="http://woqutech.3322.org:8080/assets/js/qm.space-oracle.js?v=4.1.0.3.20140118160000"></script>
</body>
</html>

