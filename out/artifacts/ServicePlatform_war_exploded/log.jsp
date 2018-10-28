<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/2
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心-手机绑定</title>


    <link  href="css/common.css" type="text/css" rel="stylesheet" />
    <link  href="css/personal.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>
    <script src="js/validate-custom.js" type="text/javascript"></script>


    <script src="js/sweetalert.min.js"></script>

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
        table td.first {
            text-align: right;
            padding-right: 10px;
            width: 120px;
        }
        table td.second {
            width: 220px;
        }
        table div.tip {
            color: #999999;
            font-size: 13px !important;
            height: 20px;
            padding: 5px 0;
        }

        table td.third {
            padding-left: 10px;
        }
        table td{
            vertical-align: top !important;
        }
        .ac-button {
            background: none repeat scroll 0 0 #F3BE9C;
            border-radius: 8px;
            color: #fff;
            cursor: pointer;
            font-size: 14px;
            text-align: center;
            width: 140px;
            height: 32px;
            line-height: 32px;
            display: inline-block;
        }


    </style>
</head>

<body onload="bodyResize()" ng-app="myInfo">
<div class="pannel">
    <div class="title">
        <div class="icon">

        </div>
        修改密码
    </div>
</div>

<p class="msg-success">

</p>

<form ng-controller="userpswdCtrl" name="myForm" novalidate>

    <table cellspacing="0" cellpadding="0">
        <colgroup>
            <col width="100">
            <col width="220">
        </colgroup>
        <tbody><tr>
            <td class="first">
                <font color="red">*</font>&nbsp;当前密码：
            </td>
            <td class="second">
                <input id="oldpsdInput" type="password" ng-model="user.password">
                </span>
            </td>
            <td class="third">
            </td>
        </tr>
        <tr>
            <td class="first">
                <font color="red">*</font>&nbsp;新密码：
            </td>
            <td class="second">
                <input id="newpsdInput" type="password" ng-model="user.newPassword" ng-minlength="8" ng-maxlength="16" required>
                <div class="tip">6-16个英文字母，数字或符号的组合</div>
            </td>
            <td class="third">
            </td>
        </tr>
        <tr>
            <td class="first">
                <font color="red">*</font>&nbsp;确认密码：
            </td>
            <td class="second">
                <input id="confirmPsdInput" type="password" ng-model="password_again">
            </td>
            <td class="third">
            </td>
        </tr>

        <tr>
            <td>
            </td>
            <td>
                <div class="ac-button">
                    <input type="submit" value="保存" id="submit" ng-click="changePassword()">
                </div>
            </td>
            <td>
                <div class="summary_msg">

                </div>
            </td>
        </tr>

        </tbody></table>

</form>

</body>
</html>

