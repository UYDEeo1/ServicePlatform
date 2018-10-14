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
                width:190px;
                height:750px;
                color: black;
                float: left;
                background-color: #FFFFff;
                border: 2px solid rgba(255,255,255,0.8);
                box-shadow: 0 -4px 10px rgba(0,0,0,.2);
            }
            .list_div p{
                padding-top: 20px;
                font-size: 18px;
                font-weight:700;
                padding-left: 10px;
            }
            .list_div details{
                padding-left: 20px;
            }
            .list_div ul{
                padding-top: 10px;
                padding-left: 20px;
            }
            .list_div li{
                line-height: 37px;
                list-style-type:none;
                padding-left: 10px;

            }
            .list_div li a{
                color: #424242;
                text-decoration:none;
            }
            dd a:hover{
                color: #cb8e6a;
            }
            .list_div summary{
                padding-left: 10px;

            }
            .lineee{
                width:100%;
                height:5px;
                background-color:#e56339 ;
                box-shadow:0 1px 1px 0 #cb8e6a;
            }
            .list_div li:hover{
                background-color: #f4f4f4;
            }

            .organ_div{
                margin-top: 4%;
                margin-left: 250px;
                position: absolute;
            }
            #daohang{
                position:absolute;
                z-index:1;
            }
            .hidden_div{
                position: relative;
                float: left;
                margin-right: 0;
                margin-top: 15%;
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

        } /*>=1024的设备*/

    </style>
    <script>
        function overdiv1() {
            document.getElementById("hidden_div1").style.display="block";
        }
        function outdiv1() {
            document.getElementById("hidden_div1").style.display="none";
        }
        function overdiv2() {
            document.getElementById("hidden_div2").style.display="block";
        }
        function outdiv2() {
            document.getElementById("hidden_div2").style.display="none";
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
            body{font-size: 14px}
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
        <details>
            <summary>街道服务办</summary>
            <ul>
                <li onmouseover="overdiv1()" onmouseout="outdiv1()"><a href="#">街道内设机构</a></li>
                <li onmouseover="overdiv2()" onmouseout="outdiv2()"><a href="#">养老服务机构</a></li>
            </ul>
        </details>

    </div>


    <div id="hidden_div1" class="hidden_div"  style="display: none;" onmouseover="overdiv1()" onmouseout="outdiv1()">
        <div class="cate_detail">

            <dl class="cate_detail_item dl-horizontal">
                <dt class="cate_detail_tit">
                    助老服务社 <i class="cate_detail_tit_arrow">></i>
                </dt>
                <dd class="cate_detail_con">
                    <a class="cate_detail_con_lk" target="_blank">助老服务社</a>
                </dd>
            </dl>

            <dl class="cate_detail_item dl-horizontal">
                <dt class="cate_detail_tit">
                    老年协会 <i class="cate_detail_tit_arrow">></i>
                </dt>
                <dd class="cate_detail_con">
                    <a class="cate_detail_con_lk" target="_blank">老年协会</a>

                </dd>
            </dl>

        </div>
    </div>


    <div id="hidden_div2" class="hidden_div"  style="display: none;" onmouseover="overdiv2()" onmouseout="outdiv2()">
        <div class="cate_detail">

            <dl class="cate_detail_item dl-horizontal">
                <dt class="cate_detail_tit">
                    敬老院 <i class="cate_detail_tit_arrow">></i>
                </dt>
                <dd class="cate_detail_con">
                    <a class="cate_detail_con_lk" target="_blank">古美敬老院</a>
                    <a class="cate_detail_con_lk" target="_blank">老年莲花公寓</a>
                    <a class="cate_detail_con_lk" target="_blank">平阳敬老院</a>
                </dd>
            </dl>

            <dl class="cate_detail_item dl-horizontal">
                <dt class="cate_detail_tit">
                    综合为老服务中心 <i class="cate_detail_tit_arrow">></i>
                </dt>
                <dd class="cate_detail_con">
                    <a class="cate_detail_con_lk" target="_blank">平南综合为老服务中心</a>
                    <a class="cate_detail_con_lk" target="_blank">东兰综合为老服务中心</a>
                    <a class="cate_detail_con_lk" target="_blank">古美智汇坊</a>
                </dd>
            </dl>
            <dl class="cate_detail_item dl-horizontal">
                <dt class="cate_detail_tit">
                    长者照护之家 <i class="cate_detail_tit_arrow">></i>
                </dt>
                <dd class="cate_detail_con">
                    <a class="cate_detail_con_lk" target="_blank">平南长者照护之家</a>
                    <a class="cate_detail_con_lk" target="_blank">平阳长者照护之家</a>
                </dd>
            </dl>
            <dl class="cate_detail_item dl-horizontal">
                <dt class="cate_detail_tit">
                    日间照料中心 <i class="cate_detail_tit_arrow">></i>
                </dt>
                <dd class="cate_detail_con">
                    <a class="cate_detail_con_lk" target="_blank">平南日间照料中心</a>
                    <a class="cate_detail_con_lk" target="_blank">平吉一村日托站</a>
                    <a class="cate_detail_con_lk" target="_blank">平吉二村日托站</a>
                </dd>
            </dl>
            <dl class="cate_detail_item dl-horizontal">
                <dt class="cate_detail_tit">
                    助餐点 <i class="cate_detail_tit_arrow">></i>
                </dt>
                <dd class="cate_detail_con">
                    <a class="cate_detail_con_lk" target="_blank">古美助餐点</a>
                    <a class="cate_detail_con_lk" target="_blank">古龙助餐点</a>
                    <a class="cate_detail_con_lk" target="_blank">平阳助餐点</a>
                    <a class="cate_detail_con_lk" target="_blank">平吉助餐点</a>
                </dd>
            </dl>

        </div>
    </div>

</div>

    <div class="organ_div col-md-9">
        <iframe id="personIframe" src="organizationdetail.jsp"  frameborder="0" scrolling="no" style="height:100%;width:100%;"></iframe>
    </div>

</body>
</html>
