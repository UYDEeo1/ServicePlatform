<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/19
  Time: 09:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>一卡通</title>
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
            margin-top:50px;
            margin-left:30px;
        }
        table th,td{
            /*border: 1px solid #39b8ef;*/
            height:40px;
            text-align: center;
            padding:10px;
        }
        table tr:nth-of-type(odd){
            background-color: #F3BE9C;
        }
        table tr:nth-of-type(even){
            background-color: #eea77c;
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
<body>
<div class="title_right">一卡通</div>
<div ng-app="myInfo" ng-controller="RecordCtrl">
    <div id="box">
        <input type="text" name="search" placeholder="请输入关键字">
        <div id="search">搜索</div>
    </div>
<table>
    <thead>
    <tr style="border-bottom: 1px solid #eea77c;">
        <th>类型</th>
        <th>机构</th>
        <th>数据</th>
        <th>时间</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>消费</td>
        <td>古美理发店</td>
        <td>20.00</td>
        <td>2018/07/07 12:00:00</td>
    </tr>

    <tr>
        <td>签到</td>
        <td>古美活动中心</td>
        <td>无</td>
        <td>2018/07/07 12:00:00</td>
    </tr>

    <tr>
        <td>消费</td>
        <td>古美理发店</td>
        <td>20.00</td>
        <td>2018/07/07 12:00:00</td>
    </tr>

    <tr>
        <td>消费</td>
        <td>古美理发店</td>
        <td>20.00</td>
        <td>2018/07/07 12:00:00</td>
    </tr>

    </tbody>
</table>
</div>
</body>
</html>
