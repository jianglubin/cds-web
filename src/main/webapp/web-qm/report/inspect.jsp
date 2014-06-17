<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 16:52
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
                <li class="navnew-item  active ignore ">
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

</div><!--/sub menu -->

<div class="col-xs-10 container-main_content">



<div class="panel panel-default transparent">
<div class="panel-heading">
    <h3 class="panel-title"><i class="icon-th-list"></i>巡检报告 <small>[巡检时间：2014-05-20 01:00]</small></h3>
</div>
<div class="panel-body">

<div class="panel panel-default transparent panel-box" data-type="invalidobj">
    <div class="panel-heading">
        <h4 class="panel-title"><i class="icon-hand-right"></i>失效对象 <i class="icon-question-sign c-bule" data-toggle="tooltip" data-placement="right" title="检查Oracle数据库的失效对象，包括索引，存储过程/包，函数，视图，触发器等"></i></h4>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#ID-invalidobj">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="ID-invalidobj" class="panel-collapse collapse in invalidobj-wrap">
        <div class="panel-body">
            <div class="tabbable">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#ID-invalidobj-graph">图表模式</a></li>
                    <li><a data-toggle="tab" href="#ID-invalidobj-table">表格模式</a></li>
                </ul>
                <div class="tab-content">
                    <div id="ID-invalidobj-graph" class="tab-pane in active">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="invalidobj-container-wrap">
                                    <div class="chartContainer-invalidobj" id="ID-invalidobj-graph-type" data-title="按类型划分" data-seriesName="按类型划分" data-chartData="[{&quot;name&quot;:&quot;INDEX&quot;,&quot;y&quot;:1},{&quot;name&quot;:&quot;PACKAGE BODY&quot;,&quot;y&quot;:5},{&quot;name&quot;:&quot;PROCEDURE&quot;,&quot;y&quot;:3}]" data-nodata="暂无失效对象信息。" style="height: 250px;"></div>
                                </div>
                            </div>

                            <div class="col-xs-6">
                                <div class="invalidobj-container-wrap">
                                    <div class="chartContainer-invalidobj" id="ID-invalidobj-graph-db" data-title="按数据库划分" data-seriesName="按数据库划分" data-chartData="[{&quot;name&quot;:&quot;rac11g : rac11g2&quot;,&quot;y&quot;:4},{&quot;name&quot;:&quot;JES : jes&quot;,&quot;y&quot;:5}]" data-nodata="暂无失效对象信息。" style="height: 250px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="ID-invalidobj-table" class="tab-pane">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="invalidobj-container-wrap">
                                    <table class="table table-bordered table-condensed" id="ID-invalidobj-table-type">
                                        <thead>
                                        <tr>
                                            <th>类型</th>
                                            <th>失效数目</th>
                                            <th>失效对象</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>INDEX</td>
                                            <td>1</td>
                                            <td title="rac11g : rac11g2|SYS:INDA">rac11g : rac11g2|SYS:INDA</td>
                                        </tr>
                                        <tr>
                                            <td>PACKAGE BODY</td>
                                            <td>5</td>
                                            <td title="JES : jes|SYS:DBMS_AQADM_SYS,JES : jes|SYS:DBMS_IREFRESH,JES : jes|SYS:DBMS_PCLXUTIL,JES : jes|SYS:DBMS_PRVTAQIP,JES : jes|SYS:DBMS_SNAPSHOT">JES : jes|SYS:DBMS_AQADM_SYS ...</td>
                                        </tr>
                                        <tr>
                                            <td>PROCEDURE</td>
                                            <td>3</td>
                                            <td title="rac11g : rac11g2|SYS:FREE_BLKS,rac11g : rac11g2|WOQU:LEXPROC,rac11g : rac11g2|WOQU:MY_TEST">rac11g : rac11g2|SYS:FREE_BL ...</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="col-xs-6">
                                <div class="invalidobj-container-wrap">
                                    <table class="table table-bordered table-condensed" id="ID-invalidobj-table-db">
                                        <thead>
                                        <tr>
                                            <th>数据库</th>
                                            <th>失效数目</th>
                                            <th>失效对象</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>rac11g : rac11g2</td>
                                            <td>4</td>
                                            <td title="SYS|INDEX:INDA,SYS|PROCEDURE:FREE_BLKS,WOQU|PROCEDURE:LEXPROC,WOQU|PROCEDURE:MY_TEST">SYS|INDEX:INDA,SYS|PROCEDURE ...</td>
                                        </tr>
                                        <tr>
                                            <td>JES : jes</td>
                                            <td>5</td>
                                            <td title="SYS|PACKAGE BODY:DBMS_SNAPSHOT,SYS|PACKAGE BODY:DBMS_AQADM_SYS,SYS|PACKAGE BODY:DBMS_IREFRESH,SYS|PACKAGE BODY:DBMS_PCLXUTIL,SYS|PACKAGE BODY:DBMS_PRVTAQIP">SYS|PACKAGE BODY:DBMS_SNAPSH ...</td>
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
</div>

