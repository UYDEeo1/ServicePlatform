<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/19
  Time: 09:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>
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
        .hr-line-dashed {
            border-top: 1px dashed #e7eaec;
            color: #fff;
            background-color: #fff;
            height: 1px;
            margin: 20px 0;
        }
        .control-label{
            line-height: 40px;
            padding-right: 40px;
        }
        .control-label label{
            font-size: 15px;
            color: #954025;
        }
    </style>
</head>
<body>

<div class="title_right">个人信息</div>
<div ng-app="myInfo" ng-controller="infoCtrl">
    <ul class="form-group">
        <li class="control-label">编号：<label>{{Oldman.id}}</label></li>
        <li class="control-label">姓名：<label>{{Oldman.name}}</label></li>
        <li class="control-label">性别：<label>{{Oldman.sex}}</label></li>
        <li class="control-label">年龄：<label>{{Oldman.age}}</label></li>
        <li class="control-label">政治面貌：<label>{{Oldman.politicalStatus}}</label></li>
        <li class="col-sm-2 control-label">电话：<label>{{Oldman.phone}}</label></li>
        <li class="col-sm-2 control-label">户籍：<label>{{Oldman.census}}</label></li>
        <li class="col-sm-2 control-label">身份证号码：<label>{{Oldman.idNum}}</label></li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul>
        <li class="col-sm-2 control-label">片区：<label>{{Oldman.area}}</label></li>
        <li class="col-sm-2 control-label">居委：<label>{{Oldman.neiboCom}}</label></li>
        <li class="col-sm-2 control-label">小区：<label>{{Oldman.neighbour}}</label></li>
        <li class="col-sm-2 control-label">楼号：<label>{{Oldman.buildNum}}</label></li>
        <li class="col-sm-2 control-label">地址：<label>{{Oldman.address}}</label></li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">家庭结构：<label>{{Oldman.family.Family}}</label></li>
        <li class="col-sm-2 control-label">经济条件：<label>{{Oldman.economic.Economic}}</label></li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">紧急联系人姓名：<label>{{Linkman.name}}</label></li>
        <li class="col-sm-2 control-label">电话：<label>{{Linkman.phone}}</label></li>
        <li class="col-sm-2 control-label">关系：<label>{{Linkman.relation}}</label></li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">机构养老：<label>{{Organ.oldmanStatus}}</label></li>
        <li class="col-sm-2 control-label">社区养老：<label>{{Community.oldmanStatus}}</label></li>
        <li class="col-sm-2 control-label">居家养老：<label>{{Home.oldmanStatus}}</label></li>
        <li class="col-sm-2 control-label">类型：<label>{{Home.homeType}}</label></li>
        <li class="col-sm-2 control-label">居家养老服务时间：<label>{{Home.time}}</label></li>
    </ul>
</div>


<script src="js/angular.min.js"></script>
<script src="js/pageJs/page3.js"></script>


</body>
</html>


