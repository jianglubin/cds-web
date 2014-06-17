<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../head.jsp"/>

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
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/mysql.jsp" title="总览">总览</a>
                </li>
                <li class="navnew-item  active ignore ">
                    <a class="item-link dbItemLink" href="<%=request.getContextPath() %>/web-qm/database/instance_mysql.jsp" title="WYCDS_MySQL"
                       data-sid="285" data-dbtype="MySQL" data-dbrole="primary">
                        <span class="badge identifying-master">主</span>
                        WYCDS_MySQL
                    </a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link dbItemLink" href="" title="mysql_240_5.1" data-sid="267" data-dbtype="MySQL"
                       data-dbrole="primary">
                        <span class="badge identifying-master">主</span>
                        mysql_240_5.1
                    </a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link dbItemLink" href="" title="mysql_240_5.5" data-sid="268" data-dbtype="MySQL"
                       data-dbrole="primary">
                        <span class="badge identifying-master">主</span>
                        mysql_240_5.5
                    </a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link dbItemLink" href="" title="mysql_240_5.6" data-sid="269" data-dbtype="MySQL"
                       data-dbrole="primary">
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


<style>
    /* 日期选择 在 tab 与 自定义滚动条 上 */
    .datetimepicker {
        z-index: 100 !important;
    }
</style>


<div class="row tabs-wrap">

    <div class="col-xs-10">
        <ul class="nav nav-tabs">
            <li>
                <a href="<%=request.getContextPath() %>/web-qm/database/instance_mysql.jsp">数据库信息</a>
            </li>
            <li class="active">
                <a href="<%=request.getContextPath() %>/web-qm/performance/my/top-sql.jsp">TOP SQL</a>
            </li>
            <li>
                <a href="<%=request.getContextPath() %>/web-qm/space/home_mysql.jsp">空间</a>
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


