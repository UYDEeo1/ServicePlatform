<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>档案</title>
    <link type="text/css" rel="stylesheet"  href="css/common.css" />
    <link type="text/css" rel="stylesheet"  href="css/account.css" />
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
            background-color: #f4f4f4;
        }
    </style>
    <link href="css/billDetail.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>

    <script>
        $.ajax({
            url : "http://101.132.76.252:83/identify/checkToken?token="+getCookie("token"),
            type : "get",
            success : function(data) {
                if(data.success==true){
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
        .list a{
         color:black;
            font-size: 16px;
        }
        .list a:hover{
            color:orange;
        }
    </style>

    <script type="text/javascript">
        function loadIframe(url){
            $("#billIframe").attr("src",url);

//            if($("#honest").hasClass("choosed")){
//                $("#billIframe").css("height",500);
//            }

        }

        function refreshIframe(){
            var h = document.documentElement.offsetHeight;
            $("#billIframe").css("height",h);
        }

        function refreshStyle(li,url){
            //切换样式
//            $("#person_list li").each(function(index){
//                if( $(this).hasClass("choosed")){
//                    $(this).removeClass("choosed");
//                }
//            });
//            $(li).addClass("choosed");

            loadIframe(url);
        }

        $(function(){
        });
    </script>

</head>

<body>

<iframe id="headFrame" src="head.jsp" frameborder="0" scrolling="no">
</iframe>
</body>
</html>


<script type="text/javascript">
    //获取登录用户
    function getLoginUser(){
        return 'eshimin04603655';
    }

    function getUserInfo(){
        var json ={};
        json.societyCode = '';
        json.userName =  'eshimin04603655';
        json.real =  '0';
        return json;
    }

    /*更新iframe高度*/
    function refreshIframeHeight(iframe,height){
        $("#"+iframe).height(parseInt(height)+10);
    }

</script>


<div class="container">

    <center style="padding-bottom: 10px;">
        <div id="page_main" class="page_main">
            <div id="body_main" class="body_main">
                <!-- 左边导航 -->
                <div id="body_left" class="body_left">
                    <div id="left_body" class="left_body f14">
                        <div id="life" class="life_list" style="padding-top: 20px;">
                            <div id="sh_title" class="title "> 档案 </div>
                            <div id="sh_content" class="content" >
                                <div id="cloudbill1" class="list" ><img src="img/login_icon2@2x.png"><span onclick="refreshStyle(this,'page3_1.jsp')" class="choosed"><a href="javascript:void(0)">个人信息</a></span></div>

                            </div>
                        </div>
                        <div id="social" class="social_list">
                            <%--<div id="social_title" class="title"> 健康档案 </div>--%>
                            <div id="social_content" class="content">
                                <div id="203" class="list" ><img src="img/login_icon6@2x.png"><span onclick="refreshStyle(this,'page3_2.jsp')"><a href="javascript:void(0)">健康档案</a> </span></div>

                            </div>
                        </div>
                        <div id="personal" class="personal_list">
                            <%--<div id="personal_title" class="title"> 政策 </div>--%>
                            <div id="personal_content" class="content">
                                <div id="health" class="list" ><img src="img/accessory.png"><span onclick="refreshStyle(this,'page3_3.jsp')"><a href="javascript:void(0)">涉老政策</a></span></div>
                            </div>
                        </div>
                        <div class="personal_list">
                            <%--<div class="title"> 一卡通 </div>--%>
                            <div class="content">
                                <div class="list" ><img src="img/headlines.png"><span onclick="refreshStyle(this,'page3_4.jsp')"><a href="javascript:void(0)">一卡通记录</a></span></div>

                            </div>
                        </div>
                        <div class="personal_list">
                            <%--<div class="title"> 一卡通 </div>--%>
                            <div class="content">
                                <div class="list" ><img src="img/king.png"><span onclick="refreshStyle(this,'page3_5.jsp')"><a href="javascript:void(0)">积分记录</a></span></div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- 右边是frame形式的地址引入内容 -->
                <div id="body_right" class="body_right" style="width:750px;">

                    <div class="content_right" id="content_right" style="width:750px;">
                        <iframe id="billIframe" name="billIframe" src="page3_1.jsp" frameborder="0"  scrolling="auto" ></iframe>
                    </div>

                </div>

            </div>
        </div>
    </center>
</div>








</body>
</html>