<hr />

<div class="panel panel-default transparent panel-box" data-type="warn">
    <div class="panel-heading">
        <h4 class="panel-title"><i class="icon-hand-right"></i>unknown/suspend的报警 <i class="icon-question-sign c-bule" data-toggle="tooltip" data-placement="right" title="处于unknown或suspend（包括暂停报警和暂停调度）状态的报警"></i></h4>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#ID-warn">
                <i class="icon-chevron-down"></i>
            </a>
        </div>
    </div>
    <div id="ID-warn" class="panel-collapse collapse ">
        <div class="panel-body">

            <div class="nodata">
                <strong>提示:</strong> 暂无unknown/suspend的报警相关信息。
            </div>
        </div>
    </div>
</div>

<hr />

<div class="panel panel-default transparent panel-box" data-type="tablespace">
    <div class="panel-heading">
        <h4 class="panel-title"><i class="icon-hand-right"></i>表空间 <i class="icon-question-sign c-bule" data-toggle="tooltip" data-placement="right" title="检查Oracle表空间的剩余空间状况，系统会自动根据历史增长量计算剩余空间的使用天数，当剩余天数低于 7 天时，会计入报告"></i></h4>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#ID-space">
                <i class="icon-chevron-down"></i>
            </a>
        </div>
    </div>
    <div id="ID-space" class="panel-collapse collapse ">
        <div class="panel-body">
            <div class="nodata">
                <strong>提示:</strong> 暂无表空间相关信息。
            </div>
        </div>
    </div>
</div>

<hr />

<div class="panel panel-default transparent panel-box" data-type="disk">
    <div class="panel-heading">
        <h4 class="panel-title"><i class="icon-hand-right"></i>磁盘目录空间 <i class="icon-question-sign c-bule" data-toggle="tooltip" data-placement="right" title="检查磁盘文件系统空间使用百分比，当使用量超过 10% 时，会计入报告"></i></h4>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#ID-disk">
                <i class="icon-chevron-down"></i>
            </a>
        </div>
    </div>
    <div id="ID-disk" class="panel-collapse collapse ">
        <div class="panel-body">
            <div class="nodata">
                <strong>提示:</strong> 暂无磁盘目录空间相关信息。
            </div>
        </div>
    </div>
</div>

<hr />

<div class="panel panel-default transparent panel-box" data-type="asm">
    <div class="panel-heading">
        <h4 class="panel-title"><i class="icon-hand-right"></i>ASM磁盘组 <i class="icon-question-sign c-bule" data-toggle="tooltip" data-placement="right" title="检查ASM磁盘组剩余空间，当剩余百分比少于 10% 时，会计入报告"></i></h4>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#ID-asm">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="ID-asm" class="panel-collapse collapse  in ">
        <div class="panel-body">
            <table class="table table-bordered table-striped table-hover" id="ID-asm-table">
                <thead>
                <tr>
                    <th>数据库名称</th>
                    <th>磁盘组名称</th>
                    <th>磁盘组大小 / GB</th>
                    <th>已用大小 / GB</th>
                    <th>剩余比例</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>rac11g : rac11g2</td>
                    <td>DATA</td>
                    <td>22528.0</td>
                    <td>88.0</td>
                    <td>0.39%&nbsp;
                        <div class="itemdiv commentdiv">
                            <div class="tools">
                                <a href="javascript:;" data-id="1380" data-dbId="271" class="btn btn-xs btn-primary remove" title="排除">
                                    <i class="icon-only icon-remove"></i>
                                </a>
                            </div>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<hr />

