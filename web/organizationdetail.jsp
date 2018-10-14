<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/21
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>机构信息</title>
    <link type="text/css" rel="stylesheet"  href="css/common.css" />
    <link type="text/css" rel="stylesheet"  href="css/account.css" />
    <link rel="icon" href="http://www.smmail.cn/favicon.ico?1234" type="image/x-icon" />
    <link rel="shortcut icon" href="http://www.smmail.cn/favicon.ico?1234" type="image/x-icon" />

    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>
    <script src="js/validate-custom.js" type="text/javascript"></script>

    <style type="text/css">
        body{
            margin:0px;
            padding:0px;
            background-color: #f4f4f4;
        }
    </style>
    <style>
        .title_right {
            background-color: #39b8ef;
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
        .contt{
            width:1000px;
            padding-left: 50px;
        }
        .contt img{
            width:70%;
            height:300px;
            padding-left:-5%;
            padding-bottom: 20px;
        }
        .form-group {
            list-style-type: disc;
        }
        #organization_title{
            padding-top: 25px;
            margin-bottom:30px;
            line-height: 60px;
            background-image: -webkit-linear-gradient(left,#ff9000 0, #e56339 100%);
            background-image: -o-linear-gradient(left,#ff9000 0, #e56339 100%);
            background-image: linear-gradient(to right,#ff9000 0, #e56339 100%);
            background-repeat: repeat-x;
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffff9000', endColorstr='#ffff5000', GradientType=1);
            border-left: 4px solid #e26f31;
            box-shadow: 0 -2px 5px rgba(0,0,0,0.11);
        }
    </style>
</head>
<body>




<div>
    <div id="organization_title">
        <p style="text-align: center;font-size:24px;font-weight: 900;padding-bottom: 25px;color:#424242;letter-spacing: 3px;">古美敬老院</p>
    </div>
    <div class="contt">
    <ul class="form-group">
        <img src="img/yanglao.jpg" align="center">
        <div class="hr-line-dashed"></div>
        <li class="control-label">简介：我单位主要提供收养社会老人、孤老和＂五保＂老人，并提供吃住、护理、医疗、康复服务。</li>
        <li class="control-label">服务内容：提供吃住、护理、医疗、康复服务。</li>
        <li class="control-label">工作时间：8：00-22：00</li>
        <li class="control-label">地址：上海市闵行区虹莘路2288弄135号</li>
        <li class="control-label">联系方式：1234567</li>
        <li class="col-sm-2 control-label">网址：www.gumeijinglaoyuan.com</li>

    </ul>
    <div class="hr-line-dashed"></div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">床位数：50</li>
        <li class="col-sm-2 control-label">入住要求：社会老人、孤老和＂五保＂老人</li>
        <li class="col-sm-2 control-label">设施情况：</li>
        <li class="col-sm-2 control-label">入住数：46</li>
        <li class="col-sm-2 control-label">剩余床位数：4</li>
        <li class="control-label">数据更新时间：2018/07/11</li>
    </ul>
    </div>

</div>

</body>
</html>
