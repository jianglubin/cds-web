<%--
  Created by IntelliJ IDEA.
  User: wyjianglubin
  Date: 2014/5/20
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="head.jsp"/>

<div class="container container-home">
<div class="row">
<div class="col-xs-6">
<div class="panel panel-default">
<div class="panel-heading">
    <h3 class="panel-title"><i class="icon-exclamation-sign"></i>实时报警</h3>

    <div class="panel-toolbar no-border">
        <p class="identifying-wrap">
            <span class="badge identifying-oracle">O</span>Oracle
        </p>

        <p class="identifying-wrap">
            <span class="badge identifying-mysql">M</span>MySQL
        </p>

        <p class="identifying-wrap">
            <span class="badge identifying-host">H</span>Host
        </p>

        <p class="identifying-wrap">
            <span class="badge identifying-master">主</span>主库
        </p>

        <p class="identifying-wrap">
            <span class="badge identifying-slave">备</span>备库
        </p>

        <p class="identifying-wrap">
            <span class="badge identifying-rac">R</span>RAC
        </p>
    </div>
    <div class="panel-toolbar">
        <a href="<%=request.getContextPath() %>/web-qm/warn/home.jsp">查看详情</a>
    </div>
</div>
<div class="panel-body">
<div class="home-panel home-panel_warn">
<table id="J_warnList" class="table table-bordered table-striped table-condensed">
<thead>
<tr>
    <th class="home-warn-name">名称</th>
    <th class="home-warn-disable">未开启</th>
    <th class="home-warn-WARN b-warning">WARN</th>
    <th class="home-warn-CRITICAL b-danger">CRITICAL</th>
    <th class="home-warn-UNKNOWN b-verydanger">UNKNOWN</th>
</tr>
</thead>
<tbody>
<tr>
    <td>
        <span class="badge identifying-oracle">O</span>
        <a href="">qm : qm1</a>
    </td>
    <td class="f-num">0</td>
    <td class="f-num c-warning">5</td>
    <td class="f-num c-danger">5</td>
    <td class="f-num c-verydanger">0</td>
</tr>
<tr>
    <td>
        <span class="badge identifying-oracle">O</span>
        <a href="">qm : qm2</a>
    </td>
    <td class="f-num">0</td>
    <td class="f-num c-warning">3</td>
    <td class="f-num c-danger">7</td>
    <td class="f-num c-verydanger">0</td>
</tr>
<tr>
    <td>
        <span class="badge identifying-oracle">O</span>
        <a href="">rac11g : rac11g1</a>
    </td>
    <td class="f-num">0</td>
    <td class="f-num c-warning">1</td>
    <td class="f-num c-danger">3</td>
    <td class="f-num c-verydanger">0</td>
</tr>
<tr>
    <td>
        <span class="badge identifying-oracle">O</span>
        <a href="">rac11g : rac11g2</a>
    </td>
    <td class="f-num">0</td>
    <td class="f-num c-warning">1</td>
    <td class="f-num c-danger">3</td>
    <td class="f-num c-verydanger">0</td>
</tr>
<tr>
    <td>
        <span class="badge identifying-oracle">O</span>
        <a href="">orcl : orcl</a>
    </td>
    <td class="f-num">0</td>
    <td class="f-num c-warning">1</td>
    <td class="f-num c-danger">2</td>
    <td class="f-num c-verydanger">0</td>
</tr>
<tr>
    <td>
        <span class="badge identifying-mysql">M</span>
        <a href="">mysql_240_5.1</a>
    </td>
    <td class="f-num">0</td>
    <td class="f-num c-warning">0</td>
    <td class="f-num c-danger">1</td>
    <td class="f-num c-verydanger">0</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>

<div class="col-xs-6">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="icon-random"></i>Host Load</h3>

            <div class="panel-toolbar no-border">Last 1 hour (TOP 5)</div>
        </div>
        <div class="panel-body">
            <div class="home-panel">
                <div id="container" style="height: 250px; min-width: 600px"></div>
            </div>
        </div>
    </div>
