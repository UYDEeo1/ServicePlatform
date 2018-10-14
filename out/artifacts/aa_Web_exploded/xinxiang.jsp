<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/20
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>邻里信箱</title>
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
        .xinxiang_div{
            padding-top:30px;
            padding-left:140px;
            line-height: 40px;
        }
        .xinxiang_div textarea{
            width:500px;
            height:300px;
            line-height: 20px;
            font-size: 16px;
            padding:5px;

        }
        /*.xinxiang_div input{*/
            /*width:430px;*/
        /*}*/
        .radio_div{
            margin-top: 20px;
            margin-bottom: 20px;
        }
        .radio_div input{
            width:20px;
        }
        #btn_div {
            width:130px;
            margin-left:350px;
            background-color: orange;
            color:white;
            height:30px;
            text-align: center;
            line-height: 30px;

        }
        #btn_div a{
            color:white;
            font-size: 17px;
            cursor: pointer;
        }
        .conxinxiang{
            background-color: #f1f1f1;
            width:800px;
            margin-left:300px;
            margin-top:30px;
            padding-bottom:40px;
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
<div class="conxinxiang">

    <div style="padding-top: 20px;padding-bottom:20px;line-height: 40px;background-color:#f1981c">
        <p style="text-align: center;font-size:24px;font-weight: 900;color:white;">邻 里 信 箱</p>
    </div>

    <div class="xinxiang_div">
        <textarea cols="9" name="text" placeholder="请填写您想对我们说的话。"></textarea></br>
        <div class="radio_div">类型：<input type="radio" name="typee" value="1" checked>反馈
        <input type="radio" name="typee" value="2">举报</br>
        </div>
    对应机构：<input type="text" name="jigou"></br></br>
        <div id="btn_div"><a>提 交</a></div>
    </div>
</div>

</body>
</html>