<div class="panel panel-default transparent">
<div class="panel-body topsql">
<div class="row">
    <div class="col-xs-9">
        <div class="topsqlCharts">
            <div class="topsqlCharts-header">
                <div class="pull-left">
                    <span class="label label-state label-info">采集时间点：0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23</span>
                    <i class="icon-question-sign c-blue" data-toggle="tooltip"
                       title="采集慢查的时间点.比如 0,1表示采集时间点分别为0点和1点"></i>
                </div>

                <div class="btn-toolbar pull-right movetype"
                     data-loadurl="http://woqutech.3322.org:8080/web-qm/performance/chart/my/sql-data-point.htm">
                    <button class="btn btn-primary sql-point" data-type="pre" data-snapdate="" id="ID-sql-prev"><i
                            class="icon-angle-left"></i> Prev
                    </button>
                    <button class="btn btn-primary sql-point" data-type="next" data-snapdate="" id="ID-sql-next">Next <i
                            class="icon-angle-right"></i></button>
                </div>
            </div>
            <div class="topsqlCharts-body">
                <div class="topsqlCharts-main" id="ID-topsql-chart-placeholder"
                     data-chartData="[{&quot;selected&quot;:false,&quot;x&quot;:1400387340000,&quot;y&quot;:14.333333},{&quot;selected&quot;:false,&quot;x&quot;:1400391027000,&quot;y&quot;:13.538462},{&quot;selected&quot;:false,&quot;x&quot;:1400394629000,&quot;y&quot;:13.181818},{&quot;selected&quot;:false,&quot;x&quot;:1400398260000,&quot;y&quot;:13.583333},{&quot;selected&quot;:false,&quot;x&quot;:1400401860000,&quot;y&quot;:14.166667},{&quot;selected&quot;:false,&quot;x&quot;:1400405520000,&quot;y&quot;:14.583333},{&quot;selected&quot;:false,&quot;x&quot;:1400409180000,&quot;y&quot;:12.666667},{&quot;selected&quot;:false,&quot;x&quot;:1400412780000,&quot;y&quot;:14},{&quot;selected&quot;:false,&quot;x&quot;:1400416440000,&quot;y&quot;:14.25},{&quot;selected&quot;:false,&quot;x&quot;:1400420040000,&quot;y&quot;:15.083333},{&quot;selected&quot;:false,&quot;x&quot;:1400423700000,&quot;y&quot;:75.46154},{&quot;selected&quot;:false,&quot;x&quot;:1400427300000,&quot;y&quot;:53.083332},{&quot;selected&quot;:false,&quot;x&quot;:1400430960000,&quot;y&quot;:15.25},{&quot;selected&quot;:false,&quot;x&quot;:1400434560000,&quot;y&quot;:15.333333},{&quot;selected&quot;:false,&quot;x&quot;:1400438160000,&quot;y&quot;:14.666667},{&quot;selected&quot;:false,&quot;x&quot;:1400441820000,&quot;y&quot;:15.416667},{&quot;selected&quot;:false,&quot;x&quot;:1400445420000,&quot;y&quot;:14.916667},{&quot;selected&quot;:false,&quot;x&quot;:1400449080000,&quot;y&quot;:15.25},{&quot;selected&quot;:false,&quot;x&quot;:1400452740000,&quot;y&quot;:15.333333},{&quot;selected&quot;:false,&quot;x&quot;:1400456340000,&quot;y&quot;:15.166667},{&quot;selected&quot;:false,&quot;x&quot;:1400460000000,&quot;y&quot;:15.384615},{&quot;selected&quot;:false,&quot;x&quot;:1400463660000,&quot;y&quot;:15.416667},{&quot;selected&quot;:false,&quot;x&quot;:1400467320000,&quot;y&quot;:104.916664},{&quot;selected&quot;:false,&quot;x&quot;:1400470920000,&quot;y&quot;:145.58333},{&quot;selected&quot;:false,&quot;x&quot;:1400474520000,&quot;y&quot;:65.166664},{&quot;selected&quot;:false,&quot;x&quot;:1400478240000,&quot;y&quot;:260.41666},{&quot;selected&quot;:false,&quot;x&quot;:1400481840000,&quot;y&quot;:298.5},{&quot;selected&quot;:false,&quot;x&quot;:1400485500000,&quot;y&quot;:341.53845},{&quot;selected&quot;:false,&quot;x&quot;:1400489160000,&quot;y&quot;:233.75},{&quot;selected&quot;:false,&quot;x&quot;:1400492820000,&quot;y&quot;:145.16667},{&quot;selected&quot;:false,&quot;x&quot;:1400496420000,&quot;y&quot;:151},{&quot;selected&quot;:false,&quot;x&quot;:1400500080000,&quot;y&quot;:144.58333},{&quot;selected&quot;:false,&quot;x&quot;:1400503680000,&quot;y&quot;:139.5},{&quot;selected&quot;:false,&quot;x&quot;:1400511000000,&quot;y&quot;:59.6},{&quot;selected&quot;:false,&quot;x&quot;:1400514660000,&quot;y&quot;:16.166668},{&quot;selected&quot;:false,&quot;x&quot;:1400518260000,&quot;y&quot;:16.166668},{&quot;selected&quot;:false,&quot;x&quot;:1400521860000,&quot;y&quot;:15.916667},{&quot;selected&quot;:false,&quot;x&quot;:1400525520000,&quot;y&quot;:16.166668},{&quot;selected&quot;:false,&quot;x&quot;:1400529180000,&quot;y&quot;:15.666667},{&quot;selected&quot;:false,&quot;x&quot;:1400536380000,&quot;y&quot;:15.875},{&quot;selected&quot;:false,&quot;x&quot;:1400540040000,&quot;y&quot;:15.666667},{&quot;selected&quot;:false,&quot;x&quot;:1400543700000,&quot;y&quot;:15.692308},{&quot;selected&quot;:false,&quot;x&quot;:1400547360000,&quot;y&quot;:21.416668},{&quot;selected&quot;:false,&quot;x&quot;:1400551020000,&quot;y&quot;:69.75},{&quot;selected&quot;:false,&quot;x&quot;:1400554620000,&quot;y&quot;:82.75},{&quot;selected&quot;:false,&quot;x&quot;:1400558280000,&quot;y&quot;:19.75},{&quot;selected&quot;:false,&quot;x&quot;:1400561940000,&quot;y&quot;:15.666667},{&quot;selected&quot;:false,&quot;x&quot;:1400565540000,&quot;y&quot;:21.75}]"
                     data-nodata="暂无TOP SQL信息。" data-threshold="59.753952" data-metic="" data-sid="285"
                     data-sdate="1400566169898" data-dbtype="mysql" style="height: 290px;"></div>
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
                    <ul id="ID-sql-select-header" class="item-list"
                        data-loadurl="http://woqutech.3322.org:8080/web-qm/performance/chart/my/top-sql.htm">
                        <li class="item-default  selected " data-statName="Queries">
                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="targetRadio" checked="checked"/>
                                    <span class="lbl">Queries</span>
                                </label>
                            </div>
                        </li>
                        <li class="item-default " data-statName="User Commit">
                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="targetRadio"/>
                                    <span class="lbl">User Commit</span>
                                </label>
                            </div>
                        </li>
                        <li class="item-default " data-statName="InnoDB logical read pages">
                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="targetRadio"/>
                                    <span class="lbl">InnoDB logical read pages</span>
                                </label>
                            </div>
                        </li>
                        <li class="item-default " data-statName="Slow Query Count">
                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="targetRadio"/>
                                    <span class="lbl">Slow Query Count</span>
                                </label>
                            </div>
                        </li>
                        <li class="item-default " data-statName="InnoDB read IOPS">
                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="targetRadio"/>
                                    <span class="lbl">InnoDB read IOPS</span>
                                </label>
                            </div>
                        </li>
                        <li class="item-default " data-statName="InnoDB write IOPS">
                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="targetRadio"/>
                                    <span class="lbl">InnoDB write IOPS</span>
                                </label>
                            </div>
                        </li>
                        <li class="item-default " data-statName="Active Sessions">
                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="targetRadio"/>
                                    <span class="lbl">Active Sessions</span>
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

<div id="ID-sql-dialog-placeholder" class="hidden"
     data-loadurl="http://woqutech.3322.org:8080/web-qm/performance/my/sqltext.htm"></div>

</div>
<!--/main content -->
</div>
</div>
<!--/container -->
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

