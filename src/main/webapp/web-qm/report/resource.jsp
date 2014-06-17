<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 17:07
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
                <li class="navnew-item active ignore">
                    <a class="item-link" href="<%=request.getContextPath() %>/web-qm/report/resource.jsp" title="资源">资源</a>
                </li>
            </ul>
        </div>

    </div>

</div><!--/sub menu -->

<div class="col-xs-10 container-main_content">



<div class="panel panel-default transparent report-resource">
<div class="panel-heading">
    <h3 class="panel-title"><i class="icon-globe"></i>资源详情</h3>
</div>
<div class="panel-body">
<div class="panel panel-default transparent">
    <div class="panel-heading">
        <h4 class="panel-title"><i class="icon-hand-right"></i>数据库资源</h4>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_reportResourceDatabase">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_reportResourceDatabase" class="panel-collapse collapse in">
        <div class="panel-body">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th></th>
                    <th>实例数量</th>
                    <th>主机数量</th>
                    <th>CPU核数</th>
                    <th>物理内存 / GB</th>
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
                <tr>
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
</div>

<hr />

<div class="panel panel-default transparent">
    <div class="panel-heading">
        <h4 class="panel-title"><i class="icon-hand-right"></i>数据库列表</h4>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_reportResourceDatabaseList">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_reportResourceDatabaseList" class="panel-collapse collapse in">
        <div class="panel-body">
            <table class="table table-bordered table-striped dbOnlineTop">
                <thead>
                <tr>
                    <th>名称</th>
                    <th>角色</th>
                    <th>IP</th>
                    <th>端口</th>
                    <th>版本</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <span class="badge identifying-oracle">O</span>
                        dg : orcl
                    </td>
                    <td>备库</td>
                    <td>192.168.1.236</td>
                    <td>1521</td>
                    <td>Oracle  10.2.0.1.0</td>
                </tr>
                <tr>
                    <td>
                        <span class="badge identifying-oracle">O</span>
                        JES : jes
                    </td>
                    <td>主库</td>
                    <td>192.168.1.222</td>
                    <td>1521</td>
                    <td>Oracle  9.2.0.8.0</td>
                </tr>
                <tr>
                    <td>
                        <span class="badge identifying-oracle">O</span>
                        orcl : orcl
                    </td>
                    <td>主库</td>
                    <td>192.168.1.235</td>
                    <td>1521</td>
                    <td>Oracle  10.2.0.1.0</td>
                </tr>
                <tr>
                    <td>
                        <span class="badge identifying-oracle">O</span>
                        qm : qm1
                    </td>
                    <td>主库</td>
                    <td>192.168.1.141</td>
                    <td>1521</td>
                    <td>Oracle  11.2.0.3.0 RAC</td>
                </tr>
                <tr>
                    <td>
                        <span class="badge identifying-oracle">O</span>
                        qm : qm2
                    </td>
                    <td>主库</td>
                    <td>192.168.1.142</td>
                    <td>1521</td>
                    <td>Oracle  11.2.0.3.0 RAC</td>
                </tr>
                <tr>
                    <td>
                        <span class="badge identifying-oracle">O</span>
                        rac
                    </td>
                    <td>主库</td>
                    <td>192.168.1.132</td>
                    <td>1521</td>
                    <td>Oracle  unknown version <i class="icon-question-sign c-blue" data-toggle="tooltip" title="未采集到该数据库的版本信息"></i></td>
                </tr>
                <tr>
                    <td>
                        <span class="badge identifying-oracle">O</span>
                        rac11g : rac11g1
                    </td>
                    <td>主库</td>
                    <td>192.168.1.191</td>
                    <td>1521</td>
                    <td>Oracle  11.2.0.3.0 RAC</td>
                </tr>
                <tr>
                    <td>
                        <span class="badge identifying-oracle">O</span>
                        rac11g : rac11g2
                    </td>
                    <td>主库</td>
                    <td>192.168.1.192</td>
                    <td>1521</td>
                    <td>Oracle  11.2.0.3.0 RAC</td>
                </tr>
                <tr>
                    <td>
                        <span class="badge identifying-mysql">M</span>
                        mysql_240_5.1
                    </td>
                    <td>主库</td>
                    <td>192.168.1.240</td>
                    <td>9307</td>
                    <td>MySQL  5.1.67-log</td>
                </tr>
                <tr>
                    <td>
                        <span class="badge identifying-mysql">M</span>
                        mysql_240_5.5
                    </td>
                    <td>主库</td>
                    <td>192.168.1.240</td>
                    <td>9308</td>
                    <td>MySQL  5.5.29-log</td>
                </tr>
                <tr>
                    <td>
                        <span class="badge identifying-mysql">M</span>
                        mysql_240_5.6
                    </td>
                    <td>主库</td>
                    <td>192.168.1.240</td>
                    <td>9309</td>
                    <td>MySQL  5.6.10-log</td>
                </tr>
                <tr>
                    <td>
                        <span class="badge identifying-mysql">M</span>
                        QMonitor_MySQL
                    </td>
                    <td>主库</td>
                    <td>192.168.1.204</td>
                    <td>3306</td>
                    <td>MySQL  5.5.25a-log</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<hr />

