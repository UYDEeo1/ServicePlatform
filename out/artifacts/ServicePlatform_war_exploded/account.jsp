<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/2
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心-账户信息</title>

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

        .yzm{
            margin-left: 20px;
            margin-top: -4px;
            height: 30px !important;
            margin-left: 17px !important;
            vertical-align: middle !important;
            cursor:pointer;
        }
    </style>
</head>

<body ng-app="myInfo">

<div class="pannel">
    <div class="title">
        <div class="icon">

        </div>
        账户信息
    </div>
</div>

<p class="msg-success">

</p>

<form ng-controller="accountCtrl">
    <table cellspacing="0" cellpadding="0" class="infoTable">
        <colgroup>
            <col width="100"/>
            <col width="220"/>
        </colgroup>
        <tr>
            <td class="first">
                账号：
            </td>
            <td class="second">
                <input id="cUserNameInput" type="text" name="userName" autocomplete="off" readOnly="readOnly" style="color: #954025;" value="{{Data.username}}">
            </td>
            <td class="third">
            </td>
        </tr>
        <tr>
            <td class="first">
                密码：
            </td>
            <td class="second">
                <input id="statusInput" type="text" name="status" autocomplete="off" readOnly="readOnly" style="color: #954025;" value="{{Data.password}}">
            </td>
            <td class="third">
            </td>
        </tr>
    </table>
</form>



<script src="js/angular.min.js"></script>
<script src="js/pageJs/page6_1.js"></script>
</body>

</html>



