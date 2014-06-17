<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../head.jsp"/>
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
                <li>
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/oracle.jsp" title="总览">总览</a>
                </li>
                <li class='navnew-item open '>
                    <i class="icon-angle-up toggle" title="收起"></i>
                    <a class="item-link" href="" title="JES">JES</a>
                    <ul class="subnav">
                        <li  class=" active ignore "  data-active="">
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





<style>
    /* 日期选择 在 tab 与 自定义滚动条 上 */
    .datetimepicker {z-index: 100 !important;}
</style>


<div class="row tabs-wrap">
    <div class="col-xs-10">
        <ul class="nav nav-tabs">
            <li>
                <a href="<%=request.getContextPath() %>/web-qm/database/instance_oracle.jsp">数据库信息</a>
            </li>
            <li class="active">
                <a href="<%=request.getContextPath() %>/web-qm/performance/ora/top-sql.jsp">TOP SQL</a>
            </li>
            <li>
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

<div class="panel panel-default transparent">
    <div class="panel-body topsql">
        <div class="row">
            <div class="col-xs-9">
                <div class="topsqlCharts">
                    <div class="topsqlCharts-header">
                        <div class="btn-toolbar pull-right movetype" data-loadurl="<%=request.getContextPath() %>/web-qm/performance/chart/ora/sql-data-point.htm">
                            <button class="btn btn-primary sql-point" data-type="pre" data-snapdate="" id="ID-sql-prev"><i class="icon-angle-left"></i> Prev</button>
                            <button class="btn btn-primary sql-point" data-type="next" data-snapdate="" id="ID-sql-next">Next <i class="icon-angle-right"></i></button>
                        </div>
                    </div>
                    <div class="topsqlCharts-body">
                        <div class="topsqlCharts-main" id="ID-topsql-chart-placeholder" data-chartData="[{&quot;selected&quot;:false,&quot;x&quot;:1395398745000,&quot;y&quot;:810},{&quot;selected&quot;:false,&quot;x&quot;:1395398746000,&quot;y&quot;:2210}]" data-nodata="暂无TOP SQL信息。" data-threshold="1510.0" data-sid="288" data-metic="次/秒" data-sdate="1395398745000" data-dbtype="oracle" style="height: 290px;"></div>
                    </div>
                </div>
            </div>

            <div class="col-xs-3">
                <div class="topsqlTarget">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a data-toggle="tab" href="#ID-target-content">多指标切换</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="ID-target-content" class="tab-panel active topsqlTarget-list">
                            <ul id="ID-sql-select-header" class="item-list" data-loadurl="<%=request.getContextPath() %>/web-qm/performance/chart/ora/top-sql.htm">
                                <li class="item-default  selected " data-statName="Logical reads">
                                    <div class="checkbox">
                                        <label>
                                            <input type="radio" name="targetRadio"  checked="checked"  />
                                            <span class="lbl">Logical reads</span>
                                        </label>
                                    </div>
                                </li>
                                <li class="item-default " data-statName="Physical reads">
                                    <div class="checkbox">
                                        <label>
                                            <input type="radio" name="targetRadio"  />
                                            <span class="lbl">Physical reads</span>
                                        </label>
                                    </div>
                                </li>
                                <li class="item-default " data-statName="Physical writes">
                                    <div class="checkbox">
                                        <label>
                                            <input type="radio" name="targetRadio"  />
                                            <span class="lbl">Physical writes</span>
                                        </label>
                                    </div>
                                </li>
                                <li class="item-default " data-statName="Executes">
                                    <div class="checkbox">
                                        <label>
                                            <input type="radio" name="targetRadio"  />
                                            <span class="lbl">Executes</span>
                                        </label>
                                    </div>
                                </li>
                                <li class="item-default " data-statName="Transactions">
                                    <div class="checkbox">
                                        <label>
                                            <input type="radio" name="targetRadio"  />
                                            <span class="lbl">Transactions</span>
                                        </label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel panel-default transparent">

            <div id="J_awr" class="panel-collapse collapse">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-4">
                            <div class="awrSummary-box awrSummary-box-loadProfile">
                                <table id="ID-loadProfile" class="awrSummary table table-bordered table-striped table-condensed" data-loadurl="<%=request.getContextPath() %>/web-qm/performance/ora/load-profile.htm">
                                    <summary>Load Profile</summary>
                                    <thead>
                                    <tr>
                                        <th></th>
                                        <th class="text-right">Per Second</th>
                                        <th class="text-right">Per Transaction</th>
                                    </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-xs-8">
                            <div class="awrSummary-box awrSummary-box-target">
                                <table id="ID-instanceEfficiencyPercentages" class="awrSummary table table-bordered table-striped table-condensed" data-loadurl="<%=request.getContextPath() %>/web-qm/performance/ora/load-ins.htm">
                                    <summary>Instance Efficiency Percentages (Target 100%)</summary>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>

                            <div class="awrSummary-box awrSummary-box-timedEvents">
                                <table id="ID-timedEvents" class="awrSummary table table-bordered table-striped table-condensed" data-loadurl="<%=request.getContextPath() %>/web-qm/performance/ora/load-wait.htm">
                                    <summary>Top 5 Timed Events</summary>
                                    <thead>
                                    <tr>
                                        <th>Event</th>
                                        <th class="text-right">Waits</th>
                                        <th class="text-right">Time(s)</th>
                                        <th class="text-right">Avg Wait(ms)</th>
                                        <th class="text-right">% Total Call Time</th>
                                        <th class="text-right">Wait Class</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr />

        <div class="panel panel-default transparent">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="icon-list-alt"></i>SQL Text <span class="label label-primary"
                                                                                    id="ID-awrSqlTextShowTime"></span></h3>
            </div>
            <div class="panel-body">
                <table id="ID-topsql-text-table" class="table table-bordered table-hover topsqltext-mysql" data-selectpoint="">
                    <thead>
                    <tr>
                        <th>SQL ID</th>
                        <th>SQL Text</th>
                        <th>TS Count</th>
                        <th>Query Time Avg</th>
                        <th>Lock Time Avg</th>
                        <th>Rows Sent Avg</th>
                        <th>Rows Examined Avg</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><a href="" id="showSpan">4020712227265562658</a></td>
                        <td>
                            <div style="width:200px;height:20px;overflow:hidden;">
                                insert ignore

                                into
                                q_stat_week (db_id,stat_id,gmt_create,cal_value) select
                                db_id,
                                stat_id,
                                concat(substr('2014-05-20 13:30:00',
                                1,
                                16),
                                ':00'),
                                avg(cal_value)
                                from
                                q_stat_day a
                                where
                                db_id = 258
                                and gmt_create &gt;= now() - interval 30 minute
                                and gmt_create &lt;= now()
                                group by
                                stat_id
                            </div>
                        </td>
                        <td class="text-right">24.00</td>
                        <td class="text-right">24.98</td>
                        <td class="text-right">0.00</td>
                        <td class="text-right">0.00</td>
                        <td class="text-right">13066833.00</td>
                    </tr>
                    <tr class="sql-text-placeholder" hidden="hidden">
                        <td nowrap="" colspan="7" style="padding:0px;">
                            <h5>SQL Text
                                <small class="c-grey">SQL ID: 4020712227265562658</small>
                                <embed wmode="transparent" src="/assets/swf/clipboard_new.swf" width="14" height="15"
                                       flashvars="clipboard=
    insert ignore

    into
        q_stat_week (db_id,stat_id,gmt_create,cal_value) select
            db_id,
            stat_id,
            concat(substr('2014-05-20 13:30:00',
            1,
            16),
            ':00'),
            avg(cal_value)
        from
            q_stat_day a
        where
            db_id = 258
            and gmt_create &gt;= now() - interval 30 minute
            and gmt_create &lt;= now()
        group by
            stat_id" quality="high" allowscriptaccess="always" type="application/x-shockwave-flash"
                                       pluginspage="http://www.macromedia.com/go/getflashplayer">
                            </h5>
	<pre class="prettyprint lang-sql prettyprinted" style=""><span class="pln">
    </span><span class="kwd">insert</span><span class="pln"> ignore

    </span><span class="kwd">into</span><span class="pln">
        q_stat_week </span><span class="pun">(</span><span class="pln">db_id</span><span class="pun">,</span><span
            class="pln">stat_id</span><span class="pun">,</span><span class="pln">gmt_create</span><span
            class="pun">,</span><span class="pln">cal_value</span><span class="pun">)</span><span
            class="pln"> </span><span class="kwd">select</span><span class="pln">
            db_id</span><span class="pun">,</span><span class="pln">
            stat_id</span><span class="pun">,</span><span class="pln">
            concat</span><span class="pun">(</span><span class="pln">substr</span><span class="pun">(</span><span
            class="str">'2014-05-20 13:30:00'</span><span class="pun">,</span><span class="pln">
            </span><span class="lit">1</span><span class="pun">,</span><span class="pln">
            </span><span class="lit">16</span><span class="pun">),</span><span class="pln">
            </span><span class="str">':00'</span><span class="pun">),</span><span class="pln">
            avg</span><span class="pun">(</span><span class="pln">cal_value</span><span class="pun">)</span><span
            class="pln">
        </span><span class="kwd">from</span><span class="pln">
            q_stat_day a
        </span><span class="kwd">where</span><span class="pln">
            db_id </span><span class="pun">=</span><span class="pln"> </span><span class="lit">258</span><span
            class="pln">
            </span><span class="kwd">and</span><span class="pln"> gmt_create </span><span class="pun">&gt;=</span><span
            class="pln"> now</span><span class="pun">()</span><span class="pln"> </span><span class="pun">-</span><span
            class="pln"> interval </span><span class="lit">30</span><span class="pln"> minute
            </span><span class="kwd">and</span><span class="pln"> gmt_create </span><span class="pun">&lt;=</span><span
            class="pln"> now</span><span class="pun">()</span><span class="pln">
        </span><span class="kwd">group</span><span class="pln"> </span><span class="kwd">by</span><span class="pln">
            stat_id
    </span></pre>
                        </td>
                    </tr>
                    </tbody>
                </table>

                <div id="ID-pagination-placeholder"></div>
            </div>
        </div>
    </div>
</div>

<div id="ID-sql-dialog-placeholder" class="hidden" data-loadurl="<%=request.getContextPath() %>/web-qm/performance/ora/sqlplan-text.htm"></div>

</div><!--/main content -->
</div>
</div><!--/container -->
<jsp:include page="../../foot.jsp"/>
<script src="http://woqutech.3322.org:8080/assets/js/qm.topsql.js?v=4.1.0.3.20140118160000"></script>
<script type="text/javascript">
    $(document).ready(function () {
        //新增应用信息
        $("#showSpan").click(function (e) {
            e.preventDefault();
            if ($(".sql-text-placeholder").is(":hidden")) {
                $(".sql-text-placeholder").show();
            } else {
                $(".sql-text-placeholder").hide();
            }

        });
    });
</script>
</body>
</html>

