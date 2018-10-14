<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/6/30
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻资讯</title>
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

<iframe id="headFrame" src="head1.jsp" frameborder="0" scrolling="no">
</iframe>
</body>
</html>


<script type="text/javascript">
    //获取登录用户
    function getLoginUser(){
        return '';
    }

    function getUserInfo(){
        var json ={};
        json.societyCode = '';
        json.userName =  '';
        json.real =  '';
        return json;
    }

    /*更新iframe高度*/
    function refreshIframeHeight(iframe,height){
        $("#"+iframe).height(parseInt(height)+10);
    }

</script>


<div class="container">

    <iframe id="redianIframe" src="news1.jsp" frameborder="0" scrolling="no" style="width:100%;height:100%"></iframe>
</div>





<!DOCTYPE html>
<html>
<head>
    <title>底部栏</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">

    <link type="text/css" rel="stylesheet"  href="css/common.css" />
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>
    <style type="text/css">

        .bottom {
            background: url("/images/foot/index2.png") repeat-x scroll 0 0 #fff;
            height: auto;
            margin-top: 15px;
            padding-top: 20px;
            padding-bottom: 20px;
            text-align: center;
            min-width: 1268px;
            width: 100%;
            line-height: 30px;
            font-size: 14px;
            margin:0 auto;
            display: block;
        }


        .bottom a {
            margin: 0 5px;
            border: 0 none;
            color: #454545;
            text-decoration: none;
        }


        #links{
            margin: 0 auto;
            width: 400px;
            list-style: none outside none;
            /* display:none; */

        }

        .bottom li {
            display: inline;
            float: left;
            height: 40px;
            margin-left: 3px;
            text-align: center;
            width: auto;
        }

        .bottom li img{
            height:40px;
        }

        .bottom .help-link{
            text-align: center;
            font-size: 14px;
            margin-top:8px;
        }

        .help-link a:hover{
            color:green;
        }

        .foot-l{
            float:left;
            width:650px;
            height:90px;
            margin-left:150px;
        }

        .foot-r{
            float:left;
            height:90px;
            margin-left:10px;
            display:none;
        }

        .foot-r img{
            width:70px;
            height:70px;
            display:block;
            margin-left:5px;
        }

        .foot-r .foot-left{
            float:left;
            width:80px;
        }

        .foot-r .foot-right{
            float:left;
            width:80px;
            margin-left:10px;
        }

        .foot-r span{
            font-size:13px;
            line-height:20px;
            margin:0px;
            padding:0px;
            display:block;
        }

        .special-link:hover{
            color:#454545 !important;
            cursor: default !important;
        }
    </style>
</head>
<body >
<div class="bottom">
    <div style="width:1000px;margin:0 auto;">
        <div class="foot-l">
            <p class="help-link">
                <a href="/pages/general/index.jsp?type=type1" target="_blank">关于我们</a>|
                <a href="/pages/general/index.jsp?type=type2" target="_blank">联系我们</a>|
                <a href="/pages/general/index.jsp?type=type3" target="_blank">服务协议</a>|
                <a href="http://open.eshimin.com/" target="_blank">开放平台</a>|
                <a href="/pages/general/index.jsp?type=type5" target="_blank">版权声明</a>|
                <a href="/pages/general/index.jsp?type=type6" target="_blank">友情链接</a>|
                <a href="http://weibo.com/shiminyun" target="_blank">新浪微博</a>|
                <a href="javascript:void(0);"  id="weixin-link">微信</a>


            </p>

            <p style="text-align: center;font-size: 12px; margin-top:0px; line-height: 25px;">

                <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010802001464"
                   style="display:inline-block;text-decoration:none;line-height:20px;">
                    <img src="/images/foot/beian.png" style="float:left;margin-right:5px;"/>
                    沪公网安备 31010802001464号
                </a>
                建议您使用Chrome或IE8版本及以上浏览器
                <br/>
                Copyright   2003-2015 eshimin.com. All rights reserved. | ICP备：<a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备10033695号</a>
            </p>

        </div>
        <div class="foot-r">
            <div class="foot-left">
                <img src="/images/foot/qrcode_for_smy.jpg">
                <span>市民云微信</span>
            </div>
            <div class="foot-right">
                <img src="/images/foot/qrcode_for_smxx.jpg">
                <span>市民信箱微信</span>
            </div>


        </div>

        <div style="clear:both;">
        </div>
    </div>

    <ul id="links">



        <li style="display: none;">
            <a href="http://www.zx110.org/picp?sn=310108100040975" target="_blank"
               style="zoom:1;height:52px;position:relative;text-decoration:none; display:inline-block;">
                <img src="/images/foot/picp_bg2.png" alt="沪公网备" border="0"/>
            </a>
        </li>
        <li style="width: 70px;">
        </li>
        <li><a href="http://www.shjbzx.cn/" target="_blank"><img src="/images/foot/img5.png" /></a></li>
        <li><a href="https://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&entyId=1u2xwmwzpxrk6u2rvor2928au92degmyr8rxc2ylsor8c2d" target="_blank"><img src="/images/foot/shgs.gif" /></a></li>
    </ul>

    <div class="clear_float"></div>
</div>

<div class="clear_float"></div>
</body>
</html>

<script type="text/javascript">
    $(function(){
        $("#weixin-link").on("mouseover",function(){
            $(".foot-r").fadeIn("slow");
        }).on("mouseout",function(){
            $(".foot-r").fadeOut("slow");
        });
    });
</script>




</body>
</html>
