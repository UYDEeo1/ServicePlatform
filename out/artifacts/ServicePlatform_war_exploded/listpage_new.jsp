<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/9/30
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>一份清单</title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.9.1.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/listpage.css"/>
    <style>
        @media (min-width: 1024px){
            body{font-size: 18px;margin:0;
                background-color: #f4f4f4;
            }
            .list_div{
                position: relative;
                margin-top: 5%;
                margin-left: 3%;
                /*padding-top:20px;*/
                /*padding-left: 10px;*/
                line-height: 30px;
                width:22%;
                height:750px;
                color: black;
                float: left;
                background-color: #FFFFff;
                border: 2px solid rgba(255,255,255,0.8);
                box-shadow: 0 -4px 10px rgba(0,0,0,.2);
            }
            .list_div p{
                padding-top: 8%;
                font-size: 21px;
                font-weight:700;
                padding-left: 8%;
            }
            .list_div details{
                padding-left: 10%;
            }
            .list_div ul{
                padding-left: 0;
                padding-top: 3%;
            }
            .list_div li{
                line-height: 40px;
                list-style-type:none;
                text-align: right;
                right:0;
                font-size: 16px;

            }
            .list_div li a{
                color: #424242;
                text-decoration:none;
            }
            .list_div li a img{
                padding-left:20%;
                padding-right: 5%
            }
            dd a:hover{
                color: #cb8e6a;
            }
            .list_div summary{
                padding-left: 6%;
                padding-top: 4%;

            }
            .lineee{
                width:100%;
                height:8px;
                background-color:#e56339 ;
                box-shadow:0 1px 1px 0 #cb8e6a;
            }
            .list_div li:hover{
                background-color: #f4f4f4;
            }

            .organ_div{
                margin-top: 4%;
                margin-left: 23%;
                position: absolute;!important;
                width:55%;
                box-shadow: 0 3px 6px rgba(0,0,0,.175);
            }
            .relatedOrg{
                margin-top: 4%;
                margin-left: 77%;
                position: absolute;
                height:900px;
                width:23%;
            }
            #daohang{
                position:absolute;
                z-index:1;
            }
            .hidden_div{
                position: relative;
                float: left;
                margin-right: 0;
                margin-top: 25%;
                padding-top: 2%;
                padding-bottom: 2%;
                background-color: #ffffff;
                /*border: 3px solid #f4f4f4;*/
                box-shadow:0 1px 1px 0 #949494;
                border-radius: 4px;


            }
            #hidden_div1{
                margin-top: 13%;
            }
            .title_1{
                font-weight:700;
                font-size: 18px;
            }
            .title_2{
                color:#cb8e6a;
                font-size: 17px;
            }
            .left-menu{
                position: absolute;
                z-index: 1000;
                left:100%;
                display: none;
                float: left;
                min-width: 180px;
                padding: 5px 0;
                margin: -40px 0 0;
                font-size: 14px;
                text-align: left;
                list-style: none;
                background-color: #fff;
                -webkit-background-clip: padding-box;
                background-clip: padding-box;
                border: 1px solid rgba(0,0,0,.15);
                border-radius: 4px;
                -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
                box-shadow: 0 6px 12px rgba(0,0,0,.175);
            }
            .left-menu li{
                text-align: center;

            }
            .left-menu li:hover{
                background-color: #ffffff;
                color:#cb8e6a;
                cursor: pointer;
            }
            .left-menu li a:hover{
                color:#cb8e6a;
            }
            .relatedOrg li{
                list-style-type:none;
            }

            .box_related{
                margin-right:20px;
                padding:3%;
                box-shadow: 0 6px 12px rgba(0,0,0,.175);
                margin-left: 0;
                margin-bottom: 40px;

            }

            .box_related img{
                width:100%;
                height:150px;
                margin-bottom: 10px;
            }
            .box_related a{
                color:#cb8e6a;
                font-size:16px;
                text-decoration:none;
            }

        } /*>=1024的设备*/

    </style>
    <script>

        function overdiv(x) {
            document.getElementById(x).style.display="block";
        }
        function outdiv(x) {
            document.getElementById(x).style.display="none";
        }
    </script>
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
            body{font-size: 12px}
            #headFrame {
                height: 78px;
                min-width: 1268px;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
                display: block;}

        }
        @media screen and (min-width: 1366px) and (max-width: 1599px){
            body{font-size: 15px}
            #headFrame {
                height: 78px;
                min-width: 1268px;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
                display: block;}

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

