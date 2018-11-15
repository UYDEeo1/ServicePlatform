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
    <title>健康档案</title>
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


<div class="title_right">健康档案</div>
<div ng-app="myInfo" ng-controller="HealthCtrl">
    <ul class="form-group">
        <li class="col-sm-2 control-label">血型：<label>{{Data.bloodType}}</label></li>
        <li class="col-sm-2 control-label">失智情况：<label>{{Data.intelligence}}</label></li>
        <li class="col-sm-2 control-label">视力：<label>{{Data.eyesight}}</label></li>

        <li class="col-sm-2 control-label">慢病: <label ng-repeat="x in ChronicDis">{{x.secTypeName}}；&nbsp;</label></li>

        <li class="col-sm-2 control-label">失能情况：<label ng-repeat="x in AbiliInfo">{{x.secTypeName}}；</label></li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">药物反应: <label ng-repeat="x in DrugAlley">{{x.secTypeName}}；</label></li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">恶性肿瘤史：<label  ng-repeat="x in Cancer">{{x.desc}}；</label></li>
        <li class="col-sm-2 control-label">骨折史: <label ng-repeat="x in Broken">{{x.desc}}；</label></li>
        <li class="col-sm-2 control-label">残疾情况: <label ng-repeat="x in Disabled">{{x.desc}}；</label></li>

    </ul>
</div>

<script src="js/angular.min.js"></script>
<script src="js/pageJs/page3_2.js"></script>

</body>
</html>
