<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/1
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>机构详情</title>
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


    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>

    <style type="text/css">
        body
        {
            width: 100%;
            min-width: 1268px;
        }
        .container{
            margin-bottom:20px !important;
        }

        .menu-box{
            width: 240px;
            float: left;
            left:0px;
        }

        .menu-ul li {
            line-height: 40px;
            text-indent:1.5em;
            border-left: 1px solid #e6e6e6;
            border-right: 1px solid #e6e6e6;
            border-bottom: 1px solid white;
            background-color: #f3f3f3;
            cursor: pointer;
        }

        .menu-ul li.choosed{
            background-color: #fd9935;
            border-left: 1px solid #fd9935;
            border-right: 1px solid #fd9935;
            border-bottom: 1px solid #fd9935;
            cursor: pointer;
        }

        .menu-ul ul{
            border: 0px;
            overflow-y:auto;
            max-height: 280px;
        }

        .menu-ul ul li{
            background-color: white;
            border-bottom: 1px solid #e6e6e6;
            border-left:0px;
            border-right:0px;
            text-indent: 2em;
            white-space:nowrap;
            text-overflow:ellipsis;
            -o-text-overflow:ellipsis;
        }

        .menu-ul ul li:hover{
            background-color: #F0F8FF;
            color:#434343;
            border-bottom:1px solid #e6e6e6;
            border-left:0px;
            border-right:0px;
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
            height: auto;
            min-height: 300px;
        }

        .wora{ width:1000px; float:left; margin-bottom:20px; display:inline;font-family: Microsoft Yahei;font-size:12px;line-height: 25px;}

        .wora a{ margin:0 9px;text-decoration:none; border:0; color:#333333;}

        /*动态信息详情*/
        #dynamicInfo {
            position: fixed;
            width: 100%;
            height: 100%;
            left: 0;
            top: 0;
            background-color: rgba(247, 245, 245, 0.6);;
            z-index: 100;
            display: none;
        }

        .infoContainer {
            position: relative;
            width: 798px;
            max-height: 515px;
            min-height: 455px;
            margin: 50px auto auto;
            border: 1px solid #d7d7d7;
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
            background-color: white;
            box-shadow: 0 0 18px 0.1px #B4ACAC;
        }

        .title-content {
            overflow: auto;
        }

        .infoTitle {
            font-size: 16px;
            font-weight: bold;
            /* text-align: center; */
            padding: 15px 20px;
            /* border-bottom: 1px solid #C0B9B9; */
            margin: 0px;
        }

        .infoText {
            color: #777;
            text-align: left;
            font-size: 13px;
            padding: 10px 20px 15px 20px;
        }

        .infoClose {
            position: absolute;
            cursor: pointer;
            width: 45px;
            height: 25px;
            right: 275px;
            top: 51px;
            color: #FFf;
            font-size: 14;
            padding-top: 3px;
            text-align: center;
        }

        .infoClose:hover {
            background-color: #E95E4B;
            border-top-right-radius: 3px;
            /*
            background: url(../../images/commercial/result-close.png) 0px -68px no-repeat;
            */
        }

        .infoContent {
            max-height: 380px;
            margin-bottom: 10px;
            padding: 0px 20px;
        }

        .title-span {
            background-color: #0095da;
            color: #FFF;
            padding: 4px 0px 4px 20px;
            font-size: 15px;
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
        }

        .title-span span {

        }
    </style>

    <script type="text/javascript">
        //渲染区县
        function renderCounty(){
            $("#county_ul").html("");
            var temp = $( "#county_list_tmpl" ).tmpl(countyArray );
            temp.appendTo( $("#county_ul") );
        }

        //点击区县事件
        var temp =0;
        function animateExpand(county,targetLi){
            //切换样式
            $("#county_ul li").each(function(index){
                if( $(this).hasClass("choosed")){
                    $(this).removeClass("choosed");
                }
            });
            $(targetLi).addClass("choosed");


            //隐藏被展开的UL
            $("#county_ul li ul").each(function(index){
                if( $(this).is(":hidden") ){

                }
                else{
                    if( county != temp){//如果不是同一个那么隐藏，如果是同一个，那么不隐藏
                        $(this).slideUp("fast");
                    }
                }
            });

            //展开新子项
            genSociety(county,targetLi);

            temp = county;
        }


        function genSociety(county,targetLi){
            //如果有子元素，那么不需要重新获取数据
            var target = $("#society_list_"+county);
            if( target.length > 0){
                //显示元素
                target.slideDown("fast");
            }
            else{//重新获取数据
                $.ajax({
                    url: "/society/search",
                    type:"get",
                    data:{
                        county:county,
                        d:new Date().getTime()
                    },
                    dataType: "json",
                    success: function(result){
                        if( result.success){
                            renderSociety(result.data ,county,targetLi );
                        }
                    }
                });
            }
        }

        //创建新的UL，渲染
        function renderSociety(data,county,targetLi){
            var newUL = '<ul id="society_list_'+ county +'"></ul>';
            $(newUL).appendTo($(targetLi));

            var target = $("#society_list_"+county);
            var temp = $( "#society_list2_tmpl" ).tmpl( data );
            temp.appendTo( target );
        }

        //加载商户列表查询页面，传递社区code
        function activeQuery(code){
            $("#commercialIframe").attr("src","/pages/live/commercial_list.jsp?societyCode="+code);
        }

        //传递商户类型
        function activeQueryByDicService(code){
            $("#commercialIframe").attr("src","/pages/live/commercial_list.jsp?dicService="+code);
        }

        function loadIframe(url){
            $("#commercialIframe").attr("src",url);
        }

        function loadCommercialDetail(code){
            $("#commercialIframe").attr("src", "/pages/live/commercial_info.jsp?code="+code+"&society_code="+societyCode);
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

    <div class="menu-box">
        <%--<div class="title">--%>
            <%--<div class="div_icon">--%>
            <%--</div>--%>
            <%--服务区域--%>
        <%--</div>--%>
        <%--<ul id="county_ul" class="menu-ul">--%>
        <%--</ul>--%>
    </div>

    <div class="content" style="width:100%;height:100%">
        <iframe id="commercialIframe" src="list.jsp"  frameborder="0" scrolling="no" style="height:100%"></iframe>
    </div>

    <div class="clear_float"></div>

    <div id="dynamicInfo">
        <div class="infoContainer">
            <div class="title-span">
                <span>机构最新信息</span>
            </div>
            <div class="title-content">
                <p id="infoTitle" class="infoTitle">
                </p>
                <div id="infoText" class="infoText"></div>
                <div id="infoContent" class="infoContent"></div>
            </div>
        </div>
        <div id="infoClose" class="infoClose" title="关闭">关闭</div>
    </div>
</div>










</body>
</html>
