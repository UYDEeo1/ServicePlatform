<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/6/29
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>center</title>
    <link rel="stylesheet" href="css/SMY.css">
    <link rel="stylesheet" href="css/MetroJs.min.css">
    <style>
        .main_div{
            position: relative;
            width: 1268px;
            height: 240px;
            margin: 0 auto;
            margin-top: 14px;
            margin-bottom: 20px;
            background-color: transplant;
        }
        .block_div_0{
            position: relative;
            float: left;
            width: 488px;
            height: 240px;
            margin-right: 12px;
        }
        .block_div_1{
            position: relative;
            float: left;
            width: 238px;
            height: 240px;
            margin-right: 12px;
        }
        .block_div_2{
            position: relative;
            float: left;
            width: 238px;
            height: 240px;
            margin-right: 20px;
        }
        .div_ad_1{
            position: relative;
            visibility: hidden;
            overflow: hidden;
            float: left;
            width: 120px;
            height: 240px;
            margin-right: 20px;
        }
        .shdt_content ul {
            position: absolute;
            display: block;
            width: 475px;
            height: 240px;
            right: 0;
            top: 0;
            margin-top: 45px;
            padding: 0;
            list-style: none;
        }
        .shdt_content ul li {
            position: relative;
            overflow: hidden;
            float: left;
            width: 443px;
            height: 80px;
            left: 0;
            top: 0;
        }
        .shdt_content ul li img {
            position: absolute;
            width: 88px;
            height: 58px;
            left: 0;
            top: 0;
            cursor: pointer;
            margin: 9px 5px 9px 15px;
            border: 2px solid rgba(255,255,255,0.8);
            border-radius: 4px;
            background-color: rgba(150,150,150,0.5);
        }
        .shdt_content ul li label {
            position: absolute;
            display: block;
            width: 327px;
            height: 35px;
            right: 0;
            top: 0;
            margin: 9px 0 0;
            cursor: pointer;
            line-height: 30px;
            color: white;
            font-size: 16px;
            font-family: Microsoft YaHei;
            text-align: left;
        }
        .shdt_content ul li span {
            position: absolute;
            display: block;
            width: 327px;
            height: 30px;
            right: 0;
            bottom: 0;
            margin: 0 0 10px;
            line-height: 30px;
            color: white;
            font-size: 13px;
            font-family: Microsoft YaHei;
            text-align: left;
        }
        /*.right_title{*/
            /*width: 214px;*/
            /*height: 2px;*/
            /*position: relative;*/
            /*float: right;*/
            /*margin: 8px 12px 12px 12px;*/
        /*}*/
        /*.fg-white-right{*/
            /*color: white;*/
            /*font-family: Microsoft YaHei;*/
            /*font-size: 18px;*/
            /*top: 0px;*/
            /*position: relative;*/
            /*float: right;*/
            /*text-decoration: none;*/
        /*}*/
    </style>
</head>
<body>



