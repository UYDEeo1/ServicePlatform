<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/19
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品列表</title>
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
            border:1px solid #E2E2E2;
            background-color: #ffdcbd29;
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
            padding-top: 10px;
            padding-bottom: 10px;
            color:orange;
            font-size: 20px;

        }
        .shop_div label{
            padding-left: 10px;
            font-size: 10px;
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
            width:500px;
            height:400px;
            left:450px;
            top:150px;
            z-index:99;
            background-color: rgba(217, 217, 217, 0.89);
            color:white;
            padding:20px;
            overflow:scroll;
            display: none;
        }
        .dialog_div li{
            line-height: 50px;
        }
        .dialog_div p{
            font-size:24px;
            text-align: center;
        }
        .dialog_div img{
            width:270px;
            height:190px;
            margin: 5px;
            padding-left: 100px;
            border: 2px solid rgba(255,255,255,0.8);
            border-radius: 4px;
        }
        .dialog_div a{
            cursor:pointer;
        }
        .a_div{
            width:100%;
            height:120px;
            position: absolute;
            /*background-color: rgb(255, 240, 230);*/
            border-bottom:2px solid #d9d9d9;

        }
        /*.c1 a{*/
            /*color: #5f5f5f;*/
            /*cursor: pointer;*/
        /*}*/
        /*.c1 a:hover{*/
            /*color:#ff9934;*/
        /*}*/
        /*.c1{*/
            /*width:250px;*/
            /*height:100px;*/
            /*padding-left:5px;*/
            /*margin-left:5px;*/
            /*padding-right:40px;*/
            /*margin-top: 5px;*/
            /*float:left;*/
            /*position:relative;*/
        /*}*/
        /*.ha{*/
            /*font-size: 18px;*/
            /*font-weight: 500;*/
            /*line-height: 30px;*/
            /*padding-bottom: 8px;*/
        /*}*/

        .cate_detail_item {
            position: relative;
            padding-left: 80px;
        }
        a {
            color: #666;
            text-decoration: none;
            cursor: pointer;
        }
        a:hover{
            color:#ff9934;
        }
        .cate_detail_tit {
            overflow: hidden;
            position: absolute;
            left: 0;
            top: 6px;
            width: 130px;
            text-align: right;
            font-weight: 700;
            white-space: nowrap;
            -o-text-overflow: ellipsis;
            text-overflow: ellipsis;
        }
        .cate_detail_tit_arrow {
            margin-left: 5px;
        }
        .cate_detail_con {
            overflow: hidden;
            padding-left: 60px;
            padding-top: 5px;
        }
        .cate_detail_con_lk {
            float: left;
            margin: 3px 0;
            padding: 0 10px;
            height: 16px;
            border-left: 1px solid #e0e0e0;
            line-height: 16px;
            /*white-space: nowrap;*/
        }
        dl{
            margin-bottom: 0;!important;
        }
        .h_title{
            padding-top: 20px;
            font-size: 26px;
            font-weight: 800;
            color: #ff5718;

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
            height: 78px;
            min-width: 1268px;
            width: 100%;
            margin: 0 auto;
            overflow: hidden;
            display: block;
        }

    </style>
    <script>
        function opendiv() {
            document.getElementById("div1").style.display="block";
        }
        function closediv() {
            document.getElementById("div1").style.display="none";
        }
        function d1() {
            document.getElementById("div1").style.display="block";
            document.getElementById("div2").style.display="block";
            document.getElementById("div3").style.display="none";
        }
        function d2() {
            document.getElementById("div1").style.display="none";
            document.getElementById("div2").style.display="none";
            document.getElementById("div3").style.display="block";
        }
    </script>

</head>

<body>

