<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/8/23
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心-邻里信箱</title>

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

    <link  href="css/common.css" type="text/css" rel="stylesheet" />
    <link  href="css/personal.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>
    <script src="js/validate-custom.js" type="text/javascript"></script>

    <style type="text/css">

        body{
            border: 1px solid #e6e6e6;
            width: 720px;/*内部整体宽度*/
            padding: 10px;

        }

        table{
            font-size: 14px !important;
        }

        table tr{
            height:44px !important;
        }

        table td.first{
            padding-top: 5px;
        }

        input[readonly="readonly"]{
            border: none !important;
        }




        .msg-success{
            line-height: 30px;
            margin-bottom: 20px;
            font-size: 14px;
            color:green;

            text-align: center;
            display: none;
            background-color: #F0F8FF;
        }

        div.pannel{
            line-height: 30px;
            margin-bottom: 15px;
            font-size: 15px;
            border-bottom: 1px solid  #e6e6e6;
            margin-left: 10px;
            margin-right: 10px;
        }

        .pannel .icon{
            background-color: #F3BE9C;
            float: left;
            height: 20px;
            left: 10px;
            margin-top: 5px;
            margin-bottom: 5px;
            margin-right:10px;
            width: 5px;
        }

        .pannel .title{
            width:100px;
            border-bottom: 2px solid  #F3BE9C;
            padding-bottom:10px;
        }

        #cancelMobileForm, #changeMobileForm, #bindMobileForm{
            display:none;
        }

        #nextStep3 {
            background-color: transparent !important;
            border: medium none !important;
            color: #fff !important;
            cursor: pointer !important;
            height: 32px !important;
            line-height: 32px !important;
            text-align: center !important;
            width: inherit !important;
        }

        form table div.tip {
            color: #999999;
            font-size: 13px !important;
            height: 20px;
            padding: 5px 0;
        }

        .yzm{
            margin-left: 20px;
            margin-top: -4px;
            height: 30px !important;
            margin-left: 17px !important;
            vertical-align: middle !important;
            cursor:pointer;
        }





        .xinxiang_div{
            padding-top:30px;
            padding-left:115px;
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
            background-color: #F3BE9C;
            color:white;
            height:35px;
            text-align: center;
            line-height: 30px;
            border-radius: 8px;

        }
        #btn_div a{
            color:white;
            font-size: 17px;
            cursor: pointer;
        }
        .conxinxiang{
            /*background-color: #f1f1f1;*/
            width:720px;
            margin-top:30px;
            padding-bottom:40px;
        }



    </style>
</head>

<body>

<div class="pannel">
    <div class="title">
        <div class="icon">

        </div>
        邻里信箱
    </div>
</div>

<p class="msg-success">

</p>

<form >

    <div class="conxinxiang">

        <%--<div style="padding-top: 20px;padding-bottom:20px;line-height: 40px;background-color:#f1981c">--%>
            <%--<p style="text-align: center;font-size:24px;font-weight: 900;color:white;">邻 里 信 箱</p>--%>
        <%--</div>--%>

        <div class="xinxiang_div">
            <textarea cols="9" name="text" placeholder="请填写您想对我们说的话。"></textarea></br>
            <div class="radio_div">类型：<input type="radio" name="typee" value="1" checked>反馈
                <input type="radio" name="typee" value="2">举报</br>
            </div>

            <div id="btn_div"><a>提 交</a></div>
        </div>
    </div>

</form>

</body>

</html>