<div class="main_div">

    <div class="div_ad div_ad_1" data-mode="carousel" data-start-now="false" class="live-tile" data-repeat='0'>
    </div>


    <%--<div class="block_div_0">--%>

        <%--<div id="change-color-smrd">--%>
            <%--<div id="carousel_0" data-mode="carousel" data-start-now="false" class="live-tile" data-repeat='0'>--%>
                <%--<!-- <div>--%>
                    <%--<div id="carousel_0_0_div">--%>
                        <%--<a id="carousel_0_0_a">loading...</a>--%>
                    <%--</div>--%>
                <%--</div> -->--%>

                <%--<div>--%>
                    <%--<div id="shdt_label">--%>
                        <%--<a href="page2.jsp" target="_top" style="text-decoration:none;">新闻动态</a>--%>
                    <%--</div>--%>
                    <%--<div id="shdt_content">--%>
                        <%--<ul>--%>
                            <%--<li><img id="shdt_img_0" src="img/n2.jpg" onclick="gotoLinkPage('page2.jsp')">--%>
                                <%--<label onclick="gotoLinkPage('page2.jsp')">街道领导走访慰问社区单位</label>--%>
                                <%--<span>7月2日报道:你知道郑和第一次下西洋是哪一年吗？你...</span>--%>
                            <%--</li>--%>
                            <%--<li><img id="shdt_img_1" src="img/news.png" onclick="gotoLinkPage('page2.jsp')">--%>
                                <%--<label onclick="gotoLinkPage('page2.jsp')">今日要闻推荐</label>--%>
                                <%--<span>▲习近平同团中央新一届领导班子成员集体谈话并...</span></li>--%>
                            <%--<li><img id="shdt_img_2" src="img/news.png" onclick="gotoLinkPage('page2.jsp')">--%>
                                <%--<label onclick="gotoLinkPage('page2.jsp')">沪拟新增医保定点医疗机构</label>--%>
                                <%--<span>根据国家及本市定点医药机构协议管理的有...</span>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>

        <%--</div>--%>


        <%--<div id="change-color-smcy" style="width:100%">--%>

            <%--<div id="carousel_select_2" class="carousel-select-div ">--%>
                <%--<a target="_top"><img alt="网上商城" src="img/wxb明星店铺.png" class="block-img"/></a>--%>
                <%--<a target="_top" class="fg-white">网上商城</a>--%>
            <%--</div>--%>
        <%--</div>--%>


    <%--</div>--%>


    <div class="block_div_1">

        <div id="change-color-yzd">
            <div id="carousel_3" data-mode="carousel" data-start-now="false" class="live-tile" data-repeat='0'>
                <div>
                    <div style="width: 60px;height: 76px;position:relative;float:left;margin: 14px 11px 0 0;text-align: center;">
                        <a href="page3.jsp" target="_top"><img alt="" src="img/wxb账户.png" style="width: 30px;height: 32px;"/></a>
                        <div style="width: 42px;height: 5px;"></div>
                        <a href="page3.jsp" target="_top" style="font-size: 14px;text-decoration:none;">个人信息</a>
                    </div>
                    <div style="width: 60px;height: 76px;position:relative;float:left;margin: 14px 11px 0 0;text-align: center;">
                        <a href="page3.jsp" target="_top"><img alt="" src="img/保障.png" style="width: 30px;height: 32px;"/></a>
                        <div style="width: 42px;height: 5px;"></div>
                        <a href="page3.jsp" target="_top" style="font-size: 14px;text-decoration:none;">健康</a>
                    </div>
                    <div style="width: 60px;height: 76px;position:relative;float:left;margin: 14px 11px 0 0;text-align: center;">
                        <a href="page3.jsp" target="_top"><img alt="" src="img/king-white.png" style="width: 30px;height: 32px;"/></a>
                        <div style="width: 42px;height: 5px;"></div>
                        <a href="page3.jsp" target="_top" style="font-size: 14px;text-decoration:none;">积分</a>
                    </div>

                    <div style="width: 80px;height: 76px;position:relative;float:left;padding-left:20px;margin: 8px 0 0 0;text-align: center;">
                        <a href="page3.jsp" target="_top"><img alt="" src="img/attachment.png" style="width: 30px;height: 32px;"/></a>
                        <div style="width: 64px;height: 5px;"></div>
                        <a href="page3.jsp" target="_top" style="font-size: 14px;text-decoration:none;">标签</a>
                    </div>


                    <div style="width: 80px;height: 76px;position:relative;float:left;margin: 8px 15px 0 0;text-align: center;">
                        <a href="page3.jsp" target="_top"><img alt="" src="img/二维码.png" style="width: 30px;height: 32px;"/></a>
                        <div style="width: 64px;height: 5px;"></div>
                        <a href="page3.jsp" target="_top" style="font-size: 14px;text-decoration:none;">一卡通</a>
                    </div>
                </div>


            </div>
            <div id="carousel_select_3" class="carousel-select-div">
                <a href="page3.jsp" target="_top"><img src="img/text.png" class="block-img"/></a>
                <a href="page3.jsp" target="_top" class="fg-white">个人档案</a>

            </div>
        </div>


            <%--<div id="div_ad_3_box">--%>
                <%--<div id="div_ad_3" class="carousel-select-div" style="visibility: visible;top:70px">--%>
                    <%--<a class="fg-white" style="width:auto">一间房</a>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div id="change-color-jxhd">--%>
                <%--<div id="carousel_select_4" class="carousel-select-div">--%>
                    <%--<a class="fg-white" style="width:auto">一个馆</a>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div id="change-color-dzyj">--%>
                <%--<div id="carousel_select_5" class="carousel-select-div">--%>

                    <%--<a class="fg-white">一份清单</a>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div id="div_ad_4_box">--%>
                <%--<div id="div_ad_4" class="carousel-select-div" style="visibility: visible;top:70px">--%>
                    <%--<a class="fg-white">一张卡</a>--%>
                <%--</div>--%>
            <%--</div>--%>



        <%--<div id="change-color-yysd" style="background-color:#b600b1">--%>
            <%--<div data-mode="carousel" data-start-now="false" class="live-tile static" data-repeat='0' style="position: relative;float: left;width: 214px;height: 158px;margin: 12px 12px 22px 12px;">--%>
                <%--<div>--%>
                    <%--<div class="loading_div">--%>
                        <%--<a>loading...</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="carousel-select-div">--%>
                <%--<a target="_top"><img alt="应用商店" src="img/shimincanyu.png" class="block-img"/></a>--%>
                <%--<a target="_top" class="fg-white">一张图</a>--%>
            <%--</div>--%>
        <%--</div>--%>



    </div>


    <div class="block_div_2">

        <div id="change-color-sqsh">



            <div id="carousel_1" data-mode="carousel" data-start-now="false" class="live-tile" data-repeat='0'>
                <div class="head_content_div">
                    <a href="page4.jsp" target="_top"><label>一份清单：</label></a>
                    <ul style="padding-left:20px;">
                        <a href="page4.jsp" target="_top"><li>古美社区卫生服务中心 </li></a>
                        <a href="page4.jsp" target="_top"><li>古美社区文化活动中心 </li></a>
                        <a href="page4.jsp" target="_top"><li>平阳敬老院 </li></a>
                        <a href="page4.jsp" target="_top"><li>古美敬老院 </li></a>
                    </ul>
                </div>

            </div>
            <div id="carousel_select_1" class="carousel-select-div">
                <a href="page4.jsp" target="_top"><img alt="一份清单" src="img/shequshenghuo.png" class="block-img"/></a>
                <a href="page4.jsp" target="_top" class="fg-white">一份清单</a>

                <%--<a><img id="carousel_select_1_2" alt="carousel_select" src="img/carouselNormalSmalll.png" class="carousel-select-img"></a>--%>
                <%--<a><img id="carousel_select_1_1" alt="carousel_select" src="img/carouselNormalSmalll.png" class="carousel-select-img"></a>--%>
                <%--<a href="javascript:"><img id="carousel_select_1_0" alt="carousel_select" src="img/carouselSelectedSmall.png" class="carousel-select-img"></a>--%>
            </div>
        </div>


        <%--<div id="change-color-yysd">--%>
            <%--<div id="carousel_7" data-mode="carousel" data-start-now="false" class="live-tile static" data-repeat='0'>--%>
                <%--<div>--%>
                    <%--<div id="carousel_7_0_div" class="loading_div">--%>
                        <%--<a  id="carousel_7_0_a">loading...</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div id="carousel_select_7" class="carousel-select-div">--%>
                <%--<a href="pages/apps/store_index.jsp" target="_top"><img alt="应用商店" src="img/shimincanyu.png" class="block-img"/></a>--%>
                <%--<a href="pages/apps/store_index.jsp" target="_top" class="fg-white">市民信箱</a>--%>
            <%--</div>--%>
        <%--</div>--%>
    </div>


    <div id="div_ad_2" class="div_ad" data-mode="carousel" data-start-now="false" class="live-tile" data-repeat='0'>
    </div>
