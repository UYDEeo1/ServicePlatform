
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title>古美路街道综合为老服务平台 - 登录</title>
   <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css" rel="stylesheet">
    <link href="css/login.min.css" rel="stylesheet">
    <!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>
        if(window.top!==window.self){window.top.location=window.location};
    </script>

    <style>
        .logopanel{
            margin-top: 100px;
        }
        .logopanel h1{
            font-weight:200;
            font-size: 34px;
        }
        .llog{
            font-size: 18px;
            font-weight: 300;
        }
        .llog h2{
            font-size:26px;
            font-weight:400;
        }
    </style>

</head>

<body class="signin">
<div class="signinpanel">
    <div class="row">
        <div class="col-sm-6">
            <div class="signin-info">
                <div class="logopanel m-b">
                    <h1>古美路街道</h1>
                    <h1>综合为老服务平台</h1>
                </div>
                <div class="m-b"></div>
                <%--<h4><strong></strong></h4>--%>
                <%--<#--<ul class="m-b">-->--%>
                    <%--<#--<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势一</li>-->--%>
                    <%--<#--<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势二</li>-->--%>
                    <%--<#--<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势三</li>-->--%>
                    <%--<#--<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势四</li>-->--%>
                    <%--<#--<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势五</li>-->--%>
                <%--<#--</ul>-->--%>
                <%--<#--<strong>还没有账号？ <a href="#">立即注册&raquo;</a></strong>-->--%>
            </div>
        </div>
        <div class="col-sm-6 llog">
            <form method="post" action="j_spring_security_check">
                <h2 class="no-margins">登录：</h2>
                <%--<#--<p class="m-t-md">登录到古美路街道综合为老服务平台</p>-->--%>
                <input style="font-size: 20px !important;padding: 18px!important;margin-top: 30px;margin-bottom: 20px" type="text" class="form-control uname" placeholder="用户名" name="username" />
                <input style="font-size: 20px !important;padding: 18px!important;margin-bottom: 30px"  type="password" class="form-control pword m-b" placeholder="密码" name="password" />
                <p id="#message"></p>
                <%--<#--<a href="">忘记密码了？</a>-->--%>
                <%--<span style="color: red">${(((SPRING_SECURITY_LAST_EXCEPTION.message)!)?contains("Exception"))?string("登陆超时！",(SPRING_SECURITY_LAST_EXCEPTION.message)!)}</span>--%>
                    <%--<button style="font-size: 24px" class="btn btn-success btn-block">登录</button>--%>
                <input type="button" class="btn btn-success btn-block" value="登录" onclick="sub()">
            </form>
        </div>
    </div>
    <div class="signup-footer">
        <%--<#--<div class="pull-left">-->--%>
            <%--<#--&copy; 2015 All Rights Reserved. H+-->--%>
        <%--<#--</div>-->--%>
    </div>
</div>
</body>
<script src="js/jquery.min.js"></script>
<script>
    function sub() {
        $.ajax({
            url :" http://101.132.76.252:83/identify/login",
            type : "get",
            data:{
                username:$("input[name='username']").val(),
                password:$("input[name='password']").val()
            },
            success : function(data) {
//                var result=eval("("+data+")");
                if(data.success==false) {
                    $("#message").html(data.data);
                }else{
                    setCookie("token",data.data,"24*60*60*1000");
                    location.href="/page1.jsp";
                }
            }
        });
    }

    function setCookie(name,value,time)
    {
        var strsec = getsec(time);
        var exp = new Date();
        exp.setTime(exp.getTime() + strsec*1);
        document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
    }

    function getsec(str)
    {
        var str1=str.substring(1,str.length)*1;
        var str2=str.substring(0,1);
        if (str2=="s")
        {
            return str1*1000;
        }
        else if (str2=="h")
        {
            return str1*60*60*1000;
        }
        else if (str2=="d")
        {
            return str1*24*60*60*1000;
        }
    }
</script>
</html>
