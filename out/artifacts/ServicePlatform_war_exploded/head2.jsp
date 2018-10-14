<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/6/30
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>已有用户头部</title>

    <link type="text/css" rel="stylesheet"  href="css/common1.css" />

    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/weather.js" type="text/javascript"></script>
    <style type="text/css">

        *{
            font-family: Microsoft Yahei;
            padding:0px; margin:0px;
        }

        /*IE的BUG*/
        img{
            border:0px !important;
        }

        html{
            padding:0px;
            margin:0px;
        }

        body{
            background-color: white;
            border-bottom: 3px solid  #ff6713;
            height: 115px;
            padding:0px;
            margin:0px;
        }

        ul{
            list-style: none outside none;
        }

        a{
            cursor:pointer;
            text-decoration: none;
            color:black;
        }



        /*清除浮动*/
        div.clear_float{
            clear: both;
        }


        div.site-nav{
            height: 36px;
            width: 100%;
            background-color:#f1f1f1;
        }


        div.site-nav-bd{
            font-size: 12px;
            line-height: 36px;
            margin: 0 auto;
            width: 1000px;
        }

        div.site-nav-bd-l{
            font-size:12px;
            height:36px;
            line-height:36px;
            display: inline;
            float: left;
        }

        ul.site-nav-bd-r{
            display: inline;
            float: right;
            font-size:12px;
        }

        .site-nav-bd-r li{
            display: inline;
            float: left;
            cursor:pointer;
            height:36px;
        }

        .site-nav-bd-r li a:hover{
            color:#f40;
        }

        .site-nav-bd-r li div#down_load{
            line-height:36px;
            padding:0 10px;
            position:relative;
            z-index:1000;
        }




        #downloadMenu{
            cursor:default;
        }

        .site-nav-bd-r li div#help-center{
            line-height:36px;
            padding:0 10px;
            z-index:1000;
        }

        .site-nav-bd-r li div#reg-center{
            line-height:36px;
            padding:0 10px;
            z-index:1000;
        }

        .site-nav-bd-r li div#login-center{
            line-height:36px;
            padding:0 0px;
            z-index:1000;
            display:inline-block;
            width:354px;
        }


        .site-nav-bd-r li div#personal-center{

            line-height: 36px;
            padding: 0 10px;
            z-index: 1000;

        }

        #personal-center a{
            color:white;
            background-color:#ff9934;
            padding:3px 8px;
        }

        .site-nav-bd-r li div#user-info{
            line-height: 36px;
            padding: 0 10px;
            z-index: 1000;
        }

        #user-info span{
            margin-left:5px;
            color:#72b9e3;
        }



        div#logout-center{
            line-height: 36px;
            padding: 0 10px;
            z-index: 1000;

        }

        div#logout-center a{
            color:white;
            background-color:#dbdbdb;
            padding:3px 10px;
        }

        form table{
            table-layout:fixed;
        }

        form input{
            width:100px;
            border:1px solid #dfdfdf;
        }

        button#submitBtn{
            border:none;
            color:white;
            background-color:rgb(0,149,218);
            padding:0px 5px;
            cursor:pointer;
            margin-left:10px;
            line-height:21px;
            font-size:12px;
        }

        div.logo-box{
            height: 112px;
            margin: 0 auto;

            width: 1000px;
        }

        div.logo-box .logo{
            height: 50px;
            width: 150px;
            margin-top:12.5px;
            margin-left:400px;
        }


        #dl_dropdown{
            border-left:1px solid #eee;
            border-right:1px solid #eee;
            border-bottom:1px solid #eee;
            z-index: 10002;
            background: none repeat scroll 0 0 #fff;
            line-height: normal;
            position: absolute;
            top: 36px;
            right:174px;
            padding: 8px 10px 8px 15px;
            display:none;
            height: 60px;
        }



        .qr-img{
            border: 1px solid #e8e8e8;
            border-radius: 4px;
            float: left;
            height: 60px;
            width: 60px;
        }

        .qr-img img{
            vertical-align: middle;
            height: 50px;
            margin: 5px;
            width: 50px;
        }

        .qr-right{
            float: left;
            width: 90px;
            height: 90px;
            padding-left:10px;
            padding-top:2px;
        }

        .qr-right a{
            display:block;
            line-height:35px;
        }
        .qr-right p{
            margin-bottom:10px;
            font-weight:bolder;
        }

        /*天气*/
        .weather-box{
            height:36px;
            line-height:36px;
            width:auto;
            float:left;

            text-align: left !important;
            display:none;
        }

        .weather-box .pic{
            height:80px;
            width:80px;
            margin-top:10px;
            float:left;
        }

        .weather-box .detail{
            margin-left:5px;
            float:left;
            margin-top:0px;
            margin-right:10px;
        }

        .weather-box .detail span.temperature{
            font-size: 12px;
            font-family:Microsoft Yahei;
            margin-right:5px;
        }

        .weather-box .detail p.info{
            padding-left:3px;
            margin-top:5px;
        }
        .weather-box .detail span.weather{
            font-size: 12px;
            margin-right:5px;
        }

        .weather-box .detail span.wind{
            color:#959595;
            font-size: 13px;
        }
    </style>


