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
    <link type="text/css" rel="stylesheet" href="css/listpage.css">
    <link rel="icon" href="http://www.smmail.cn/favicon.ico?1234" type="image/x-icon" />
    <link rel="shortcut icon" href="http://www.smmail.cn/favicon.ico?1234" type="image/x-icon" />

    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>
    <script src="js/validate-custom.js" type="text/javascript"></script>


    <script src="js/sweetalert.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/sweetalert.css">

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
            padding-left:150px;
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
            padding-right: 10px;
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
            width:auto;
            color:#ff6713;
            font-weight: 700;
            padding-top: 4px;
            font-size:20px;
        }
        .detail img{
            width:270px;
            height:190px;
            margin: 5px;
            border: 2px solid rgba(255,255,255,0.8);
            border-radius: 4px;
        }
        .detail dd{
            padding-left: 40px;
        }

        /***************************/
        div.tbh-nav .nav {
            width: 1190px;
            margin: 0 auto;
        }
        .tbh-nav .nav {
            height: 40px;
            line-height: 40px;
            position: relative;
            color: #fff;
        }
        .tbh-nav .nav-hd {
            float: left;
            *display: inline;
            font-size: 16px;
            font-weight: 700;

        }
        .tbh-nav ul {
            position: relative;
            z-index: 5;
        }
        ul{
            list-style: none;
        }
        .tbh-nav .nav-hd li {
            margin: 0 30px;
            text-align: center;
            padding: 0 4px;
        }
        .tbh-nav li {
            float: left;
            *display: inline;
        }
        .tbh-nav .nav-bd li.hover, .tbh-nav .nav-bd li:hover, .tbh-nav .nav-hd li.hover, .tbh-nav .nav-hd li:hover {
            border-radius: 13px;
        }
        .tbh-nav .nav-bd li, .tbh-nav .nav-hd li {
            position: relative;
        }
        .tbh-nav .nav-bd li.hover a, .tbh-nav .nav-bd li:hover a, .tbh-nav .nav-hd li.hover a, .tbh-nav .nav-hd li:hover a {
            color: #FFF;
        }
        tbh-nav .nav-bd a, .tbh-nav .nav-hd a {
            float: left;
            *display: inline;
            padding: 0 5px;
            font-weight: 700;
            color: #fff;
        }
        .tbh-nav h2 {
            float: left;
            width: 290px;
            text-align: center;
            font-size: 16px;
            background: #ff5000;
            margin:0;!important;
            line-height:40px;
        }
        body a:hover {
            color: #F40;
            text-decoration: none;
        }
        .clearfix {
            *zoom: 1;
        }
        .tb-bg {
            background-image: -webkit-linear-gradient(left,#ff9000 0,#ff5000 100%);
            background-image: -o-linear-gradient(left,#ff9000 0,#ff5000 100%);
            background-image: linear-gradient(to right,#ff9000 0,#ff5000 100%);
            background-repeat: repeat-x;
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffff9000', endColorstr='#ffff5000', GradientType=1);
        }
        #shop_nav{
            position:absolute;
            z-index:1;
        }

        .hidden_div{
            position: relative;
            float: left;
            margin-left:50% ;
            margin-top: 0;
            padding-top: 2%;
            padding-bottom: 2%;
            background-color: #ffffff;
            /*border: 3px solid #f4f4f4;*/
            box-shadow:0 2px 6px 0 #F40;
            /*border-radius: 4px;*/


        }
        .organReg a{
            margin-left: 200px;
            cursor: pointer;
            color:#731032!important;
        }
        .pagination>li>a{
            color:#F40!important;
        }


        .pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover{
            background-color: #ff5000!important;
            border-color: #ff5000!important;
            color: #fff!important;
        }

    </style>


</head>
<body ng-app="myShop" ng-controller="myController">


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



<div ng-controller="NavCtrl">

<div class="tbh-nav tb-bg " data-name="nav" data-spm="201859">
    <div class="nav J_Nav clearfix " role="navigation">
        <h2>网上商城</h2>
        <ul class="nav-hd">
            <li ng-repeat="x in Data"><a ng-mouseover="overdiv(x.id)" ng-mouseout="outdiv(x.id)">{{x.name}}</a></li>
            <li class="organReg"><a href="organ_reg.jsp" target="_blank">机构注册</a></li>
        </ul>
    </div>
</div>
<div id="shop_nav">
<div ng-repeat="x in Data" id="{{x.id}}" class="hidden_div"  style="display: none;"ng-mouseover="overdiv(x.id)" ng-mouseout="outdiv(x.id)">
    <div class="cate_detail">

        <dl class="cate_detail_item dl-horizontal" ng-repeat="m in x.productTypeModels">
            <dt class="cate_detail_tit">
                {{m.name}} <i class="cate_detail_tit_arrow">></i>
            </dt>
            <dd class="cate_detail_con" >
                <a ng-repeat="k in m.productTypeModels" class="cate_detail_con_lk" target="_blank" id="{{k.id}}" ng-click="shopDetail(k.id)">{{k.name}} </a>

            </dd>
        </dl>


    </div>
</div>




</div>
</div>

<div class="c1"><a href="page1.jsp">首页</a>><a>网上商城</a></div>

<div style="margin-left: 200px;margin-top:25px;">
    <div class="d_tit" style="width:1000px;">
        <div class="d_p">服务机构</div>
    </div>
    <div class="company container" id="content">

        <div ng-repeat="s in Shop">
            <div class="row">
                <div class="companyname" id="{{s.organId}}">{{s.organName}}</div>
                <div class="btnn"><a href="http://{{s.webUrl}}" target="_blank">线上网站</a></div>
                <div class="btnn"><a ng-click="phone(s.phone)">线下电话</a></div>
                <div class="btnn"><a href="shop_other.jsp?id={{s.organId}}" ng-cloak>其他商品</a></div>
                <div class="btnn"><a ng-click="add_shopcar(s.id,s.organId,s.type)">加入购物车</a></div>
            </div>
            <div class="row detail" style="margin-top: 10px;">
                <div class="col-md-4"><img src="{{s.imgUrl}}"></div>
                <div class="detail col-md-offset-4">
                <dl>
                    <dt style="margin-bottom: 15px;!important;">商品名称：</dt>
                    <dd style="margin-bottom: 15px;!important;">{{s.name}}</dd>
                    <dt style="margin-bottom: 15px;!important;">商品介绍：</dt>
                    <dd style="margin-bottom: 15px;!important;">{{s.intro}}</dd>
                    <dt style="margin-bottom: 15px;!important;">服务价格：</dt>
                    <dd style="margin-bottom: 15px;!important;">¥{{s.price}}</dd>
                </dl>
                </div>
            </div>
        </div>



    </div>



    <div>
        <ul class="pagination pull-right" style="margin-right: 250px;">
            <li>
                <a href ng-click="prev()">上一页</a>
            </li>
            <li ng-repeat="page in pageList" ng-class="{active: isActivePage(page)}">
                <a href ng-click="selectPage(page)">{{page}}</a>
            </li>
            <li>
                <a href ng-click="next()">下一页</a>
            </li>
        </ul>
    </div>
</div>



<%--<div class="col-md-offset-8" style="cursor: pointer;"><a href="page6.jsp">购物车</a></div>--%>

<script src="js/angular.min.js"></script>
<script src="js/pageJs/shop_detail.js"></script>

</body>
</html>
