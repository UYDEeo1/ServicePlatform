<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/9/28
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <style>
        @media screen and (max-width: 1365px){
            body{font-size: 12px}
            #logo{
                padding:10px;
            }
            #logo img{
                width:16%;
                height:73%;
            }
            .bbtn{
                color:white;
                background-color: #e56339;
                box-shadow:0 3px 3px 0 #5f5f5f;
                padding:3px 8px;

            }
            #div_login,#div_login_2{
                padding-top: 22px;
                padding-left: 55%;
            }
        } /*>=1365的设备*/

        @media screen and (min-width: 1366px) and (max-width: 1599px){
            body{font-size: 14px}
            #logo{
                padding:10px;
            }
            #logo img{
                width:16%;
                height:73%;
            }
            .bbtn{
                color:white;
                background-color: #e56339;
                box-shadow:0 3px 3px 0 #5f5f5f;
                padding:3px 8px;

            }
            #div_login,#div_login_2{
                padding-top: 22px;
                padding-left: 55%;
            }
        } /*1370<x<1599的设备*/

        @media screen and (min-width: 1600px) and (max-width: 1919px){
            body{font-size: 16px}
            #logo{
                padding:10px;
            }
            #logo img{
                width:16%;
                height:73%;
            }
            .bbtn{
                color:white;
                background-color: #e56339;
                box-shadow:0 3px 3px 0 #5f5f5f;
                padding:3px 8px;

            }
            #div_login,#div_login_2{
                padding-top: 22px;
                padding-left: 55%;
            }
        } /*1600<x<1919的设备*/

        @media screen and (min-width: 1920px){
            body{font-size: 18px}
            #logo{
                padding:10px;
            }
            #logo img{
                width:16%;
                height:73%;
            }
            .bbtn{
                color:white;
                background-color: #e56339;
                box-shadow:0 3px 3px 0 #5f5f5f;
                padding:3px 8px;

            }
            #div_login,#div_login_2{
                padding-top: 37px;
                padding-left: 55%;
            }
        } /*1600<x<1919的设备*/



    </style>

</head>
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script>
    $.ajax({
        url : "http://47.101.138.13:83/identify/checkToken?token="+getCookie("token"),
        type : "get",
        success : function(data) {
            if(data.success==true){
                $("#div_login").hide();
                $("#div_login_2").show();
                $("#usernam").html(getCookie("username"));
            }
        }
    });

    function getCookie(name)
    {
        var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
        if(arr=document.cookie.match(reg))
            return unescape(arr[2]);
        else
            return null;
    }
    function logoutt() {
        $.ajax({
            url : "http://47.101.138.13:83/identify/logout?token="+getCookie("token"),
            type : "get",
            success : function(data) {
//                window.location.reload();
                delCookie("token");
                top.location.href="page1.jsp";

            }
        });
    }
    function delCookie(name)
    {
        var exp = new Date();
        exp.setTime(exp.getTime() - 1);
        var cval=getCookie(name);
        if(cval!=null)
            document.cookie= name + "="+cval+";expires="+exp.toGMTString();
    }
</script>
<body>

<div>
    <div style="background-color: #ffd5b7;width:100%;height:100%;">
        <div id="logo" class="col-md-8 col-md-offset-1" >
            <a href="page1.jsp" target="_top"><img src="img/mainpage/logo_title.png"></a>
        </div>
        <div id="div_login" class="col-md-offset-3" >
            <a href="login.jsp" target="_blank"><button class="btn bbtn">登录</button></a>
            <a href="page6.jsp" target="_top"><button class="btn bbtn">个人中心</button></a>
        </div>
        <div id="div_login_2" class="col-md-offset-3" style="display: none">
            <a href="page6.jsp" target="_top"><button class="btn bbtn" id="usernam"></button></a>
            <a onclick="logoutt()"><button class="btn bbtn">退出</button></a>
        </div>
    </div>

</div>

</body>
</html>
