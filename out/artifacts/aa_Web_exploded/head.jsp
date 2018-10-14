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
        @media (min-width: 1024px){
            body{font-size: 18px}
            #logo{
                padding:10px;
            }
            #logo img{
                width:16%;
                height:70%;
            }
            .bbtn{
                color:white;
                background-color:#E36421;
                box-shadow:0 1px 1px 0 #5f5f5f;
                padding:3px 8px;

            }
            #div_login{
                padding-top: 22px;
            }
        } /*>=1024的设备*/

    </style>
</head>
<body>

<div>
    <div style="background-color: #F3BE9C;width:100%;height:100%;">
        <div id="logo" class="col-lg-8 col-md-offset-1">
            <a href="page1.jsp" target="_top"><img src="img/mainpage/logo_title.png"></a>
        </div>
        <div id="div_login" class="col-md-offset-1">
            <button class="btn bbtn">登录</button>
            <a href="page6.jsp" target="_top"><button class="btn bbtn">个人中心</button></a>
        </div>
    </div>

</div>

</body>
</html>
