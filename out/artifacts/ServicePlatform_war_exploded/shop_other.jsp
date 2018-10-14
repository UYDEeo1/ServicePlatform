<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/9/6
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>公司商品</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
    <style>
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

        .hr-line-dashed {
            border-top: 1px dashed #e7eaec;
            color: #fff;
            background-color: #fff;
            height: 1px;
            margin: 10px 0;
        }
        .shop_div{

            /*border:1px solid #E2E2E2;*/
            /*background-color: #ffdcbd29;*/
            border:1px solid #e9e9e9;

            margin-top:20px;
            margin-left: 10px;
            padding-left: 2px;
        }
        .shop_div a{
            cursor: pointer;
        }
        .shop_div img{
            width:210px;
            height:190px;
            margin: 3px;
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
        .col-md-3{
            width:23%;
        }
        .shop_div:hover{
            cursor: pointer;
            box-shadow:0 0 5px 5px #fff3f3;
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



<div style="padding-left: 150px;">
    <div class="d_tit" style="width:1000px;margin:20px;">
        <div class="d_p">乐健公司</div>
    </div>

    <div class="container row" style="margin-left:10px;">
        <div class="shop_div col-md-3" onclick="javascript:location.href='shop_detail.jsp'" style="padding-right:10px;!important;">
            <div><img src="img/shop2.jpg"></div>
            <p>饮食制作</p>
            <label>清理衣物、洗脸、洗头、洗澡</label>
            <div class="hr-line-dashed"></div>
            <span>¥30.00</span>
            <%--<div style="padding-left:150px;"><a href="shop_list_1.jsp">查看详情</a></div>--%>
        </div>
        <div class="shop_div col-md-3" onclick="javascript:location.href='shop_detail1.jsp'">
            <div><img src="img/shop2.jpg"></div>
            <p>助浴</p>
            <label>清理衣物、洗脸、洗头、洗澡</label>
            <div class="hr-line-dashed"></div>
            <span>¥30.00</span>
            <%--<div style="padding-left:150px;"><a href="shop_list_1.jsp">查看详情</a></div>--%>
        </div>
        <div class="shop_div col-md-3" onclick="javascript:location.href='shop_detail2.jsp'">
            <div><img src="img/shop2.jpg"></div>
            <p>设备1</p>
            <label>清理衣物、洗脸、洗头、洗澡</label>
            <div class="hr-line-dashed"></div>
            <span>¥30.00</span>
            <%--<div style="padding-left:150px;"><a href="shop_list_1.jsp">查看详情</a></div>--%>
        </div>



    </div>
</div>

</body>
</html>
