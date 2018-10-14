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
    </style>
</head>
<body>

<div class="title_right">个人信息</div>
<div ng-app="myInfo" ng-controller="infoCtrl">
    <ul class="form-group">
        <li class="control-label">编号：{{Oldman.id}}</li>
        <li class="control-label">姓名：{{Oldman.name}}</li>
        <li class="control-label">性别：{{Oldman.sex}}</li>
        <li class="control-label">年龄：{{Oldman.age}}</li>
        <li class="control-label">政治面貌：{{Oldman.politicalStatus}}</li>
        <li class="col-sm-2 control-label">电话：{{Oldman.phone}}</li>
        <li class="col-sm-2 control-label">户籍：{{Oldman.census}}</li>
        <li class="col-sm-2 control-label">身份证号码：{{Oldman.idNum}}</li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul>
        <li class="col-sm-2 control-label">片区：{{Oldman.area}}</li>
        <li class="col-sm-2 control-label">居委：{{Oldman.neiboCom}}</li>
        <li class="col-sm-2 control-label">小区：{{Oldman.neighbour}}</li>
        <li class="col-sm-2 control-label">楼号：{{Oldman.buildNum}}</li>
        <li class="col-sm-2 control-label">地址：{{Oldman.address}}</li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">家庭结构：{{Oldman.family.Family}}</li>
        <li class="col-sm-2 control-label">经济条件：{{Oldman.economic.Economic}}</li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">紧急联系人姓名：{{Linkman.name}}</li>
        <li class="col-sm-2 control-label">电话：{{Linkman.phone}}</li>
        <li class="col-sm-2 control-label">关系：{{Linkman.relation}}</li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">机构养老：无</li>
        <li class="col-sm-2 control-label">社区养老：无</li>
        <li class="col-sm-2 control-label">居家养老：2</li>
        <li class="col-sm-2 control-label">类型：长护险</li>
        <li class="col-sm-2 control-label">服务时间：2018-06-29-2018-06-29</li>
    </ul>
</div>


<script src="js/angular.min.js"></script>
<script src="js/page3.js"></script>


</body>
</html>