<div id="daohang" class="container">

    <div class="list_div">
    <%--/*******左侧导航**/--%>
        <div class="lineee"></div>
        <p>街道老龄委</p>
        <details open>
            <summary class="title_1">街道服务办</summary>
            <details open>
                <summary class="title_2">街道内设机构</summary>
                <ul >
                    <li style="padding-right: 25%;"><a href="#">助老服务社</a></li>
                    <li style="padding-right: 25%;"><a href="#">老年协会</a></li>
                </ul>
            </details>
            <details open>
                <summary class="title_2">街道内设机构</summary>
                <ul>
                    <li onmouseover="overdiv('menu1')" onmouseout="outdiv('menu1')">
                        <a href="#">敬老院
                            <img src="img/nextstep_icon.png">
                        </a>
                        <ul id="menu1" class="left-menu" onmouseover="overdiv('menu1')" onmouseout="outdiv('menu1')">
                            <li><a href="#">古美敬老院 </a></li>
                            <li><a href="#">老年莲花公寓 </a></li>
                            <li><a href="#">平阳敬老院</a></li>
                        </ul>
                    </li>
                    <li onmouseover="overdiv('menu2')" onmouseout="outdiv('menu2')">
                        <a href="#">综合为老服务中心<img src="img/nextstep_icon.png"></a>
                        <ul id="menu2" class="left-menu" onmouseover="overdiv('menu2')" onmouseout="outdiv('menu2')">
                            <li><a href="#">平南综合为老服务中心</a></li>
                            <li><a href="#">东兰综合为老服务中心</a></li>
                            <li><a href="#">古美智汇坊</a></li>
                        </ul>
                    </li>
                    <li onmouseover="overdiv('menu3')" onmouseout="outdiv('menu3')">
                        <a href="#">长者照护之家<img src="img/nextstep_icon.png"></a>
                        <ul id="menu3" class="left-menu" onmouseover="overdiv('menu3')" onmouseout="outdiv('menu3')">
                            <li><a href="#">平南长者照护之家</a></li>
                            <li><a href="#">平阳长者照护之家</a></li>
                        </ul>
                    </li>
                    <li onmouseover="overdiv('menu4')" onmouseout="outdiv('menu4')">
                        <a href="#">日间料理中心<img src="img/nextstep_icon.png"></a>
                        <ul id="menu4" class="left-menu" onmouseover="overdiv('menu4')" onmouseout="outdiv('menu4')">
                            <li><a href="#">平南日间照料中心</a></li>
                            <li><a href="#">平吉一村日托站</a></li>
                            <li><a href="#">平吉二村日托站</a></li>
                        </ul>
                    </li>
                    <li onmouseover="overdiv('menu5')" onmouseout="outdiv('menu5')">
                        <a href="#">助餐点<img src="img/nextstep_icon.png"></a>
                        <ul id="menu5" class="left-menu" onmouseover="overdiv('menu5')" onmouseout="outdiv('menu5')">
                            <li><a href="#">古美助餐点</a></li>
                            <li><a href="#">古龙助餐点</a></li>
                            <li><a href="#">平阳助餐点</a></li>
                            <li><a href="#">平吉助餐点</a></li>
                        </ul>
                    </li>
                </ul>
            </details>
        </details>

    </div>



</div>

    <script type="text/javascript">

        function changeFrameHeight(){
//            var ifm= document.getElementById("personIframe");
//            ifm.height=document.documentElement.clientHeight;

            var h = document.documentElement.offsetHeight;
            $("#personIframe").css("height",h+300);

        }

        window.onresize=function(){
            changeFrameHeight();

        }
    </script>

    <div class="organ_div">
        <iframe id="personIframe" name="personIframe" src="organizationdetail.jsp" onload="changeFrameHeight()"   frameborder="0" scrolling="no" style="width:100%;"></iframe>
    </div>


<div class="relatedOrg">

        <ul>
            <li class="box_related">
                <a href="page5.jsp" target="_top">
                    <img src="https://api.eshimin.com/image/live/commercial/icons/3101120060005_icon_20150812_155519_88.jpg">
                </a>
                <a href="page5.jsp" target="_top">
                    古美敬老院
                </a>
                <br>     地址：闵行区虹莘路2288弄<br>     咨询电话：(021)34174387
            </li>
            <li class="box_related">
                <a href="page5.jsp" target="_top">
                    <img src="https://api.eshimin.com/image/live/commercial/icons/3101120060005_icon_20150812_155519_88.jpg">
                </a>
                <a href="page5.jsp" target="_top">
                    老年莲花公寓
                </a>
                <br>     地址：闵行区平阳路1225号<br>     咨询电话：(021)34174387
            </li>

            <li class="box_related">
                <a href="page5.jsp" target="_top">
                    <img src="https://api.eshimin.com/image/live/commercial/icons/3101120060005_icon_20150812_155519_88.jpg">
                </a>
                <a href="page5.jsp" target="_top">
                    平阳敬老院
                </a>
                <br>     地址：闵行区平阳路1225号<br>     咨询电话：(021)34174387
            </li>



        </ul>

</div>

</body>
</html>
