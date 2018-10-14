<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/9/28
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <style>
        @media (min-width: 1024px){
            body{font-size: 18px;margin:0;
            }
            #pic_div{
                background-size: 100% auto;
                background-repeat: no-repeat;
                background-image:url("img/mainpage/picture.png");
                width:100%;
                height:200px;
                margin:0;
            }
            #pic_div img{
                padding-top: 40px;
                padding-left: 120px;
                width:24%;
                height:60%;
            }
            #center_div {
                background-size: 100% auto;
                background-repeat: no-repeat;
                background-image:url("img/mainpage/background.png");
                width:90%;
                margin-left: 5%;
                height:540px;
            }
            .linknum{

                height:120px;
                /*background-color: red;*/
                margin-left: 20px;
                padding-left:20px;
                padding-top: 32px;

            }
            .linknum a{
                cursor: pointer;
                padding-left:5px;
                color:#645693;
                letter-spacing: 3px;
            }
            .linknum img{
                padding-top: 10px;
                padding-left: 2px;
                height:85%;
            }
            #line1{
                padding-top: 100px;
                padding-left:63px;
            }
            #line1_1{
                margin-left: 170px;
            }

            #line1_2{
                margin-left: 500px;
            }
            #line2{
                padding-top: 85px;
            }
            #line2_1{
                margin-left:60px;
            }
            #line2_2,#line2_3{
                margin-left:130px;
            }
            #line2_4{
                padding-left: 130px;
                width:20%;
            }

        } /*>=1024的设备*/

    </style>
</head>
<body>

<div id="pic_div">
    <img src="img/mainpage/word.png">
</div>
<div id="center_div">
    <div class="row" id="line1">
        <div id="line1_1" class="col-md-2 linknum">
            <div><a href="onepicture.jsp" target="_top">一张图</a></div>
            <div><a href="onepicture.jsp" target="_top"><img src="img/mainpage/01.png"></a></div>
        </div>
        <div id="line1_2" class="col-md-2 linknum">
            <div><a href="listpage.jsp" target="_top">一份清单</a></div>
            <div><a href="listpage.jsp" target="_top"><img src="img/mainpage/02.png"></a></div>
        </div>
    </div>
    <div class="row" id="line2">
        <div id="line2_1" class="col-md-2 linknum">
            <div><a href="shoplist.jsp" target="_top">网上商城</a></div>
            <div><a href="shoplist.jsp" target="_top"><img src="img/mainpage/03.png"></a></div>
        </div>
        <div id="line2_2" class="col-md-2 linknum">
            <div><a href="page3.jsp" target="_top">个人档案</a></div>
            <div><a href="page3.jsp" target="_top"><img src="img/mainpage/04.png"></a></div>
        </div>
        <div id="line2_3" class="col-md-2 linknum">
            <div><a href="linkpage.jsp" target="_top">网站链接</a></div>
            <div><a href="linkpage.jsp" target="_top"><img src="img/mainpage/05.png"></a></div>
        </div>
        <div id="line2_4" class="col-md-2 linknum">
            <div><a>APP下载</a></div>
            <div><a><img src="img/mainpage/06.png"></a></div>
        </div>
    </div>
</div>
</body>
</html>
