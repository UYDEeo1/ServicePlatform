<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/10/2
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>友情链接</title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <style>
        @media (min-width: 1024px) {
            body {
                font-size: 18px;
                margin: 0;
                background-color: #f4f4f4;
            }
            div.pannel{
                line-height: 40px;
                margin-bottom: 15px;
                font-size: 18px;
                font-weight: 700;
                border-bottom: 1px solid #e6e6e6;
                margin-left: 10px;
                margin-right: 10px;
            }

            .pannel .icon{
                background-color: #F3BE9C;
                float: left;
                height: 30px;
                left: 10px;
                margin-top: 5px;
                margin-bottom: 5px;
                margin-right: 10px;
                width: 5px;
            }

            .pannel .title{
                border-bottom: 2px solid  #F3BE9C;
                padding-bottom:10px;
            }
            #link_a{
                margin-left: 20%;
                margin-top: 3%;
                font-size: 17px;
                line-height: 30px;
                letter-spacing: 2px;
                cursor: pointer;

            }

            #link_div a{
                float: left;
                width: 330px;
                height: 112px;
                margin: 0px 20px 20px 0;
                border: 1px solid #cfcfcf;
                position: relative;
                transition: background-color 0.5s;
                color: #333;
            }

            #link_div a span{
                position: absolute;
                width: 52px;
                height: 52px;
                top: 16px;
                left: 21px;
                background-size: 100% auto;
                background-repeat: no-repeat;

            }
            #link_div a h3{
                position: absolute;
                width: 230px;
                height: 30px;
                line-height: 30px;
                left: 90px;
                font-size: 17px;
            }
            #link_div a ul{
                position: absolute;
                width: 195px;
                line-height: 26px;
                left: 49px;
                top: 55px;
                list-style: none;
            }
            #link_div a ul li{
                float: left;
                line-height: 26px;
                padding: 0 4px;
                font-size: 13px;
                color: #999;
            }
            #link_div a:hover{
                background: #fff;
                border-color: #F3BE9C;
                color: #004a7c;
                transition: all 0.2s;
                -webkit-transition: all 0.2s;
                -o-transition: all 0.2s;
                -moz-transition: all 0.2s;
            }
            /*.clearfloat{*/
                /*zoom:1;*/
            /*}*/
            /*.left_div{*/
                /*width:87%;*/
                /*float:left;*/

            /*}*/
            /*.right_div{*/
                /*width:10%;*/
                /*margin-right:2%;*/
                /*float:right;*/

            /*}*/

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

        @media screen and (max-width: 1400px){
            body{font-size: 12px}
            #headFrame {
                height: 78px;
                min-width: 1268px;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
                display: block;}
            .left_div{
                width:70%;
                float:left;
                margin-left: 5%;

            }
            .right_div{
                width:20%;
                margin-right:2%;
                float:right;

            }


        }
        @media screen and (min-width: 1401px) and (max-width: 1599px){
            body{font-size: 14px}
            #headFrame {
                height: 78px;
                min-width: 1268px;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
                display: block;}
            .left_div{
                width:88%;
                float:left;
                margin-left: -2%;

            }
            .right_div{
                width:10%;
                margin-right:2%;
                float:right;

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
            .left_div{
                width:83%;
                float:left;
                margin-left: -2%;

            }
            .right_div{
                width:10%;
                margin-right:5%;
                float:right;

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
            .left_div{
                width:94%;
                float:left;
                margin-left: -4%;

            }
            .right_div{
                width:10%;
                float:right;

            }

        }
    </style>


</head>

<body>

<iframe id="headFrame" src="head.jsp" frameborder="0" scrolling="no">
</iframe>
</body>
</html>

<div style="margin-top: 50px;width:80%;margin-left: 10%;">
    <div class="left_div">
    <div class="pannel">
        <div class="title" style="width:120px;">
            <div class="icon">
            </div>
        网站链接
        </div>
    </div>

    <%--<div id="link_a">--%>
        <%--<ul>--%>
            <%--<li><a href="http://www.mca.gov.cn/">中华人民共和国民政部</a></li>--%>
            <%--<li><a href="http://www.nhfpc.gov.cn/">中华人民共和国国家卫生健康委员会</a></li>--%>
            <%--<li><a href="http://www.shmzj.gov.cn/gb/shmzj/index.html">上海市民政局</a></li>--%>
            <%--<li><a href="http://www.wsjsw.gov.cn/wsj/">上海市卫生和计划生育委员会</a></li>--%>
            <%--<li><a href="http://mh.shmzj.gov.cn/gb/mzmhq/index.html">上海市闵行区民政局</a></li>--%>
            <%--<li><a href="https://www.mhwsjsw.gov.cn/">上海市闵行区卫生和计划生育委员会</a></li>--%>
            <%--<li><a href="http://gmjd.shmh.gov.cn/">古美路街道</a></li>--%>
            <%--<li><a href="http://weilao.shmh.gov.cn/Portal/Page/Index">闵行区综合为老服务平台</a></li>--%>
        <%--</ul>--%>
    <%--</div>--%>
    <div id="link_div">
        <a href="http://www.mca.gov.cn/" target="_blank">
            <span style="background-image: url(img/guohui1.png);"></span>
            <h3>中华人民共和国民政部</h3>
            <ul class="clearfloat">
                <li>婚姻</li>
                <li>|</li>
                <li>生育</li>
                <li>|</li>
                <li>收养</li>
            </ul>
        </a>

        <a href="http://www.nhfpc.gov.cn/" target="_blank">
            <span style="background-image: url(img/guohui1.png);"></span>
            <h3>中国国家卫生健康委员会</h3>
            <ul class="clearfloat">
                <li>卫生</li>
                <li>|</li>
                <li>健康</li>
            </ul>
        </a>

        <a href="http://www.shmzj.gov.cn/gb/shmzj/index.html" target="_blank">
            <span style="background-image: url(img/guohui1.png);"></span>
            <h3>上海市民政局</h3>
            <ul class="clearfloat">
                <li>婚姻</li>
                <li>|</li>
                <li>生育</li>
                <li>|</li>
                <li>收养</li>
            </ul>
        </a>

        <a href="http://www.wsjsw.gov.cn/wsj/" target="_blank">
            <span style="background-image: url(img/guohui1.png);"></span>
            <h3>上海市卫生和计划生育委员会</h3>
            <ul class="clearfloat">
                <li>卫生</li>
                <li>|</li>
                <li>生育</li>

            </ul>
        </a>

        <a href="http://mh.shmzj.gov.cn/gb/mzmhq/index.html" target="_blank">
            <span style="background-image: url(img/guohui1.png);"></span>
            <h3>上海市闵行区民政局</h3>
            <ul class="clearfloat">
                <li>闵行</li>
                <li>|</li>
                <li>生育</li>
                <li>|</li>
                <li>婚姻</li>
            </ul>
        </a>

        <a href="https://www.mhwsjsw.gov.cn/" target="_blank">
            <span style="background-image: url(img/guohui1.png);"></span>
            <h3>闵行区卫生和计划生育委员会</h3>
            <ul class="clearfloat">
                <li>闵行</li>
                <li>|</li>
                <li>卫生</li>
                <li>|</li>
                <li>生育</li>

            </ul>
        </a>

        <a href="http://gmjd.shmh.gov.cn/" target="_blank">
            <span style="background-image: url(img/mainpage/logo.png);height:100px;"></span>
            <h3>古美路街道</h3>
            <ul class="clearfloat">
                <li>街道</li>
                <li>|</li>
                <li>古美</li>
                <li>|</li>
                <li>新闻</li>
            </ul>
        </a>

        <a href="http://weilao.shmh.gov.cn/Portal/Page/Index" target="_blank">
            <span style="background-image: url(img/mainpage/gumei_logo.png);height:100px;"></span>
            <h3>闵行区综合为老服务平台</h3>
            <ul class="clearfloat">
                <li>闵行</li>
                <li>|</li>
                <li>为老服务</li>
            </ul>
        </a>



    </div>
    </div>
    <div class="right_div">

    <div class="pannel">
        <div class="title" style="width:210px;">
            <div class="icon">
            </div>
            古美路街道微信公众号
        </div>
    </div>
    <div style="height:300px;">
        <img src="img/wx_gumei.png" style="height:160px;width:160px; margin-left: 10%;">
    </div>
    </div>

</div>

</body>
</html>