</div>





<div class="main_div">
    <div class="div_ad div_ad_1" data-mode="carousel" data-start-now="false" class="live-tile" data-repeat='0'>
    </div>
    <div class="block_div_1">
        <div id="change-color-yysd" style="background-color:#b600b1">
            <div class="carousel-select-div">
                <a target="_top"><img alt="应用商店" src="img/shimincanyu.png" class="block-img"/></a>
                <a target="_top" class="fg-white">一张图</a>
            </div>

            <div data-mode="carousel" data-start-now="false" class="live-tile static" data-repeat='0' style="position: relative;float: left;width: 214px;height: 158px;margin: 12px 12px 22px 12px;">
                <div>

                </div>
            </div>

        </div>
    </div>


    <div class="block_div_0">
        <div id="change-color-smcy" style="width:100%">

            <div id="carousel_select_2" class="carousel-select-div ">
                <a target="_top" href="shoplist.jsp"><img alt="网上商城" src="img/wxb明星店铺.png" class="block-img"/></a>
                <a target="_top" class="fg-white" href="shoplist.jsp">网上商城</a>
            </div>

            <div class="shdt_content">
                <ul>
                    <%--<li><img src="img/shop1.jpg" onclick="gotoLinkPage('http://www.lj-service.com')">--%>
                        <%--<label onclick="gotoLinkPage('http://www.lj-service.com')">饮食制作</label>--%>
                        <%--<span>清洗衣物、床上用品、打扫卫生、整理房间···</span>--%>
                    <%--</li>--%>

                    <li><img src="img/shop2.jpg" onclick="gotoLinkPage('shoplist.jsp')">
                        <label onclick="gotoLinkPage('shoplist.jsp')">饮食制作</label>
                        <span>卫生及起居辅助服务...</span>
                    </li>

                    <li><img src="img/shop2.jpg" onclick="gotoLinkPage('shoplist.jsp')">
                            <label onclick="gotoLinkPage('shoplist.jsp')">饮食制作</label>
                            <span>卫生及起居辅助服务...</span>
                    </li>
                </ul>
                <div style="padding-top:200px;">
                    <a style="padding-left:390px;color:white;cursor: pointer;">机构申请</a>
                </div>
            </div>
        </div>

    </div>

    <%--<div class="block_div_2">--%>
        <%--<div id="change-color-yysd">--%>
            <%--<div id="carousel_select_7" class="carousel-select-div">--%>
                <%--<a href="xinxiang.jsp" target="_top"><img src="img/信封.png" class="block-img"/></a>--%>
                <%--<a href="xinxiang.jsp" target="_top" class="fg-white">邻里信箱</a>--%>
            <%--</div>--%>

            <%--<div id="carousel_7" data-mode="carousel" data-start-now="false" class="live-tile static" data-repeat='0'>--%>
                <%--<div>--%>
                        <%--<img onclick="gotoLinkPage('xinxiang.jsp')" src="img/文本编辑_填充.png" style="cursor:pointer;padding-left:80px;padding-top:40px;width:60px;height:50px;position: absolute;">--%>

                <%--</div>--%>
            <%--</div>--%>
            <%--&lt;%&ndash;<div id="carousel_select_7" class="carousel-select-div">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a href="xinxiang.jsp" target="_top"><img src="img/信封.png" class="block-img"/></a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a href="xinxiang.jsp" target="_top" class="fg-white">邻里信箱</a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--</div>--%>
    <%--</div>--%>

</div>

<script src="js/SMY.js"></script>
</body>
</html>