</div>
</div>
<!--/row -->

<div class="row">
    <div class="col-xs-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="icon-book"></i>巡检报告</h3>

                <div class="panel-toolbar no-border">
                    <a href="<%=request.getContextPath() %>/web-qm/report/inspect.htm">查看详情</a>
                </div>
            </div>
            <div class="panel-body">
                <div class="home-panel home-panel_inspect">
                    <table class="table table-bordered table-striped table-condensed">
                        <thead>
                        <tr>
                            <th class="home-inspect-name">指标名称</th>
                            <th class="home-inspect-count">统计数</th>
                            <th class="home-inspect-name">指标名称</th>
                            <th class="home-inspect-count">统计数</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="c-danger">失效对象</td>
                            <td class="c-danger">11</td>
                            <td class="c-danger">ASM磁盘组空间</td>
                            <td class="c-danger">2</td>
                        </tr>
                        <tr>
                            <td>unknown/suspend的报警</td>
                            <td>0</td>
                            <td>到期分区表</td>
                            <td>0</td>
                        </tr>
                        <tr>
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
                        </tr>
                        <tr>
                            <td>offline数据文件</td>
                            <td>0</td>
                            <td></td>
                            <td></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="icon-list"></i>在线数据库列表</h3>
            </div>
            <div class="panel-body">
                <div class="home-panel home-panel_instance">
                    <table id="J_instanceList" class="table table-bordered table-striped table-condensed">
                        <thead>
                        <tr>
                            <th class="home-instance-name">名称</th>
                            <th class="home-instance-runtime">运行时间</th>
                            <th class="home-instance-runtime-num hidden"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <span class="badge identifying-mysql">M</span>
                                <a href="<%=request.getContextPath() %>/web-qm/database/instance_mysql.jsp">WYCDS_MySQL</a>
                            </td>
                            <td>
                                59 天 5 小时 29 分 42 秒
                            </td>

                            <td class="hidden">5117382</td>
                        </tr>
                        <tr>
                            <td>
                                <span class="badge identifying-oracle">O</span>
                                <a href="<%=request.getContextPath() %>/web-qm/database/instance_oracle.jsp">JES</a>
                            </td>
                            <td>
                                59 天 5 小时 29 分 42 秒
                            </td>

                            <td class="hidden">5117370</td>
                        </tr>
                        <tr>
                            <td>
                                <span class="badge identifying-mysql">M</span>
                                mysql_240_5.5
                            </td>
                            <td>
                                59 天 5 小时 29 分 28 秒
                            </td>

                            <td class="hidden">5117368</td>
                        </tr>
                        <tr>
                            <td>
                                <span class="badge identifying-mysql">M</span>
                               mysql_240_5.6
                            </td>
                            <td>
                                59 天 5 小时 29 分 18 秒
                            </td>

                            <td class="hidden">5117358</td>
                        </tr>
                        <tr>
                            <td>
                                <span class="badge identifying-mysql">M</span>
                                _MySQL
                            </td>
                            <td>
                                44 天 5 小时 39 分 11 秒
                            </td>

                            <td class="hidden">3821951</td>
                        </tr>
                        <tr>
                            <td>
                                <span class="badge identifying-rac">R</span>
                                rac11g
                            </td>
                            <td>
                                1 天 6 小时 55 分 39 秒
                            </td>

                            <td class="hidden">111339</td>
                        </tr>

                        <tr>
                            <td>
                                <span class="badge identifying-oracle">O</span>
                                orcl
                            </td>
                            <td>
                                40 天 22 小时 36 分 5 秒
                            </td>

                            <td class="hidden">3537365</td>
                        </tr>
                        <tr>
                            <td>
                                <span class="badge identifying-rac">R</span>
                               qm
                            </td>
                            <td>
                                9 天 7 小时 29 分 39 秒
                            </td>

                            <td class="hidden">804579</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/row -->

