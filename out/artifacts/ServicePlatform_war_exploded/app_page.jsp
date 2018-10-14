<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/10/10
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>app下载</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, target-densitydpi=device-dpi"/>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

    <style>
        @media (min-width: 1024px) {
            body {
                font-size: 18px;
                margin: 0;
                background-color: #f4f4f4;
            }

            div.pannel {
                line-height: 40px;
                margin-bottom: 15px;
                font-size: 18px;
                font-weight: 700;
                border-bottom: 1px solid #e6e6e6;
                margin-left: 10px;
                margin-right: 10px;
            }

            .pannel .icon {
                background-color: #F3BE9C;
                float: left;
                height: 30px;
                left: 10px;
                margin-top: 5px;
                margin-bottom: 5px;
                margin-right: 10px;
                width: 5px;
            }

            .pannel .title {
                border-bottom: 2px solid #F3BE9C;
                padding-bottom: 10px;
            }
            #appdownload{
                width:100%;
                height:350px;
                position: relative;
                background-size: 100% 100%;
                background-repeat: no-repeat;
                background-image: url(img/mainpage/picture.png);
            }
            #appdownload:after{
                content: "";
                width:100%;
                height:100%;
                position: absolute;
                left:0;
                top:0;
                background: inherit;
                filter: blur(1px);
                z-index: 2;
            }
            .download{
                position: absolute;
                left:5%;
                top:30%;
                /*transform: translate(-50%,-50%);*/
                width:100%;
                height:200px;
                text-align: center;
                z-index:11;

            }
            .download h5{
                padding-left: 10px;
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
            background-color: #f4f4f4;
        }

        @media screen and (max-width: 1365px){
            body{font-size: 18px}
            #headFrame {
                height: 78px;
                min-width: 1268px;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
                display: block;}

        }
        @media screen and (min-width: 1366px) and (max-width: 1599px){
            body{font-size: 18px}
            #headFrame {
                height: 78px;
                min-width: 1268px;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
                display: block;}

        }
        @media screen and (min-width: 1600px) and (max-width: 1919px){
            body{font-size: 18px}
            #headFrame {
                height: 78px;
                min-width: 1268px;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
                display: block;}

        }
        @media screen and (min-width: 1920px){
            body{font-size: 18px}
            #headFrame {
                height: 110px;
                min-width: 1268px;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
                display: block;}

        }
    </style>


</head>

<body>

<iframe id="headFrame" src="head.jsp" frameborder="0" scrolling="no">
</iframe>
</body>
</html>

<div  style="margin-top: 50px;width:80%;margin-left: 10%;">
    <div class="pannel">
        <div class="title" style="width:120px;">
            <div class="icon">
            </div>
            APP下载
        </div>
    </div>
    <div id="appdownload">
       <div class="download">
           <div class="col-md-1">
               <img src="img/app_img.png" style="height:110px;width:110px;">
               <h5>IOS下载</h5>
           </div>
           <div class="col-md-2" style=" margin-left: 15px;">
               <img src="img/app_img.png" style="height:110px;width:110px;">
               <h5>Android下载</h5>
           </div>

       </div>

    </div>

</div>


</body>
</html>