<div class="panel panel-default transparent panel-box" data-type="part">
    <div class="panel-heading">
        <h4 class="panel-title"><i class="icon-hand-right"></i>到期分区表 <i class="icon-question-sign c-bule" data-toggle="tooltip" data-placement="right" title="检查即将到期的分区表，如果相对最大分区的天数低于 30 天，会计入报告。目前仅支持时间类型的单列分区字段，不支持复合字段和字符字段。对于有maxvalue分区或者11G自动INTERVAL分区扩展的分区表，不会计入报告"></i></h4>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#ID-part">
                <i class="icon-chevron-down"></i>
            </a>
        </div>
    </div>
    <div id="ID-part" class="panel-collapse collapse ">
        <div class="panel-body">
            <div class="nodata">
                <strong>提示:</strong> 暂无到期分区表相关信息。
            </div>
        </div>
    </div>
</div>

<hr />

<div class="panel panel-default transparent panel-box" data-type="offline">
    <div class="panel-heading">
        <h4 class="panel-title"><i class="icon-hand-right"></i>offline数据文件 <i class="icon-question-sign c-bule" data-toggle="tooltip" data-placement="right" title="检查数据库是否存在offline的数据文件"></i></h4>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#ID-offline">
                <i class="icon-chevron-down"></i>
            </a>
        </div>
    </div>
    <div id="ID-offline" class="panel-collapse collapse ">
        <div class="panel-body">
            <div class="nodata">
                <strong>提示:</strong> 暂无offline数据文件相关信息。
            </div>
        </div>
    </div>
</div>

<hr />

<div class="row">
    <div class="col-xs-6">
        <div class="panel panel-default transparent panel-box" data-type="standby">
            <div class="panel-heading">
                <h4 class="panel-title"><i class="icon-hand-right"></i>备库延迟 <i class="icon-question-sign c-bule" data-toggle="tooltip" data-placement="right" title="检查DataGuard standby是否存在延迟，当延迟时间超过 86400 秒，会计入报告"></i></h4>
                <div class="panel-toolbar">
                    <a data-toggle="collapse" href="#ID-standby">
                        <i class="icon-chevron-down"></i>
                    </a>
                </div>
            </div>
            <div id="ID-standby" class="panel-collapse collapse ">
                <div class="panel-body">
                    <div class="nodata">
                        <strong>提示:</strong> 暂无备库延迟相关信息。
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="panel panel-default transparent panel-box" data-type="nologging">
            <div class="panel-heading">
                <h4 class="panel-title"><i class="icon-hand-right"></i>nologging表空间 <i class="icon-question-sign c-bule" data-toggle="tooltip" data-placement="right" title="检查数据库是否存在nologging的表空间，这种表空间在做standby切换后，上面存放的数据可能无法访问，强烈建议采用logging模式"></i></h4>
                <div class="panel-toolbar">
                    <a data-toggle="collapse" href="#ID-nologging">
                        <i class="icon-chevron-down"></i>
                    </a>
                </div>
            </div>
            <div id="ID-nologging" class="panel-collapse collapse ">
                <div class="panel-body">
                    <div class="nodata">
                        <strong>提示:</strong> 暂无nologging表空间相关信息。
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<hr />

</div>
</div>

<div class="form-horizontal hidden" id="ID-inspect-setThreshold-box">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="header smaller lighter c-blue">
        <b class="inspectType"></b> <span>设置阈值</span>
    </h4>
    <div class="form-group">
        <label for="dbname" class="col-xs-2 control-label">数据库名</label>
        <div class="col-xs-10 input-group">
            <input type="text" class="form-control" id="dbname" name="startTime" placeholder="" readonly />
        </div>
    </div>

    <div class="form-group">
        <label for="thresholdValue" class="col-xs-2 control-label">设置阈值</label>
        <div class="col-xs-10 input-group">
            <input type="text" class="form-control" id="thresholdValue" name="thresholdValue" data-defaultValue="" placeholder="" />
        </div>
    </div>
</div>


</div><!--/main content -->
</div>
</div><!--/container -->
<jsp:include page="../foot.jsp"/>
<script src="http://woqutech.3322.org:8080/assets/js/qm.report-inspect.js?v=4.1.0.3.20140118160000"></script>
</body>
</html>

