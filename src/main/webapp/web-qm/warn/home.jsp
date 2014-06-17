<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 16:24
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
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/warn/home.jsp" title="总览">总览</a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/warn/type_oracle.jsp" title="Oracle">Oracle</a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/warn/type_mysql.jsp" title="MySQL">MySQL</a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/warn/type_host.jsp" title="主机">主机</a>
                </li>
            </ul>
        </div>

    </div>

</div>
<!--/sub menu -->

<div class="col-xs-10 container-main_content">


<div class="panel panel-default transparent">
<div class="panel-heading">
    <h3 class="panel-title"><i class="icon-bell"></i>Oracle</h3>

    <div class="panel-toolbar">
        <a data-toggle="collapse" href="#J_warnOracle">
            <i class="icon-chevron-up"></i>
        </a>
    </div>
</div>
<div id="J_warnOracle" class="panel-collapse collapse in">
<div class="panel-body">
<table class="table table-bordered table-condensed warnTableList table-striped" style="visibility: hidden;">
<thead>
<tr>
    <th class="span3">名称</th>
    <th class="span3">报警项</th>
    <th class="span2">状态</th>
    <th>描述</th>
</tr>
</thead>
<tbody>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g1
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="监控数据库运行状态，是否可连接，是否可读写。"
           data-placement="right"></i>
        ora_dbhang_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:37'></i>
        ORA-03114: not connected to ORACLE

    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g1
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控数据库事务状况，包括未提交事务运行时间，事务占用undo块数，并发事务数，超过任一阀值即报警。" data-placement="right"></i>
        ora_trans_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:11'></i>
        [192.168.1.191:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g1
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控数据库IO响应时间(ms)，超过预定义阀值会报警，检测指标是db file sequential read和log file parallel write。"
           data-placement="right"></i>
        ora_io_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:41'></i>
        [192.168.1.191:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g1
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控数据库进程状况，超过任一阀值即报警：当前进程数占最大值百分比，进程PGA平均消耗(mb)，进程PGA最大消耗(mb) 。" data-placement="right"></i>
        ora_process_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:31'></i>
        [192.168.1.191:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g1
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="监控数据库job运行状况，当有超过阈值数量的job调度失败即报警。"
           data-placement="right"></i>
        ora_job_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:20:44'></i>
        [192.168.1.191:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g1
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控数据库undo消耗状况，180分钟内undo生成量占Undo表空间百分比超过预定义阀值会报警。" data-placement="right"></i>
        ora_undo_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:23:15'></i>
        [192.168.1.191:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g1
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="监控数据库Lock锁定堵塞状况，当堵塞会话数超过预定义阀值会报警。"
           data-placement="right"></i>
        ora_lock_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:25'></i>
        [192.168.1.191:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g1
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控redo文件的循环使用状况，当剩余inactive redo文件数量低于预定义阀值会报警。" data-placement="right"></i>
        ora_logdelay_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:16'></i>
        [192.168.1.191:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g1
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控表空间剩余容量，低于预定义阀值会报警（因Undo表空间会循环利用,其在监控项ora_undo_check中）。" data-placement="right"></i>
        ora_tablespace_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:20:27'></i>
        [192.168.1.191:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g1
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控ASM磁盘组的状态和空间使用情况，当offline_disks &gt; 0或者剩余空间少于阈值（单位为GB）时报警。" data-placement="right"></i>
        ora_asm_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:11'></i>
        [192.168.1.191:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g2
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="监控数据库运行状态，是否可连接，是否可读写。"
           data-placement="right"></i>
        ora_dbhang_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:26'></i>
        ORA-03114: not connected to ORACLE

    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g2
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控数据库事务状况，包括未提交事务运行时间，事务占用undo块数，并发事务数，超过任一阀值即报警。" data-placement="right"></i>
        ora_trans_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:11'></i>
        [192.168.1.192:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g2
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控数据库IO响应时间(ms)，超过预定义阀值会报警，检测指标是db file sequential read和log file parallel write。"
           data-placement="right"></i>
        ora_io_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:13'></i>
        [192.168.1.192:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g2
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控数据库进程状况，超过任一阀值即报警：当前进程数占最大值百分比，进程PGA平均消耗(mb)，进程PGA最大消耗(mb) 。" data-placement="right"></i>
        ora_process_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:09'></i>
        [192.168.1.192:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g2
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="监控数据库job运行状况，当有超过阈值数量的job调度失败即报警。"
           data-placement="right"></i>
        ora_job_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:30'></i>
        [192.168.1.192:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g2
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控数据库undo消耗状况，180分钟内undo生成量占Undo表空间百分比超过预定义阀值会报警。" data-placement="right"></i>
        ora_undo_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:23:18'></i>
        [192.168.1.192:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g2
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip" title="监控数据库Lock锁定堵塞状况，当堵塞会话数超过预定义阀值会报警。"
           data-placement="right"></i>
        ora_lock_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:16'></i>
        [192.168.1.192:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g2
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控redo文件的循环使用状况，当剩余inactive redo文件数量低于预定义阀值会报警。" data-placement="right"></i>
        ora_logdelay_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:16'></i>
        [192.168.1.192:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g2
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控表空间剩余容量，低于预定义阀值会报警（因Undo表空间会循环利用,其在监控项ora_undo_check中）。" data-placement="right"></i>
        ora_tablespace_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:22:05'></i>
        [192.168.1.192:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
<tr>
    <td class="vertical-middle" style="background-color: #fff;">
        
            <span class="badge identifying-master">主</span>
            rac11g : rac11g2
        
    </td>
    <td>
        <i class="icon-question-sign c-blue" data-toggle="tooltip"
           title="监控ASM磁盘组的状态和空间使用情况，当offline_disks &gt; 0或者剩余空间少于阈值（单位为GB）时报警。" data-placement="right"></i>
        ora_asm_check
    </td>
    <td>
        <span class="label label-state b-danger">CRITICAL</span>
    </td>
    <td>
        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right" title='检查时间: 2014年05月20日 16:24:14'></i>
        [192.168.1.192:1521] cannot connect : [Errno 111] Connection refused
    </td>
</tr>
</tbody>
</table>
</div>
</div>
</div>

<div class="panel panel-default transparent">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="icon-bell"></i>MySQL</h3>

        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_warnMySQL">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_warnMySQL" class="panel-collapse collapse in">
        <div class="panel-body">
            <table class="table table-bordered table-condensed warnTableList table-striped" style="visibility: hidden;">
                <thead>
                <tr>
                    <th class="span3">名字</th>
                    <th class="span3">报警项</th>
                    <th class="span2">状态</th>
                    <th>描述</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="vertical-middle" style="background-color: #fff;">
                        
                            <span class="badge identifying-master">主</span>
                            mysql_240_5.1
                        
                    </td>
                    <td>
                        <i class="icon-question-sign c-blue" data-toggle="tooltip"
                           title="监控MySQL备库的恢复状态，恢复延时，异常或不可用即报警。" data-placement="right"></i>
                        my_standby_check
                    </td>
                    <td>
                        <span class="label label-state b-danger">CRITICAL</span>
                    </td>
                    <td>
                        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right"
                           title='检查时间: 2014年05月20日 16:24:11'></i>
                        IO Thread Not Running,SQL Thread Running
                    </td>
                </tr>
                <tr>
                    <td class="vertical-middle" style="background-color: #fff;">
                        
                            <span class="badge identifying-master">主</span>
                            mysql_240_5.5
                        
                    </td>
                    <td>
                        <i class="icon-question-sign c-blue" data-toggle="tooltip"
                           title="监控MySQL备库的恢复状态，恢复延时，异常或不可用即报警。" data-placement="right"></i>
                        my_standby_check
                    </td>
                    <td>
                        <span class="label label-state b-danger">CRITICAL</span>
                    </td>
                    <td>
                        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right"
                           title='检查时间: 2014年05月20日 16:24:13'></i>
                        IO Thread Not Running,SQL Thread Running
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="panel panel-default transparent">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="icon-bell"></i>主机</h3>

        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_warnHost">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_warnHost" class="panel-collapse collapse in">
        <div class="panel-body">
            <table class="table table-bordered table-condensed warnTableList table-striped" style="visibility: hidden;">
                <thead>
                <tr>
                    <th class="span3">名字</th>
                    <th class="span3">报警项</th>
                    <th class="span2">状态</th>
                    <th>描述</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="vertical-middle" style="background-color: #fff;">
                        
                            vm-rac1-11g
                        
                    </td>
                    <td>
                        <i class="icon-question-sign c-blue" data-toggle="tooltip"
                           title="监控数据库或系统日志文件，当被监控日志文件中出现错误信息时，根据设定的报警关键字进行匹配报警。" data-placement="right"></i>
                        logwatch_check
                    </td>
                    <td>
                        <span class="label label-state b-danger">CRITICAL</span>
                    </td>
                    <td>
                        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right"
                           title='检查时间: 2014年05月20日 16:23:39'></i>
                        file &#39;unset&#39; is not exists . please check file path .
                    </td>
                </tr>
                <tr>
                    <td class="vertical-middle" style="background-color: #fff;">
                        
                            vm-rac2-11g
                        
                    </td>
                    <td>
                        <i class="icon-question-sign c-blue" data-toggle="tooltip"
                           title="监控数据库或系统日志文件，当被监控日志文件中出现错误信息时，根据设定的报警关键字进行匹配报警。" data-placement="right"></i>
                        logwatch_check
                    </td>
                    <td>
                        <span class="label label-state b-danger">CRITICAL</span>
                    </td>
                    <td>
                        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right"
                           title='检查时间: 2014年05月20日 16:24:15'></i>
                        file &#39;unset&#39; is not exists . please check file path .
                    </td>
                </tr>
                <tr>
                    <td class="vertical-middle" style="background-color: #fff;">
                        
                            woqu-mysql2
                        
                    </td>
                    <td>
                        <i class="icon-question-sign c-blue" data-toggle="tooltip"
                           title="监控数据库或系统日志文件，当被监控日志文件中出现错误信息时，根据设定的报警关键字进行匹配报警。" data-placement="right"></i>
                        logwatch_check
                    </td>
                    <td>
                        <span class="label label-state b-danger">CRITICAL</span>
                    </td>
                    <td>
                        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right"
                           title='检查时间: 2014年05月20日 16:24:13'></i>
                        file &#39;unset&#39; is not exists . please check file path .
                    </td>
                </tr>
                <tr>
                    <td class="vertical-middle" style="background-color: #fff;">
                        
                            multi-mysql
                        
                    </td>
                    <td>
                        <i class="icon-question-sign c-blue" data-toggle="tooltip"
                           title="监控数据库或系统日志文件，当被监控日志文件中出现错误信息时，根据设定的报警关键字进行匹配报警。" data-placement="right"></i>
                        logwatch_check
                    </td>
                    <td>
                        <span class="label label-state b-danger">CRITICAL</span>
                    </td>
                    <td>
                        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right"
                           title='检查时间: 2014年05月20日 16:23:43'></i>
                        file &#39;unset&#39; is not exists . please check file path .
                    </td>
                </tr>
                <tr>
                    <td class="vertical-middle" style="background-color: #fff;">
                        
                            woquhost2
                        
                    </td>
                    <td>
                        <i class="icon-question-sign c-blue" data-toggle="tooltip"
                           title="监控数据库或系统日志文件，当被监控日志文件中出现错误信息时，根据设定的报警关键字进行匹配报警。" data-placement="right"></i>
                        logwatch_check
                    </td>
                    <td>
                        <span class="label label-state b-danger">CRITICAL</span>
                    </td>
                    <td>
                        <i class="icon-time c-blue" data-toggle="tooltip" data-placement="right"
                           title='检查时间: 2014年05月20日 16:24:40'></i>
                        [192.168.1.203:22] cannot connect : timed out
                    </td>
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

<script src="http://woqutech.3322.org:8080/assets/plugin/jquery.mergeTable/1.0.0/jquery.mergeTable.js?v=4.1.0.3.20140118160000"></script>
<script src="http://woqutech.3322.org:8080/assets/js/qm.warn-home.js?v=4.1.0.3.20140118160000"></script>
</body>
</html>

