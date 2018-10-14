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
            #div_login{
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
            #div_login{
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
            #div_login{
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
            #div_login{
                padding-top: 37px;
                padding-left: 55%;
            }
        } /*1600<x<1919的设备*/



    </style>
</head>
<body>

<div>
    <div style="background-color: #ffd5b7;width:100%;height:100%;">
        <div id="logo" class="col-md-8 col-md-offset-1" >
            <a href="page1.jsp" target="_top"><img src="img/mainpage/logo_title.png"></a>
        </div>
        <div id="div_login" class="col-md-offset-3" >
            <button class="btn bbtn">登录</button>
            <a href="page6.jsp" target="_top"><button class="btn bbtn">个人中心</button></a>
        </div>
    </div>

</div>

</body>
</html>
