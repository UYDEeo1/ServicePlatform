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

    <script src="js/sweetalert.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/sweetalert.css">

    <%--<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">--%>
    <style>
        @media screen and (max-width: 1365px){
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
                width:30%;
                height:75%;
            }
            #center_div {
                background-size: 100% auto;
                background-repeat: no-repeat;
                background-image:url("img/mainpage/background.png");
                width:80%;
                margin-left: 10%;
                height:600px;
            }
            .linknum{

                /*height:120px;*/
                /*!*background-color: red;*!*/
                /*margin-left: 20px;*/
                /*padding-left:20px;*/
                /*padding-top: 32px;*/
                height: 16%;
                padding-left: 2%;
                padding-top: 2%;

            }
            .linknum a{
                cursor: pointer;
                /*padding-left:5px;*/
                padding-left:1%;
                color:#645693;
                letter-spacing: 3px;
            }
            .linknum img{
                /*padding-top: 10px;*/
                /*padding-left: 2px;*/
                padding-top: 3%;
                padding-left: 1%;
                height:85%;
            }
            #line1{
                /*padding-top: 100px;*/
                /*padding-left:63px;*/
                padding-top: 8%;
                padding-left: 8%;
            }
            #line1_1{
                /*margin-left: 170px;*/
                margin-left: 11%;
            }

            #line1_2{
                /*margin-left: 500px;*/
                margin-left: 42%;
            }
            #line2{
                /*padding-top: 85px;*/
                padding-top: 8%;
            }
            #line2_1{
                /*margin-left:60px;*/
                margin-left: 4%;
            }
            #line2_2,#line2_3{
                /*margin-left:130px;*/
                margin-left: 10%;
            }
            #line2_4{
                /*padding-left: 130px;*/
                padding-left: 13%;
                width:22%;
            }

        } /*<=1365的设备*/

        @media screen and (min-width: 1366px) and (max-width: 1599px){
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
                width:30%;
                height:75%;
            }
            #center_div {
                background-size: 100% auto;
                background-repeat: no-repeat;
                background-image:url("img/mainpage/background.png");
                width:80%;
                margin-left: 10%;
                height:600px;
            }
            .linknum{

                /*height:120px;*/
                /*!*background-color: red;*!*/
                /*margin-left: 20px;*/
                /*padding-left:20px;*/
                /*padding-top: 32px;*/
                height: 16%;
                padding-left: 2%;
                padding-top: 2%;

            }
            .linknum a{
                cursor: pointer;
                /*padding-left:5px;*/
                padding-left:1%;
                color:#645693;
                letter-spacing: 3px;
            }
            .linknum img{
                /*padding-top: 10px;*/
                /*padding-left: 2px;*/
                padding-top: 3%;
                padding-left: 1%;
                height:85%;
            }
            #line1{
                /*padding-top: 100px;*/
                /*padding-left:63px;*/
                padding-top: 8%;
                padding-left: 8%;
            }
            #line1_1{
                /*margin-left: 170px;*/
                margin-left: 11%;
            }

            #line1_2{
                /*margin-left: 500px;*/
                margin-left: 42.5%;
            }
            #line2{
                /*padding-top: 85px;*/
                padding-top: 9%;
            }
            #line2_1{
                /*margin-left:60px;*/
                margin-left: 4%;
            }
            #line2_2,#line2_3{
                /*margin-left:130px;*/
                margin-left: 10.3%;
            }
            #line2_4{
                /*padding-left: 130px;*/
                padding-left: 12.5%;
                width:22%;
            }

        } /*1365<x<1599的设备*/

        @media screen and (min-width: 1600px) and (max-width: 1919px){
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
                width:30%;
                height:75%;
            }
            #center_div {
                background-size: 100% auto;
                background-repeat: no-repeat;
                background-image:url("img/mainpage/background.png");
                width:80%;
                margin-left: 10%;
                height:600px;
            }
            .linknum{

                /*height:120px;*/
                /*!*background-color: red;*!*/
                /*margin-left: 20px;*/
                /*padding-left:20px;*/
                /*padding-top: 32px;*/
                height: 16%;
                padding-left: 2%;
                padding-top: 2%;

            }
            .linknum a{
                cursor: pointer;
                /*padding-left:5px;*/
                padding-left:1%;
                color:#645693;
                letter-spacing: 3px;
            }
            .linknum img{
                /*padding-top: 10px;*/
                /*padding-left: 2px;*/
                padding-top: 3%;
                padding-left: 1%;
                height:85%;
            }
            #line1{
                /*padding-top: 100px;*/
                /*padding-left:63px;*/
                padding-top: 8%;
                padding-left: 8%;
            }
            #line1_1{
                /*margin-left: 170px;*/
                margin-left: 11%;
            }

            #line1_2{
                /*margin-left: 500px;*/
                margin-left: 43%;
            }
            #line2{
                /*padding-top: 85px;*/
                padding-top: 10%;
            }
            #line2_1{
                /*margin-left:60px;*/
                margin-left: 4%;
            }
            #line2_2,#line2_3{
                /*margin-left:130px;*/
                margin-left: 10.8%;
            }
            #line2_4{
                /*padding-left: 130px;*/
                padding-left: 12%;
                width:22%;
            }

        } /*1600<x<1919的设备*/

        @media screen and (min-width: 1920px){
            body{font-size: 18px;margin:0;
            }
            #pic_div{
                background-size: 100% auto;
                background-repeat: no-repeat;
                background-image:url("img/mainpage/picture.png");
                width:100%;
                height:250px;
                margin:0;
            }
            #pic_div img{
                padding-top: 40px;
                padding-left: 120px;
                width:24%;
                height:80%;
            }
            #center_div {
                background-size: 100% auto;
                background-repeat: no-repeat;
                background-image:url("img/mainpage/background.png");
                width:80%;
                margin-left: 10%;
                height:650px;
            }
            .linknum{

                /*height:120px;*/
                /*!*background-color: red;*!*/
                /*margin-left: 20px;*/
                /*padding-left:20px;*/
                /*padding-top: 32px;*/
                height: 22%;
                padding-left: 2%;
                padding-top: 2%;

            }
            .linknum a{
                cursor: pointer;
                /*padding-left:5px;*/
                /*padding-left:1%;*/
                color:#645693;
                letter-spacing: 3px;
            }
            .linknum img{
                /*padding-top: 10px;*/
                /*padding-left: 2px;*/
                padding-top: 3%;
                padding-left: 1%;
                height:85%;
            }
            #line1{
                /*padding-top: 100px;*/
                /*padding-left:63px;*/
                padding-top: 8.5%;
                padding-left: 8%;
            }
            #line1_1{
                /*margin-left: 170px;*/
                margin-left: 11%;
            }

            #line1_2{
                /*margin-left: 500px;*/
                margin-left: 43%;
            }
            #line2{
                /*padding-top: 85px;*/
                padding-top: 7%;
            }
            #line2_1{
                /*margin-left:60px;*/
                margin-left: 4%;
            }
            #line2_2,#line2_3{
                /*margin-left:130px;*/
                margin-left: 10.3%;
            }
            #line2_4{
                /*padding-left: 130px;*/
                padding-left: 12.3%;
                width:22%;
            }

        } /*1600<x<1919的设备*/



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
            <%--<div><a href="listpage_new.jsp" target="_top">一份清单</a></div>--%>
            <%--<div><a href="listpage_new.jsp" target="_top"><img src="img/mainpage/02.png"></a></div>--%>
                <div><a onclick="aa()">一份清单</a></div>
                <div><a onclick="aa()"><img src="img/mainpage/02.png"></a></div>
        </div>
    </div>
    <div class="row" id="line2">
        <div id="line2_1" class="col-md-2 linknum">
            <div><a href="shop_detail.jsp" target="_top">网上商城</a></div>
            <div><a href="shop_detail.jsp" target="_top"><img src="img/mainpage/03.png"></a></div>
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
            <div><a href="app_page.jsp" target="_top">APP下载</a></div>
            <div><a href="app_page.jsp" target="_top"><img src="img/mainpage/06.png"></a></div>
        </div>
    </div>
</div>


<script>
    function aa() {
        swal({
            text:"正在建设中"
        })
    }

</script>
</body>

</html>
