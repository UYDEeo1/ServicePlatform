<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/9/6
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情</title>
    <link type="text/css" rel="stylesheet"  href="css/common.css" />
    <link type="text/css" rel="stylesheet"  href="css/account.css" />
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="icon" href="http://www.smmail.cn/favicon.ico?1234" type="image/x-icon" />
    <link rel="shortcut icon" href="http://www.smmail.cn/favicon.ico?1234" type="image/x-icon" />

    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>
    <script src="js/validate-custom.js" type="text/javascript"></script>
    <style type="text/css">
        body{
            margin:0px;
            padding:0px;
        }
        .hr-line-dashed {
            border-top: 1px dashed #e7eaec;
            color: #fff;
            background-color: #fff;
            height: 1px;
            margin: 10px 0;
        }
        .shop_div{
            width:250px;
            /*border:1px solid #E2E2E2;*/
            /*background-color: #ffdcbd29;*/
            border:1px solid #e9e9e9;
            float:left;
            position:relative;
            margin-left: 20px;
            margin-top:20px;
        }
        .shop_div a{
            cursor: pointer;
        }
        .shop_div img{
            width:240px;
            height:190px;
            margin: 5px;
            border: 2px solid rgba(255,255,255,0.8);
            border-radius: 4px;
            background-color: rgba(150,150,150,0.5);
        }
        .shop_div p{
            text-align: left;
            padding-left: 10px;
            padding-top: 5px;
            padding-bottom: 3px;
            color:orange;
            font-size: 16px;

        }
        .shop_div label{
            padding-left: 10px;
            font-size: 10px;
            width:240px;
        }
        .shop_div span{
            padding-left:10px;

        }
        .shop_div input{
            width:185px;
            padding-left:10px;
        }
        .shop_div a{
            padding-bottom: 10px;
        }
        .dialog_div{
            position: absolute;
            width:100%;
            height:100%;
            top:180px;
            /*background-color: rgba(217, 217, 217, 0.89);*/
            color: #636363;
        }
        .div_right li{
            line-height: 50px;
        }
        .div_right p{
            font-size:24px;
            text-align: center;
        }
        .div_left img{
            width:400px;
            height:300px;
            margin: 5px;
            padding-left: 100px;
            border: 2px solid rgba(255,255,255,0.8);
            border-radius: 4px;
        }
        .dialog_div a{
            cursor:pointer;
        }

        .c1 a {
            color: #666;
            text-decoration: none;
            cursor: pointer;
            font-size: 14px;
            font-weight: 400;
        }
        a:hover{
            color:#ff9934;
        }

        .c1{
            font-size:14px;
            color: #636363;
            padding-top:20px;
            padding-left:50px;
        }
        .div_left{
            float:left;
            width:600px;
            height:350px;
            margin-top:20px;

        }
        .div_right{

            height:350px;
            margin-top: 20px;
        }
        .d_tit{
            width:500px;
            border-bottom: 2px solid #ff9934;;
        }
        .d_p{
            width:90px;
            height:30px;
            background-color: #ff9934;
            color:white;
            padding-left: 15px;
            padding-top: 4px;

        }
        .company{
            margin:15px;
            width:100%;
            /*height:350px;*/
        }

        .shop_div:hover{
            cursor: pointer;

            box-shadow:0 0 5px 5px #fff3f3;
        }
        .btnn{
            border:1px solid #e9e9e9;
            width:auto;
            height:27px;
            float:left;
            margin-left: 10px;
            padding-left: 10px;
            padding-right:10px;
            padding-top: 4px;

        }
        .btnn:hover{
            border:1px solid #ff9934;
        }
        .btnn a{
            color:#ff9934;
            cursor: pointer;
        }
        .companyname{
            float:left;
            width:100px;
            color:#ff6713;
            font-weight: 700;
            padding-top: 4px;
            font-size:20px;
        }

    </style>
</head>
<body>


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

        #headFrame {
            height: 118px;
            min-width: 1268px;
            width: 100%;
            margin: 0 auto;
            overflow: hidden;
            display: block;
        }

    </style>


</head>

<body>

<iframe id="headFrame" src="head2.jsp" frameborder="0" scrolling="no">
</iframe>
</body>
</html>


<div class="c1"><a href="shoplist.jsp">居家上门服务</a>><a href="shoplist.jsp">十助</a>><a>助浴</a></div>

<div style="margin-left: 200px;margin-top:25px;">
    <div class="d_tit" style="width:1000px;">
        <div class="d_p">服务机构</div>
    </div>
    <div class="company container">

        <div>
            <div class="row">
                <div class="companyname">乐健公司</div>
                <div class="btnn"><a href="http://www.lj-service.com">线上网站</a></div>
                <div class="btnn"><a onclick="alert('该公司订购电话：123456')">线下电话</a></div>
                <div class="btnn"><a href="shop_other.jsp">其他商品</a></div>
                <div class="btnn"><a onclick="alert('加入购物车成功，可在个人中心查看您的购物车！')">加入购物车</a></div>
            </div>
            <div class="row" style="margin-top: 10px;">
                <div class="detail">

                <dl class="row dl-horizontal">
                    <dt style="margin-bottom: 15px;!important;">商品名称：</dt>
                    <dd style="margin-bottom: 15px;!important;">助浴</dd>
                    <dt style="margin-bottom: 15px;!important;">商品介绍：</dt>
                    <dd style="margin-bottom: 15px;!important;">1.清洗衣物、床上用品
                        2.打扫卫生、整理房间</dd>
                    <dt style="margin-bottom: 15px;!important;">服务价格：</dt>
                    <dd style="margin-bottom: 15px;!important;">¥30/h</dd>
                </dl>
                </div>
            </div>
        </div>



    </div>


</body>
</html>