</div>
<!--/container -->
<jsp:include page="foot.jsp"/>
<script type="text/javascript">
var usdeur = [
    [Date.UTC(2010, 0, 1), 0.6976],
    [Date.UTC(2010, 0, 4), 0.6932],
    [Date.UTC(2010, 0, 5), 0.6962],
    [Date.UTC(2010, 0, 6), 0.6944],
    [Date.UTC(2010, 0, 7), 0.6985],
    [Date.UTC(2010, 0, 8), 0.694],
    [Date.UTC(2010, 0, 11), 0.6893],
    [Date.UTC(2010, 0, 12), 0.6908],
    [Date.UTC(2010, 0, 13), 0.6886],
    [Date.UTC(2010, 0, 14), 0.6897],
    [Date.UTC(2010, 0, 15), 0.6951],
    [Date.UTC(2010, 0, 18), 0.6943],
    [Date.UTC(2010, 0, 19), 0.7003],
    [Date.UTC(2010, 0, 20), 0.7086],
    [Date.UTC(2010, 0, 21), 0.7093],
    [Date.UTC(2010, 0, 22), 0.7074],
    [Date.UTC(2010, 0, 25), 0.7069],
    [Date.UTC(2010, 0, 26), 0.7101],
    [Date.UTC(2010, 0, 27), 0.7128],
    [Date.UTC(2010, 0, 28), 0.7162],
    [Date.UTC(2010, 0, 29), 0.7214],
    [Date.UTC(2010, 1, 1), 0.7184],
    [Date.UTC(2010, 1, 2), 0.7156],
    [Date.UTC(2010, 1, 3), 0.7195],
    [Date.UTC(2010, 1, 4), 0.7278],
    [Date.UTC(2010, 1, 5), 0.7312],
    [Date.UTC(2010, 1, 8), 0.7324],
    [Date.UTC(2010, 1, 9), 0.7256],
    [Date.UTC(2010, 1, 10), 0.7274],
    [Date.UTC(2010, 1, 11), 0.7307],
    [Date.UTC(2010, 1, 12), 0.7336],
    [Date.UTC(2010, 1, 15), 0.7355],
    [Date.UTC(2010, 1, 16), 0.7267],
    [Date.UTC(2010, 1, 17), 0.7349],
    [Date.UTC(2010, 1, 18), 0.7431],
    [Date.UTC(2010, 1, 19), 0.7348],
    [Date.UTC(2010, 1, 22), 0.735],
    [Date.UTC(2010, 1, 23), 0.7395],
    [Date.UTC(2010, 1, 24), 0.7386],
    [Date.UTC(2010, 1, 25), 0.7388],
    [Date.UTC(2010, 1, 26), 0.7337],
    [Date.UTC(2010, 2, 1), 0.7375],
    [Date.UTC(2010, 2, 2), 0.7343],
    [Date.UTC(2010, 2, 3), 0.7299],
    [Date.UTC(2010, 2, 4), 0.7363],
    [Date.UTC(2010, 2, 5), 0.7341],
    [Date.UTC(2010, 2, 8), 0.7345],
    [Date.UTC(2010, 2, 9), 0.735],
    [Date.UTC(2010, 2, 10), 0.7331],
    [Date.UTC(2010, 2, 11), 0.7309],
    [Date.UTC(2010, 2, 12), 0.7264],
    [Date.UTC(2010, 2, 15), 0.7313],
    [Date.UTC(2010, 2, 16), 0.7264],
    [Date.UTC(2010, 2, 17), 0.7281],
    [Date.UTC(2010, 2, 18), 0.7348],
    [Date.UTC(2010, 2, 19), 0.7391],
    [Date.UTC(2010, 2, 22), 0.7371],
    [Date.UTC(2010, 2, 23), 0.7425],
    [Date.UTC(2010, 2, 24), 0.7503],
    [Date.UTC(2010, 2, 25), 0.7516],
    [Date.UTC(2010, 2, 26), 0.7458],
    [Date.UTC(2010, 2, 29), 0.7413],
    [Date.UTC(2010, 2, 30), 0.7444],
    [Date.UTC(2010, 2, 31), 0.7393],
    [Date.UTC(2010, 3, 1), 0.736],
    [Date.UTC(2010, 3, 2), 0.7406],
    [Date.UTC(2010, 3, 5), 0.7424],
    [Date.UTC(2010, 3, 6), 0.7473],
    [Date.UTC(2010, 3, 7), 0.7501],
    [Date.UTC(2010, 3, 8), 0.7477],
    [Date.UTC(2010, 3, 9), 0.7408],
    [Date.UTC(2010, 3, 12), 0.7361],
    [Date.UTC(2010, 3, 13), 0.7345],
    [Date.UTC(2010, 3, 14), 0.7324],
    [Date.UTC(2010, 3, 15), 0.7373],
    [Date.UTC(2010, 3, 16), 0.7406],
    [Date.UTC(2010, 3, 19), 0.7416],
    [Date.UTC(2010, 3, 20), 0.745],
    [Date.UTC(2010, 3, 21), 0.747],
    [Date.UTC(2010, 3, 22), 0.7563],
    [Date.UTC(2010, 3, 23), 0.7472],
    [Date.UTC(2010, 3, 26), 0.7467],
    [Date.UTC(2010, 3, 27), 0.7589],
    [Date.UTC(2010, 3, 28), 0.7578],
    [Date.UTC(2010, 3, 29), 0.7547],
    [Date.UTC(2010, 3, 30), 0.7524],
    [Date.UTC(2010, 4, 3), 0.7579],
    [Date.UTC(2010, 4, 4), 0.7706],
    [Date.UTC(2010, 4, 5), 0.7806],
    [Date.UTC(2010, 4, 6), 0.7903],
    [Date.UTC(2010, 4, 7), 0.7842],
    [Date.UTC(2010, 4, 10), 0.7852],
    [Date.UTC(2010, 4, 11), 0.7912],
    [Date.UTC(2010, 4, 12), 0.7909],
    [Date.UTC(2010, 4, 13), 0.7982],
    [Date.UTC(2010, 4, 14), 0.8091],
    [Date.UTC(2010, 4, 17), 0.8076],
    [Date.UTC(2010, 4, 18), 0.8235],
    [Date.UTC(2010, 4, 19), 0.8075],
    [Date.UTC(2010, 4, 20), 0.7974],
    [Date.UTC(2010, 4, 21), 0.7954],
    [Date.UTC(2010, 4, 24), 0.8105],
    [Date.UTC(2010, 4, 25), 0.8109],
    [Date.UTC(2010, 4, 26), 0.821],
    [Date.UTC(2010, 4, 27), 0.8087],
    [Date.UTC(2010, 4, 28), 0.8143],
    [Date.UTC(2010, 4, 31), 0.8149],
    [Date.UTC(2010, 5, 1), 0.8167],
    [Date.UTC(2010, 5, 2), 0.8163],
    [Date.UTC(2010, 5, 3), 0.8214],
    [Date.UTC(2010, 5, 4), 0.8357],
    [Date.UTC(2010, 5, 7), 0.8389],
    [Date.UTC(2010, 5, 8), 0.8364],
    [Date.UTC(2010, 5, 9), 0.8342],
    [Date.UTC(2010, 5, 10), 0.8244],
    [Date.UTC(2010, 5, 11), 0.8257],
    [Date.UTC(2010, 5, 14), 0.819],
    [Date.UTC(2010, 5, 15), 0.8121],
    [Date.UTC(2010, 5, 16), 0.8131],
    [Date.UTC(2010, 5, 17), 0.8074],
    [Date.UTC(2010, 5, 18), 0.8072],
    [Date.UTC(2010, 5, 21), 0.8116],
    [Date.UTC(2010, 5, 22), 0.8148],
    [Date.UTC(2010, 5, 23), 0.8129],
    [Date.UTC(2010, 5, 24), 0.8107],
    [Date.UTC(2010, 5, 25), 0.808],
    [Date.UTC(2010, 5, 28), 0.8141],
    [Date.UTC(2010, 5, 29), 0.8207],
    [Date.UTC(2010, 5, 30), 0.8179],
    [Date.UTC(2010, 6, 1), 0.7993],
    [Date.UTC(2010, 6, 2), 0.7967],
    [Date.UTC(2010, 6, 5), 0.7995],
    [Date.UTC(2010, 6, 6), 0.7923],
    [Date.UTC(2010, 6, 7), 0.7921],
    [Date.UTC(2010, 6, 8), 0.7881],
    [Date.UTC(2010, 6, 9), 0.7911],
    [Date.UTC(2010, 6, 12), 0.7935],
    [Date.UTC(2010, 6, 13), 0.7862],
    [Date.UTC(2010, 6, 14), 0.7854],
    [Date.UTC(2010, 6, 15), 0.7741],
    [Date.UTC(2010, 6, 16), 0.7735],
    [Date.UTC(2010, 6, 19), 0.773],
    [Date.UTC(2010, 6, 20), 0.7749],
    [Date.UTC(2010, 6, 21), 0.7838],
    [Date.UTC(2010, 6, 22), 0.7745],
    [Date.UTC(2010, 6, 23), 0.775],
    [Date.UTC(2010, 6, 26), 0.7703],
    [Date.UTC(2010, 6, 27), 0.7699],
    [Date.UTC(2010, 6, 28), 0.7694],
    [Date.UTC(2010, 6, 29), 0.7653],
    [Date.UTC(2010, 6, 30), 0.7663],
    [Date.UTC(2010, 7, 2), 0.7592],
    [Date.UTC(2010, 7, 3), 0.7564],
    [Date.UTC(2010, 7, 4), 0.7603],
    [Date.UTC(2010, 7, 5), 0.7588],
    [Date.UTC(2010, 7, 6), 0.753],
    [Date.UTC(2010, 7, 8), 0.7567],
    [Date.UTC(2010, 7, 10), 0.7602],
    [Date.UTC(2010, 7, 11), 0.7785],
    [Date.UTC(2010, 7, 12), 0.7787],
    [Date.UTC(2010, 7, 13), 0.7843],
    [Date.UTC(2010, 7, 16), 0.7806],
    [Date.UTC(2010, 7, 17), 0.7771],
    [Date.UTC(2010, 7, 18), 0.7816],
    [Date.UTC(2010, 7, 19), 0.7808],
    [Date.UTC(2010, 7, 20), 0.787],
    [Date.UTC(2010, 7, 23), 0.7918],
    [Date.UTC(2010, 7, 24), 0.7914],
    [Date.UTC(2010, 7, 25), 0.7891],
    [Date.UTC(2010, 7, 26), 0.7872],
    [Date.UTC(2010, 7, 27), 0.7836],
    [Date.UTC(2010, 7, 30), 0.7896],
    [Date.UTC(2010, 7, 31), 0.7891],
    [Date.UTC(2010, 8, 1), 0.7816],
    [Date.UTC(2010, 8, 2), 0.7804],
    [Date.UTC(2010, 8, 3), 0.7755],
    [Date.UTC(2010, 8, 6), 0.7802],
    [Date.UTC(2010, 8, 7), 0.788],
    [Date.UTC(2010, 8, 8), 0.7859],
    [Date.UTC(2010, 8, 9), 0.7888],
    [Date.UTC(2010, 8, 10), 0.7892],
    [Date.UTC(2010, 8, 13), 0.7774],
    [Date.UTC(2010, 8, 14), 0.7695],
    [Date.UTC(2010, 8, 15), 0.7686],
    [Date.UTC(2010, 8, 16), 0.7654],
    [Date.UTC(2010, 8, 17), 0.7662],
    [Date.UTC(2010, 8, 20), 0.7656],
    [Date.UTC(2010, 8, 21), 0.7528],
    [Date.UTC(2010, 8, 22), 0.7467],
    [Date.UTC(2010, 8, 23), 0.7523],
    [Date.UTC(2010, 8, 24), 0.7415],
    [Date.UTC(2010, 8, 27), 0.7447],
    [Date.UTC(2010, 8, 28), 0.7368],
    [Date.UTC(2010, 8, 29), 0.734],
    [Date.UTC(2010, 8, 30), 0.7337],
    [Date.UTC(2010, 9, 1), 0.7253],
    [Date.UTC(2010, 9, 4), 0.7328],
    [Date.UTC(2010, 9, 5), 0.7219],
    [Date.UTC(2010, 9, 6), 0.7186],
    [Date.UTC(2010, 9, 7), 0.7182],
    [Date.UTC(2010, 9, 8), 0.7173],
    [Date.UTC(2010, 9, 11), 0.7212],
    [Date.UTC(2010, 9, 12), 0.7184],
    [Date.UTC(2010, 9, 13), 0.7152],
    [Date.UTC(2010, 9, 14), 0.7131],
    [Date.UTC(2010, 9, 15), 0.7155],
    [Date.UTC(2010, 9, 18), 0.7162],
    [Date.UTC(2010, 9, 19), 0.73],
    [Date.UTC(2010, 9, 20), 0.7156],
    [Date.UTC(2010, 9, 21), 0.7189],
    [Date.UTC(2010, 9, 22), 0.7167],
    [Date.UTC(2010, 9, 25), 0.7183],
    [Date.UTC(2010, 9, 26), 0.7222],
    [Date.UTC(2010, 9, 27), 0.725],
    [Date.UTC(2010, 9, 28), 0.7172],
    [Date.UTC(2010, 9, 29), 0.7171],
    [Date.UTC(2010, 10, 1), 0.719],
    [Date.UTC(2010, 10, 2), 0.7127],
    [Date.UTC(2010, 10, 3), 0.7079],
    [Date.UTC(2010, 10, 4), 0.7029],
    [Date.UTC(2010, 10, 5), 0.7128],
    [Date.UTC(2010, 10, 8), 0.7213],
    [Date.UTC(2010, 10, 9), 0.7263],
    [Date.UTC(2010, 10, 10), 0.726],
    [Date.UTC(2010, 10, 11), 0.7342],
    [Date.UTC(2010, 10, 12), 0.7305],
    [Date.UTC(2010, 10, 15), 0.7369],
    [Date.UTC(2010, 10, 16), 0.7411],
    [Date.UTC(2010, 10, 17), 0.7379],
    [Date.UTC(2010, 10, 18), 0.7323],
    [Date.UTC(2010, 10, 19), 0.7315],
    [Date.UTC(2010, 10, 22), 0.7354],
    [Date.UTC(2010, 10, 23), 0.747],
    [Date.UTC(2010, 10, 24), 0.7487],
    [Date.UTC(2010, 10, 25), 0.7496],
    [Date.UTC(2010, 10, 26), 0.7553],
    [Date.UTC(2010, 10, 29), 0.7634],
    [Date.UTC(2010, 10, 30), 0.7695],
    [Date.UTC(2010, 11, 1), 0.762],
    [Date.UTC(2010, 11, 2), 0.7569],
    [Date.UTC(2010, 11, 3), 0.7455],
    [Date.UTC(2010, 11, 6), 0.7526],
    [Date.UTC(2010, 11, 7), 0.7552],
    [Date.UTC(2010, 11, 8), 0.7549],
    [Date.UTC(2010, 11, 9), 0.7553],
    [Date.UTC(2010, 11, 10), 0.7561],
    [Date.UTC(2010, 11, 13), 0.7466],
    [Date.UTC(2010, 11, 14), 0.7487],
    [Date.UTC(2010, 11, 15), 0.7561],
    [Date.UTC(2010, 11, 16), 0.7553],
    [Date.UTC(2010, 11, 17), 0.7584],
    [Date.UTC(2010, 11, 20), 0.7624],
    [Date.UTC(2010, 11, 21), 0.7639],
    [Date.UTC(2010, 11, 22), 0.7626],
    [Date.UTC(2010, 11, 23), 0.7621],
    [Date.UTC(2010, 11, 24), 0.7622],
    [Date.UTC(2010, 11, 27), 0.7583],
    [Date.UTC(2010, 11, 28), 0.7642],
    [Date.UTC(2010, 11, 29), 0.7562],
    [Date.UTC(2010, 11, 30), 0.7519],
    [Date.UTC(2010, 11, 31), 0.7473],
    [Date.UTC(2011, 0, 3), 0.7488],
    [Date.UTC(2011, 0, 4), 0.7509],
    [Date.UTC(2011, 0, 5), 0.7602],
    [Date.UTC(2011, 0, 6), 0.7705],
    [Date.UTC(2011, 0, 7), 0.7748],
    [Date.UTC(2011, 0, 10), 0.7714],
    [Date.UTC(2011, 0, 11), 0.7736],
    [Date.UTC(2011, 0, 12), 0.7618],
    [Date.UTC(2011, 0, 13), 0.7491],
    [Date.UTC(2011, 0, 14), 0.747],
    [Date.UTC(2011, 0, 17), 0.753],
    [Date.UTC(2011, 0, 18), 0.7475],
    [Date.UTC(2011, 0, 19), 0.7434],
    [Date.UTC(2011, 0, 20), 0.7427],
    [Date.UTC(2011, 0, 21), 0.7343],
    [Date.UTC(2011, 0, 24), 0.733],
    [Date.UTC(2011, 0, 25), 0.7308],
    [Date.UTC(2011, 0, 26), 0.7294],
    [Date.UTC(2011, 0, 27), 0.7288],
    [Date.UTC(2011, 0, 28), 0.7349],
    [Date.UTC(2011, 0, 31), 0.7292],
    [Date.UTC(2011, 1, 1), 0.7232],
    [Date.UTC(2011, 1, 2), 0.7239],
    [Date.UTC(2011, 1, 3), 0.7341],
    [Date.UTC(2011, 1, 4), 0.7364],
    [Date.UTC(2011, 1, 7), 0.7357],
    [Date.UTC(2011, 1, 8), 0.734],
    [Date.UTC(2011, 1, 9), 0.7289],
    [Date.UTC(2011, 1, 10), 0.7351],
    [Date.UTC(2011, 1, 11), 0.7377],
    [Date.UTC(2011, 1, 14), 0.7419],
    [Date.UTC(2011, 1, 15), 0.7409],
    [Date.UTC(2011, 1, 16), 0.7367],
    [Date.UTC(2011, 1, 17), 0.7341],
    [Date.UTC(2011, 1, 18), 0.7304],
    [Date.UTC(2011, 1, 21), 0.731],
    [Date.UTC(2011, 1, 22), 0.7315],
    [Date.UTC(2011, 1, 23), 0.7268],
    [Date.UTC(2011, 1, 24), 0.7236],
    [Date.UTC(2011, 1, 25), 0.7271],
    [Date.UTC(2011, 1, 28), 0.7235],
    [Date.UTC(2011, 2, 1), 0.7263],
    [Date.UTC(2011, 2, 2), 0.7213],
    [Date.UTC(2011, 2, 3), 0.7165],
    [Date.UTC(2011, 2, 4), 0.715],
    [Date.UTC(2011, 2, 7), 0.7162],
    [Date.UTC(2011, 2, 8), 0.7198],
    [Date.UTC(2011, 2, 9), 0.7192],
    [Date.UTC(2011, 2, 10), 0.7246],
    [Date.UTC(2011, 2, 11), 0.7194],
    [Date.UTC(2011, 2, 14), 0.7148],
    [Date.UTC(2011, 2, 15), 0.715],
    [Date.UTC(2011, 2, 16), 0.7203],
    [Date.UTC(2011, 2, 17), 0.7128],
    [Date.UTC(2011, 2, 18), 0.7052],
    [Date.UTC(2011, 2, 21), 0.7036],
    [Date.UTC(2011, 2, 22), 0.7058],
    [Date.UTC(2011, 2, 23), 0.7091],
    [Date.UTC(2011, 2, 24), 0.7058],
    [Date.UTC(2011, 2, 25), 0.71],
    [Date.UTC(2011, 2, 28), 0.7107],
    [Date.UTC(2011, 2, 29), 0.7082],
    [Date.UTC(2011, 2, 30), 0.7079],
    [Date.UTC(2011, 2, 31), 0.7064],
    [Date.UTC(2011, 3, 1), 0.7026],
    [Date.UTC(2011, 3, 4), 0.704],
    [Date.UTC(2011, 3, 5), 0.7026],
    [Date.UTC(2011, 3, 6), 0.6982],
    [Date.UTC(2011, 3, 7), 0.6996],
    [Date.UTC(2011, 3, 8), 0.6907],
    [Date.UTC(2011, 3, 11), 0.6934],
    [Date.UTC(2011, 3, 12), 0.6906],
    [Date.UTC(2011, 3, 13), 0.692],
    [Date.UTC(2011, 3, 14), 0.6896],
    [Date.UTC(2011, 3, 15), 0.6931],
    [Date.UTC(2011, 3, 18), 0.7024],
    [Date.UTC(2011, 3, 19), 0.6961],
    [Date.UTC(2011, 3, 20), 0.6888],
    [Date.UTC(2011, 3, 21), 0.6869],
    [Date.UTC(2011, 3, 22), 0.6869],
    [Date.UTC(2011, 3, 25), 0.6874],
    [Date.UTC(2011, 3, 26), 0.6801],
    [Date.UTC(2011, 3, 27), 0.6763],
    [Date.UTC(2011, 3, 28), 0.6738],
    [Date.UTC(2011, 3, 29), 0.6753],
    [Date.UTC(2011, 4, 2), 0.6759],
    [Date.UTC(2011, 4, 3), 0.674],
    [Date.UTC(2011, 4, 4), 0.6744],
    [Date.UTC(2011, 4, 5), 0.687],
    [Date.UTC(2011, 4, 6), 0.6983],
    [Date.UTC(2011, 4, 8), 0.696],
    [Date.UTC(2011, 4, 10), 0.6945]
];
$(function () {
    var chart = new Highcharts.StockChart({
        credits: {
            href: 'https://www.wangyin.com/',
            text: '网银在线'  },
        chart: {
            renderTo: 'container'//指向的div的id属性
        },
        exporting: {
            enabled: false //是否能导出趋势图图片
        },
        title: {
            text: ''//图表标题
        },
        xAxis: {
            tickPixelInterval: 200,//x轴上的间隔
            //  title :{
            //      text:"title"
            //  },
            type: 'datetime', //定义x轴上日期的显示格式
            labels: {
                formatter: function () {
                    var vDate = new Date(this.value);
                    //alert(this.value);
                    return vDate.getFullYear() + "-" + (vDate.getMonth() + 1) + "-" + vDate.getDate();
                },
                align: 'center'
            }
        },
        yAxis: {

            title: {
                text: '使用率'  //y轴上的标题
            }
        },
        tooltip: {
            xDateFormat: '%Y-%m-%d, %A'//鼠标移动到趋势线上时显示的日期格式
        },
        rangeSelector: {
            buttons: [
                {//定义一组buttons,下标从0开始
                    type: 'week',
                    count: 1,
                    text: '1w'
                },
                {
                    type: 'month',
                    count: 1,
                    text: '1m'
                },
                {
                    type: 'month',
                    count: 3,
                    text: '3m'
                },
                {
                    type: 'month',
                    count: 6,
                    text: '6m'
                },
                {
                    type: 'ytd',
                    text: 'YTD'
                },
                {
                    type: 'year',
                    count: 1,
                    text: '1y'
                },
                {
                    type: 'all',
                    text: 'All'
                }
            ],
            selected: 1//表示以上定义button的index,从0开始
        },

        series: [
            {
                name: 'CPU使用率',//鼠标移到趋势线上时显示的属性名
                data: usdeur//属性值
                //marker : {
                //      enabled : true,
                //      radius : 3
                //  },
                //shadow : true
            }
        ]
    });
});
</script>
</body>
</html>
