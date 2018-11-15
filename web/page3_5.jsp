<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/27
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>积分</title>

    <link href="css/style.min.css?v=4.0.0" rel="stylesheet">
    <link href="css/common_table.css" rel="stylesheet">
    <script src="js/common.js" ></script>

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>




    <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet" type="text/css">
    <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/bootstrap-select.min.css" rel="stylesheet">
    <link href="css/jquery.searchableSelect.css" rel="stylesheet">
    <script src="js/jquery.min.js?v=2.1.4"></script>



    <script src="js/bootstrap.min.js?v=3.3.5"></script>
    <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="js/bootstrap-select.min.js"></script>
    <script src="js/bootstrap-dialog.js"></script>





    <style>
        .title_right {
            background-color: #F3BE9C;
            width: 97%;
            line-height: 82px;
            font-size: 25px;
            text-align: left;
            text-indent: 30px;
            color: white;
            border-left: 1px solid #E2E2E2;
            border-right: 1px solid #E2E2E2;
        }
        table{
            border-collapse: collapse;
            width:90%;
            padding:50px;
            margin-top:20px;
            margin-left:30px;
        }
        table th,td{
            /*border: 1px solid #39b8ef;*/
            height:40px;
            text-align: center;
            padding:10px;
            border:none!important;
        }
        table tr:nth-of-type(odd){
            background-color: #F3BE9C!important;
        }
        table tr:nth-of-type(even){
            background-color: #eea77c!important;
        }
        .pagination>li>a{
            color:#8c4126!important;
        }


        .pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover{
            background-color: #ff5000!important;
            border-color: #ff5000!important;
            color: #fff!important;
        }

        #DataTables_Table_0_info{
            padding-left: 30px;
            color: #423232;
        }
        .table-responsive{
            border:none!important;
        }

        #box{
            width: 380px;
            margin: 30px;
            padding-bottom: 20px;
            font-family: 'Microsoft YaHei';
            font-size: 14px;
        }
        input{
            width: 260px;
            border: 1px solid #e2e2e2;
            height: 30px;
            float: left;
            background-image: url(img/search1.png);
            background-repeat: no-repeat;
            background-size: 25px;
            background-position:5px center;
            padding:0 0 0 40px;
        }
        #search{
            width: 78px;
            height: 32px;
            float: right;
            background: black;
            color: white;
            text-align: center;
            line-height: 32px;
            cursor: pointer;
        }

    </style>
</head>
<body ng-app="myInfo">

<div class="title_right">积分</div>


<p style="margin-left: 30px;margin-top: 20px;margin-bottom: 0;" ng-controller="pCtrl">当前积分：<label>{{PPP.Integral}}</label></p>

<div style="width:97%;">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <%--<div class="ibox-title">--%>
                    <%--<h5>老人 <small>健康档案</small></h5>--%>
                    <%--<div class="ibox-tools">--%>
                    <%--<a class="collapse-link">--%>
                    <%--<i class="fa fa-chevron-up"></i>--%>
                    <%--</a>--%>
                    <%--<a class="close-link">--%>
                    <%--<i class="fa fa-times"></i>--%>
                    <%--</a>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <div class="ibox-content">

                        <div class="table-responsive">
                            <div class="table-responsive">
                                <table class="table table-striped dataTables-example text-nowrap text-nowrap">
                                    <thead>
                                    <tr style="border-bottom: 1px solid #eea77c;">
                                        <th>机构名称</th>
                                        <th>扫码类型</th>
                                        <th>兑换积分</th>
                                        <th>时间</th>
                                        <th>积分变动</th>

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

    </div>

</div>




<%--<div>--%>
    <%--<div id="box">--%>
        <%--<input type="text" name="search" placeholder="请输入关键字">--%>
        <%--<div id="search">搜索</div>--%>
    <%--</div>--%>
    <%--<p style="margin-left: 30px;">当前积分：20</p>--%>
    <%--<table>--%>
        <%--<thead>--%>
        <%--<tr style="border-bottom: 1px solid #eea77c;">--%>
            <%--<th>序号</th>--%>
            <%--<th>时间</th>--%>
            <%--<th>增加方式</th>--%>
            <%--<th>增加积分</th>--%>
            <%--<th>积分变动</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>
        <%--<tbody>--%>
        <%--<tr>--%>
            <%--<td>46</td>--%>
            <%--<td>2018-07-26 22:49:08</td>--%>
            <%--<td>签到</td>--%>
            <%--<td>1</td>--%>
            <%--<td>15-->16</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>46</td>--%>
            <%--<td>2018-07-27 22:50:08</td>--%>
            <%--<td>签到</td>--%>
            <%--<td>1</td>--%>
            <%--<td>16-->17</td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td>46</td>--%>
            <%--<td>2018-07-28 22:49:08</td>--%>
            <%--<td>签到</td>--%>
            <%--<td>1</td>--%>
            <%--<td>17-->18</td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td>46</td>--%>
            <%--<td>2018-07-29 12:49:08</td>--%>
            <%--<td>签到</td>--%>
            <%--<td>1</td>--%>
            <%--<td>18-->19</td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td>46</td>--%>
            <%--<td>2018-07-29 22:49:08</td>--%>
            <%--<td>签到</td>--%>
            <%--<td>1</td>--%>
            <%--<td>19-->20</td>--%>
        <%--</tr>--%>




        <%--</tbody>--%>
    <%--</table>--%>
<%--</div>--%>
<script src="js/angular.min.js"></script>

<script src="js/pageJs/page3_5.js" ></script>

</body>
</html>
