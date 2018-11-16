<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/9/9
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
        }
    </style>

    <link  href="css/common.css" type="text/css" rel="stylesheet" />
    <link  href="css/personal.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>
    <script src="js/validate-custom.js" type="text/javascript"></script>

    <style type="text/css">

        body{
            border: 1px solid #e6e6e6;
            width: 720px;/*内部整体宽度*/
            padding: 10px;

        }

        table{
            font-size: 14px !important;
        }

        table tr{
            height:44px !important;
        }

        table td.first{
            padding-top: 5px;
        }

        input[readonly="readonly"]{
            border: none !important;
        }




        .msg-success{
            line-height: 30px;
            margin-bottom: 20px;
            font-size: 14px;
            color:green;

            text-align: center;
            display: none;
            background-color: #F0F8FF;
        }

        div.pannel{
            line-height: 30px;
            margin-bottom: 15px;
            font-size: 15px;
            border-bottom: 1px solid  #e6e6e6;
            margin-left: 10px;
            margin-right: 10px;
        }

        .pannel .icon{
            background-color: #F3BE9C;
            float: left;
            height: 20px;
            left: 10px;
            margin-top: 5px;
            margin-bottom: 5px;
            margin-right:10px;
            width: 5px;
        }

        .pannel .title{
            width:100px;
            border-bottom: 2px solid  #F3BE9C;
            padding-bottom:10px;
        }

        #cancelMobileForm, #changeMobileForm, #bindMobileForm{
            display:none;
        }

        #nextStep3 {
            background-color: transparent !important;
            border: medium none !important;
            color: #fff !important;
            cursor: pointer !important;
            height: 32px !important;
            line-height: 32px !important;
            text-align: center !important;
            width: inherit !important;
        }

        form table div.tip {
            color: #999999;
            font-size: 13px !important;
            height: 20px;
            padding: 5px 0;
        }

      .time{
          color:#777272;
          font-size: 14px;
          padding-left: 10px;
          padding-right: 10px;

        }
        .cont{
            font-size: 15px;
            color: #954025;
        }

    </style>
</head>
<body ng-app="myInfo" >


<div class="pannel">
    <div class="title">
        <div class="icon">

        </div>
        消息通知
    </div>
</div>

<p class="msg-success">

</p>

<div ng-controller="messageCtrl">
    <ul>
        <li ng-repeat="x in Mess"><label class="time">{{x.time}}</label><label class="cont">{{x.content}}</label></li>

    </ul>
</div>




<script src="js/angular.min.js"></script>
<script src="js/pageJs/page6_3.js"></script>


</body>
</html>