<iframe id="headFrame" src="head.jsp" frameborder="0" scrolling="no">
</iframe>
</body>
</html>
<div class="a_div" style="padding-left:170px;background-color: #f1f1f1;">

    <div class="col-md-2 h_title">网上商城</div>
    <div class="col-md-9">
        <dl class="cate_detail_item cate_detail_item1">
            <dt class="cate_detail_tit">
                <a class="cate_detail_tit_lk" target="_blank">居家上门服务<i class="cate_detail_tit_arrow">></i></a>
            </dt>
            <dd class="cate_detail_con">
                <a class="cate_detail_con_lk" target="_blank" onclick="d1()">十助</a>
                <a class="cate_detail_con_lk" target="_blank" onclick="d2()">智能化设备</a>
                <a class="cate_detail_con_lk" target="_blank">家庭医生</a>
                <a class="cate_detail_con_lk" target="_blank">家庭病床</a>
            </dd>
        </dl>

        <dl class="cate_detail_item cate_detail_item1">
            <dt class="cate_detail_tit" clstag="h|keycount|head|category_13c01">
                <a class="cate_detail_tit_lk" target="_blank">社会日托服务<i class="iconfont cate_detail_tit_arrow">></i></a>
            </dt>
            <dd class="cate_detail_con">
                <a class="cate_detail_con_lk" target="_blank">十助</a>
                <a class="cate_detail_con_lk" target="_blank">智能化设备</a>
                <a class="cate_detail_con_lk" target="_blank">家庭医生</a>
                <a class="cate_detail_con_lk" target="_blank">家庭病床</a>
            </dd>
        </dl>
        <dl class="cate_detail_item cate_detail_item1">
            <dt class="cate_detail_tit" clstag="h|keycount|head|category_13c01">
                <a  class="cate_detail_tit_lk" target="_blank">社会全托服务<i class="iconfont cate_detail_tit_arrow">></i></a>
            </dt>
            <dd class="cate_detail_con">
                <a class="cate_detail_con_lk" target="_blank">十助</a>
                <a class="cate_detail_con_lk" target="_blank">智能化设备</a>
                <a class="cate_detail_con_lk" target="_blank">家庭医生</a>
                <a class="cate_detail_con_lk" target="_blank">家庭病床</a>
            </dd>
        </dl>
        <dl class="cate_detail_item cate_detail_item1">
            <dt class="cate_detail_tit" clstag="h|keycount|head|category_13c01">
                <a class="cate_detail_tit_lk" target="_blank">养老院照护服务<i class="iconfont cate_detail_tit_arrow">></i></a>
            </dt>
            <dd class="cate_detail_con">
                <a class="cate_detail_con_lk" target="_blank">十助</a>
                <a class="cate_detail_con_lk" target="_blank">智能化设备</a>
                <a class="cate_detail_con_lk" target="_blank">家庭医生</a>
                <a class="cate_detail_con_lk" target="_blank">家庭病床</a>
            </dd>
        </dl>
    </div>
</div>


<div style="padding-top: 130px;padding-left:140px;width:1300px;">

    <div id="div1" class="shop_div">
        <div><img src="img/shop1.jpg"></div>
        <p>饮食制作</p>
        <label>清洗衣物、床上用品、打扫卫生、整理房间</label>
        <div class="hr-line-dashed"></div>
        <span>¥30.00</span>
        <div style="padding-left:150px;margin:8px;"><a href="shop_detail.jsp">查看详情</a></div>
    </div>
    <div id="div2" class="shop_div">
        <div><img src="img/shop1.jpg"></div>
        <p>助浴</p>
        <label>清洗衣物、床上用品、打扫卫生、整理房间</label>
        <div class="hr-line-dashed"></div>
        <span>¥30.00</span>
        <div style="padding-left:150px;margin:8px;"><a href="shop_detail1.jsp">查看详情</a></div>
    </div>
    <div id="div3" class="shop_div">
        <div><img src="img/shop1.jpg"></div>
        <p>设备1</p>
        <label>清洗衣物、床上用品、打扫卫生、整理房间</label>
        <div class="hr-line-dashed"></div>
        <span>¥30.00</span>
        <div style="padding-left:150px;margin:8px;"><a href="shop_detail2.jsp">查看详情</a></div>
    </div>




    <%--<div style="width:100%; height:100px;float:left;"></div>--%>
</div>

<%--<div style="width:100%;background-color: #fff4f3;position: fixed;bottom: 0;height:60px;">--%>
    <%--<a style="float:right;background-color:#ff6713;width:20%;color:white;height:50px;text-align: center;font-size: 25px;padding-top: 10px;">下单</a>--%>
<%--</div>--%>

</body>
</html>
