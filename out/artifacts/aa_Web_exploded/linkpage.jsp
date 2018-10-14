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
                width:120px;
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

<div style="margin-top: 50px;width:80%;margin-left: 10%;">
    <div class="pannel">
        <div class="title">
            <div class="icon">
            </div>
        网站链接
        </div>
    </div>

    <div id="link_a">
        <ul>
            <li><a>中华人民共和国民政部</a></li>
            <li><a>中华人民共和国国家卫生健康委员会</a></li>
            <li><a>上海市民政局</a></li>
            <li><a>上海市卫生和计划生育委员会</a></li>
            <li><a>上海市闵行区民政局</a></li>
            <li><a>上海市闵行区卫生和计划生育委员会</a></li>
            <li><a>古美路街道</a></li>
            <li><a>闵行区综合为老服务平台</a></li>
        </ul>
    </div>
</div>

</body>
</html>
