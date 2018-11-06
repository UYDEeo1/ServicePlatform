<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>

    <%--<link type="text/css" rel="stylesheet"  href="css/common.css" />--%>
    <link type="text/css" rel="stylesheet"  href="css/account.css" />
    <link rel="icon" href="http://www.smmail.cn/favicon.ico?1234" type="image/x-icon" />
    <link rel="shortcut icon" href="http://www.smmail.cn/favicon.ico?1234" type="image/x-icon" />

    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <%--<script src="js/common.js" type="text/javascript"></script>--%>
    <script src="js/validate-custom.js" type="text/javascript"></script>

    <style type="text/css">
        body{
            margin:0px;
            padding:0px;
        }
    </style>

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script>
        $.ajax({
            url : "http://101.132.76.252:83/identify/checkToken?token="+getCookie("token"),
            type : "get",
            success : function(data) {
                if(data.success==false){
                    location.href="/login.jsp";
                }
            }
        });

        function getCookie(name)
        {
            var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
            if(arr=document.cookie.match(reg))
                return unescape(arr[2]);
            else
                return null;
        }
    </script>
    <style type="text/css">
        .container{
            min-height: 200px !important;
            margin-bottom:10px !important;
        }

        .menu-box{
            min-height: 300px;
            width: 240px;
            float: left;
            left:0px;
        }

        .menu-box div.title{
            height: 50px;
            line-height: 50px;
            background-color: #F3BE9C;
            border-top-left-radius:5px;
            border-top-right-radius:5px;
            font-size: 18px;
            color: white;
            text-indent:0em;
            border-left: 1px solid #F3BE9C;
            border-right: 1px solid #F3BE9C;
        }

        ul#person_list {
            border-bottom: 1px solid #e6e6e6;

            overflow-y:auto;

        }

        .menu-ul li {
            line-height: 40px;
            text-indent:2em;
            border-left: 1px solid #e6e6e6;
            border-right: 1px solid #e6e6e6;
            border-bottom: 1px solid #e6e6e6;
        }

        .menu-ul li:hover{
            color: white !important;
        }

        #person_list li.choosed{
            background-color: #fd9935;
            border-left: 1px solid #fd9935;
            border-right: 1px solid #fd9935;
            border-bottom: 1px solid #fd9935;
            cursor: pointer;
            color: white;
        }

        #person_list li a{
            text-decoration: none;
            color: black;
        }

        #person_list li a:focus {
            outline-style:none;
            -moz-outline-style: none;
        }

        #person_list li.choosed a{
            color: white;
        }


        .container .content{
            float: left;
            margin-left:18px;
            height:auto;
            width: 742px;
            margin-top: 0px !important;
        }

        .container .content iframe{
            width: 100%;
            border: 0px;
            margin:0px;
            padding:0px;
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

    <link type="text/css" rel="stylesheet" href="css/common.css"/>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
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


<script type="text/javascript">
    //获取登录用户
//    function getLoginUser(){
//        return 'eshimin04603655';
//    }
//
//    function getUserInfo(){
//        var json ={};
//        json.societyCode = '';
//        json.userName =  'eshimin04603655';
//        json.real =  '0';
//        return json;
//    }

    /*更新iframe高度*/
    function refreshIframeHeight(iframe,height){
        $("#"+iframe).height(parseInt(height)+10);
    }

</script>


<div class="container">

    <div class="menu-box">
        <div class="title">
            <div class="div_icon">
            </div>
            个人中心
        </div>
        <ul id="person_list" class="menu-ul">

            <li onclick="refreshStyle(this,'account.jsp')" class="choosed">
                <a href="javascript:void(0)">
                    账户信息
                </a>
            </li>

            <li onclick="refreshStyle(this,'log.jsp')">
                <a href="javascript:void(0)">
                    修改密码
                </a>
            </li>

            <li onclick="refreshStyle(this,'message.jsp')">
                <a href="javascript:void(0)">
                    消息通知
                </a>
            </li>

            <li onclick="refreshStyle(this,'shopcar.jsp')">
                <a href="javascript:void(0)">
                    购物车
                </a>
            </li>

            <li onclick="refreshStyle(this,'order.jsp')">
                <a href="javascript:void(0)">
                    我的订单
                </a>
            </li>

            <li onclick="refreshStyle(this,'letter.jsp')">
                <a href="javascript:void(0)">
                    邻里信箱
                </a>
            </li>



        </ul>
    </div>

    <div class="content">
        <iframe id="personIframe" src="account.jsp"  frameborder="0" scrolling="no" style="height:100%"></iframe>
    </div>

    <div class="clear_float"></div>
</div>









<script type="text/javascript" src="js/jquery.tmpl.js"></script>



<script type="text/javascript">
    function loadIframe(url){
        $("#personIframe").attr("src",url);

        if($("#honest").hasClass("choosed")){
            $("#personIframe").css("height",500);
        }

    }

    function refreshIframe(){
        var h = document.documentElement.offsetHeight;
        $("#personIframe").css("height",h);
    }

    function refreshStyle(li,url){
        //切换样式
        $("#person_list li").each(function(index){
            if( $(this).hasClass("choosed")){
                $(this).removeClass("choosed");
            }
        });
        $(li).addClass("choosed");

        loadIframe(url);
    }

    $(function(){
    });
</script>