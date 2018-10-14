<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/6/30
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page1</title>
</head>
<body onLoad="scrollTo(0,0)">



<!DOCTYPE html>
<html>
<head>
    <title>portal统一头部</title>
    <link rel="icon" href="/smmail/cop/images/favicon.ico?1234" type="image/x-icon"/>
    <link rel="shortcut icon" href="/smmail/cop/images/favicon.ico?1234"
          type="image/x-icon"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, target-densitydpi=device-dpi"/>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">

    <link type="text/css" rel="stylesheet" href="css/common.css"/>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js"
            type="text/javascript"></script>
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>
    <script src="js/validate-custom.js" type="text/javascript"></script>
    <script src="js/sysout.js"></script>


    <style>
        body {
            margin: 0px;
            padding: 0px;
        }

        @media screen and (max-width: 1365px){
            body{font-size: 12px}
            #headFrame {
                height: 78px;
                min-width: 1268px;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
                display: block;}
            #indexIframe{
                height:800px;
            }
        }
        @media screen and (min-width: 1366px) and (max-width: 1599px){
            body{font-size: 14px}
            #headFrame {
                height: 78px;
                min-width: 1268px;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
                display: block;}
            #indexIframe{
                height:800px;
            }
        }
        @media screen and (min-width: 1600px) and (max-width: 1919px){
            body{font-size: 16px}
            #headFrame {
                height: 78px;
                min-width: 1268px;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
                display: block;}
            #indexIframe{
                height:800px;
            }
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
            #indexIframe{
                height:1000px;
            }
        }
    </style>

</head>

<body>

<iframe id="headFrame" src="head.jsp" frameborder="0" scrolling="no" style="border-bottom:3px solid #E98242; ">
</iframe>
</body>
</html>


<script type="text/javascript">
    //获取登录用户
    function getLoginUser(){
        return '';
    }

    function getUserInfo(){
        var json ={};
        json.societyCode = '';
        json.userName =  '';
        json.real =  '';
        return json;
    }

    /*更新iframe高度*/
    function refreshIframeHeight(iframe,height){
        $("#"+iframe).height(parseInt(height)+10);
    }

</script>


<div id="xinchun-image"></div>


<div>

    <iframe id="indexIframe" src="mainpage.jsp" frameborder="0" scrolling="no" style="width:100%;">
    </iframe>
</div>




<script>
//    var winWidth,winHeight;
//    // 获取窗口宽度
//    if (window.innerWidth)
//        winWidth = window.innerWidth;
//    else if ((document.body) && (document.body.clientWidth))
//        winWidth = document.body.clientWidth;
//    // 获取窗口高度
//    if (window.innerHeight)
//        winHeight = window.innerHeight;
//    else if ((document.body) && (document.body.clientHeight))
//        winHeight = document.body.clientHeight;
//    // 通过深入 Document 内部对 body 进行检测，获取窗口大小
//    if (document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth)
//    {
//        winHeight = document.documentElement.clientHeight;
//        winWidth = document.documentElement.clientWidth;
//    }
//
//    alert(winWidth);
//    alert(winHeight);

</script>


</body>
</html>
