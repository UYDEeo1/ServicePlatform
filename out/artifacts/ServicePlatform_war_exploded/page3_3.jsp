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
    <title>标签</title>
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

<div class="title_right">政策</div>
<div ng-app="myInfo" ng-controller="LabelCtrl">
    <ul class="form-group">
        <li class="control-label" ng-repeat="x in Data"><label>{{x.labelName}} ：{{x.isImplement}}</label></li>
    </ul>

</div>

<script src="js/angular.min.js"></script>
<script src="js/pageJs/page3_3.js"></script>

</body>
</html>