<div class="panel panel-default transparent">
    <div class="panel-heading">
        <h4 class="panel-title"><i class="icon-hand-right"></i>主机列表</h4>
        <div class="panel-toolbar">
            <a data-toggle="collapse" href="#J_reportResourceHostList">
                <i class="icon-chevron-up"></i>
            </a>
        </div>
    </div>
    <div id="J_reportResourceHostList" class="panel-collapse collapse in">
        <div class="panel-body">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>名称</th>
                    <th>IP</th>
                    <th>系统</th>
                    <th>内核</th>
                    <th>物理内存 / GB</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>sto1</td>
                    <td>192.168.1.131</td>
                    <td>Linux</td>
                    <td>2.6.32-220.el6.x86_64</td>
                    <td>16</td>
                </tr>
                <tr>
                    <td>sto2</td>
                    <td>192.168.1.132</td>
                    <td>Linux</td>
                    <td>2.6.32-220.el6.x86_64</td>
                    <td>16</td>
                </tr>
                <tr>
                    <td>rac1</td>
                    <td>192.168.1.141</td>
                    <td>Linux</td>
                    <td>2.6.32-220.el6.x86_64</td>
                    <td>16</td>
                </tr>
                <tr>
                    <td>rac2</td>
                    <td>192.168.1.142</td>
                    <td>Linux</td>
                    <td>2.6.32-220.el6.x86_64</td>
                    <td>8</td>
                </tr>
                <tr>
                    <td>vm-rac1-11g</td>
                    <td>192.168.1.191</td>
                    <td>Linux</td>
                    <td>2.6.32-279.el6.x86_64</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>vm-rac2-11g</td>
                    <td>192.168.1.192</td>
                    <td>Linux</td>
                    <td>2.6.32-279.el6.x86_64</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>woquhost2</td>
                    <td>192.168.1.203</td>
                    <td>Linux</td>
                    <td>2.6.32-220.el6.x86_64</td>
                    <td>32</td>
                </tr>
                <tr>
                    <td>multi-mysql</td>
                    <td>192.168.1.204</td>
                    <td>Linux</td>
                    <td>2.6.32-220.el6.x86_64</td>
                    <td>16</td>
                </tr>
                <tr>
                    <td>woqu-centos</td>
                    <td>192.168.1.222</td>
                    <td>Linux</td>
                    <td>2.6.32-431.5.1.el6.x86_64</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>primary</td>
                    <td>192.168.1.235</td>
                    <td>Linux</td>
                    <td>2.6.32-279.el6.x86_64</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>standby</td>
                    <td>192.168.1.236</td>
                    <td>Linux</td>
                    <td>2.6.32-279.el6.x86_64</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>woqu-mysql2</td>
                    <td>192.168.1.240</td>
                    <td>Linux</td>
                    <td>2.6.32-279.el6.x86_64</td>
                    <td>4</td>
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

