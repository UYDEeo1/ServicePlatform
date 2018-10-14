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
            }
            .list_div{
                position: relative;
                margin-top: 5%;
                margin-left: 3%;
                padding-top:20px;
                padding-left: 10px;
                line-height: 30px;
                width:190px;
                height:550px;
                color: black;
                float: left;
                background-color: #f4f4f4;
                border: 2px solid rgba(255,255,255,0.8);
            }
            .list_div p{
                font-size: 18px;
                font-weight:700;
            }
            .list_div details{
                padding-left: 10px;
            }
            .list_div ul{
                padding-top: 10px;
            }
            .list_div li{
                line-height: 37px;
                list-style-type:none
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
            #hidden_div{
                position: relative;
                float: left;
                margin-right: 0;
                margin-top: 15%;
                padding-top: 2%;
                padding-bottom: 2%;
                background-color: #f4f4f4;
                border: 2px solid rgba(255,255,255,0.8); ;


            }
        } /*>=1024的设备*/

    </style>
    <script>
        function overdiv() {
            document.getElementById("hidden_div").style.display="block";
        }
        function outdiv() {
            document.getElementById("hidden_div").style.display="none";
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

<div id="daohang" class="container">
    <div class="list_div">
    <%--/*******左侧导航**/--%>
        <p>街道老龄委</p>
        <details>
            <summary>街道服务办</summary>
            <ul>
                <li onmouseover="overdiv()" onmouseout="outdiv()"><a href="#">街道内设机构</a></li>
                <li onmouseover="overdiv()" onmouseout="outdiv()"><a href="#">养老服务机构</a></li>
            </ul>
        </details>

    </div>

    <div id="hidden_div"  style="display: none;" onmouseover="overdiv()" onmouseout="outdiv()">
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
