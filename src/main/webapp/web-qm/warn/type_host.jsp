<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 16:43
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
                <li class="navnew-item">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/warn/home.jsp" title="总览">总览</a>
                </li>
                <li class="navnew-item  ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/warn/type_oracle.jsp" title="Oracle">Oracle</a>
                </li>
                <li class="navnew-item ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/warn/type_mysql.jsp" title="MySQL">MySQL</a>
                </li>
                <li class="navnew-item active ignore  ">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/warn/type_host.jsp" title="主机">主机</a>
                </li>
            </ul>
        </div>

    </div>

</div><!--/sub menu -->

<div class="col-xs-10 container-main_content">



<div class="panel panel-default transparent">
<div class="panel-heading">
    <h3 class="panel-title"><i class="icon-bell"></i>主机</h3>
</div>
<div class="panel-body">

<table id="warnType-host" class="table table-bordered table-striped">
<thead>
<tr>
    <th>名称</th>
    <th>CPU/Load</th>
    <th>DiskIO</th>
    <th>LogWatch</th>
</tr>
</thead>
<tbody>
<tr>
    <td>
        <a href="" data-toggle="tooltip" data-placement="top" title="IP:192.168.1.191">
            vm-rac1-11g
        </a>
    </td>
    <td>
        <span class="label label-state b-success">OK</span>
    </td>
    <td>
        <span class="label label-state b-success">OK</span>
    </td>
    <td>
        <a class="unlineLink" href="">
            <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
        </a>
    </td>
</tr>
<tr>
    <td>
        <a href="" data-toggle="tooltip" data-placement="top" title="IP:192.168.1.192">
            vm-rac2-11g
        </a>
    </td>
    <td>
        <span class="label label-state b-success">OK</span>
    </td>
    <td>
        <span class="label label-state b-success">OK</span>
    </td>
    <td>
        <a class="unlineLink" href="">
            <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
        </a>
    </td>
</tr>
<tr>
    <td>
        <a href="" data-toggle="tooltip" data-placement="top" title="IP:192.168.1.240">
            woqu-mysql2
        </a>
    </td>
    <td>
        <span class="label label-state b-success">OK</span>
    </td>
    <td>
        <span class="label label-state b-success">OK</span>
    </td>
    <td>
        <a class="unlineLink" href="">
            <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
        </a>
    </td>
</tr>
<tr>
    <td>
        <a href="" data-toggle="tooltip" data-placement="top" title="IP:192.168.1.204">
            multi-mysql
        </a>
    </td>
    <td>
        <span class="label label-state b-success">OK</span>
    </td>
    <td>
        <span class="label label-state b-success">OK</span>
    </td>
    <td>
        <a class="unlineLink" href="">
            <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
        </a>
    </td>
</tr>
<tr>
    <td>
        <a href="" data-toggle="tooltip" data-placement="top" title="IP:192.168.1.203">
            woquhost2
        </a>
    </td>
    <td>
        <a class="unlineLink" href="">
            <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
        </a>
    </td>
    <td>
        <a class="unlineLink" href="">
            <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
        </a>
    </td>
    <td>
        <a class="unlineLink" href="">
            <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
        </a>
    </td>
</tr>
<tr>
    <td>
        <a href="" data-toggle="tooltip" data-placement="top" title="IP:192.168.1.222">
            woqu-centos
        </a>
    </td>
    <td>
        <span class="label label-state b-success">OK</span>
    </td>
    <td>
        <span class="label label-state b-success">OK</span>
    </td>
    <td>
        <a class="unlineLink" href="">
            <span class="label label-state b-danger" data-toggle="tooltip" title="CRITICAL:1">CRITICAL</span>
        </a>
    </td>
</tr>

</tbody>
</table>
</div>
</div>

</div><!--/main content -->
</div>
</div><!--/container -->
<jsp:include page="../head.jsp"/>
</body>
</html>

