<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/10/1
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>一张图</title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <style>
        @media (min-width: 1024px) {
            body {
                font-size: 18px;
                margin: 0;
            }
            #left_pic{
                margin-left:10%;
                margin-top: 30px;
            }
            #left_pic img{
                width:80%;
            }

        }
    </style>
</head>
<body>

<!DOCTYPE html>
<html>
<head>
    <title>portal统一头部</title>

    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>


    <style>
        body {
            margin: 0px;
            padding: 0px;
        }

        #headFrame {
            height: 78px;
            min-width: 1268px;
            width: 100%;
            margin: 0 auto;
            overflow: hidden;
            display: block;
        }
    </style>


</head>

<body>

<iframe id="headFrame" src="head.jsp" frameborder="0" scrolling="no">
</iframe>
</body>
</html>


<div id="left_pic">
    <img src="img/onepicture.jpeg">
</div>


</body>
</html>