</head>
<body>

<div class="site-nav">
    <div class="site-nav-bd">
        <div class="site-nav-bd-l">
            <%--<div style="float:left;height:36px;line-height:36px;">--%>
                <%--<img src="/smmail/cop/images/1.png"  style="float:left;width:60px;height:20px;margin-right:5px;margin-top:9px;"/>--%>
                <%--<a href="page1.jsp" target="_top">一站式城市服务平台&nbsp;</a>--%>
            <%--</div>--%>

        </div>

        <ul class="site-nav-bd-r">

            <li>
                <div id="user-info">
                    你好！<span id="cUserName" >xxx</span>
                </div>
            </li>

            <li>
                <div id="logout-center">
                    <a href="page1.jsp" target="_top" onclick="logout()">退&nbsp;&nbsp;出</a>
                </div>
            </li>

            <li>
                <div id="personal-center">
                    <a href="page6.jsp" target="_top">个人中心</a>
                </div>
            </li>

            <li>
                <div id="help-center">
                    <a id="help_a" target="_top">帮助中心</a>
                </div>
            </li>

            <li id="downloadMenu" >
                <div id="down_load">
                    <a href="javascript:void(0)">下载App</a>
                </div>

                <div id="dl_dropdown">
                    <div class="qr-img">
                        <img src="/smmail/cop/images/smy.png">
                    </div>
                    <div class="qr-right">
                        <!--
                        <p>
                            下载
                        </p> -->

                        <a href="http://app.eshimin.com/download.html" target="_blank">
                            <img class="d_img_1" src="/smmail/cop/images/android_download.jpg" >
                        </a>

                        <a href="http://app.eshimin.com/download.html"  target="_blank">
                            <img class="d_img_2" src="/smmail/cop/images/ios_download.jpg">
                        </a>
                    </div>

                </div>
            </li>
        </ul>
    </div>
</div>


<div class="logo-box" style="color:#ff6713;font-size: 30px;font-weight: 800;">
    <div style="margin-top:10px;width:55px;float:left"><img alt="加载中" src="logo.png"></div>
    <div style="width:945px;float:right;margin-top:20px;"><a href="page1.jsp" target="_top" style="color:#ff6713;">古美路街道综合为老服务平台</a></div>
    <div style="clear:both;">
    </div>
</div>

</body>
</html>


<script type="text/javascript">


    $(function(){
        $("#downloadMenu").hover(function(){
            $("#down_load").css("background","none repeat scroll 0 0 #fff")
                .css("border-color","#eee")
                .css("border-style","solid")
                .css("border-width","0 1px")
                .css("padding","0 9px 0px")
                .css("z-index","1001");
            $("#dl_dropdown").show();
        },function(){
            $("#down_load").removeAttr("style");
            $("#dl_dropdown").hide();
        });


        $("#cUserName").on("click",function(){
            try{
                top.location.host;
            }
            catch(exp){
                top.location.href="http://www.eshimin.com/pages/personal/index.jsp";
            }
        });

        //getWeather();
        //getWeatherNew();
        getWeatherNew2();
    });

    function    logout() {
//        var href = "window.parent.location.href";
        var href = "http://www.eshimin.com";
        var logout = "http://sso.eshimin.com/logout"+"?service="+href;
        window.parent.location.href = logout;
    }




</script>
