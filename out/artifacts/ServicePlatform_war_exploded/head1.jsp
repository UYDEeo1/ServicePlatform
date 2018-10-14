<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>用户登陆</title>
    <link type="text/css" rel="stylesheet" href="css/common1.css"/>
    <link type="text/css" rel="stylesheet" href="css/head1.css"/>
</head>
<body>

<div class="site-nav">
    <div class="site-nav-bd">
        <div class="site-nav-bd-l">
            <%--<div style="float:left;height:36px;line-height:36px;">--%>
                <%--<img style="float:left;width:60px;height:20px;margin-right:5px;margin-top:9px;"/>--%>
                <%--<a href="page1.jsp" target="_top">一站式城市服务平台&nbsp;</a>--%>
            <%--</div>--%>

        </div>

        <ul class="site-nav-bd-r">

            <li>
                <div id="login-center">
                    <div id="loginForm">
                        <table cellspacing="0" cellpadding="0">
                            <colgroup>
                                <col width="40"/>
                                <col width="100"/>
                                <col width="40"/>
                                <col width="100"/>

                            </colgroup>
                            <tr>
                                <td align="right">
                                    账号&nbsp;
                                </td>
                                <td>
                                    <input id="username" name="UserName" type="text" autocomplete="off"/>
                                </td>
                                <td align="right">
                                    密码&nbsp;
                                </td>
                                <td>
                                    <input id="password" name="Pwd" type="password" autocomplete="off"
                                           onkeydown="keyLogin(event)"/>
                                </td>
                                <td>
                                    <button id="submitBtn">登&nbsp;&nbsp;录</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </li>


            <li>
                <div id="help-center">
                    <a id="help_a" target="_top">帮助中心</a>
                </div>
            </li>

            <li id="downloadMenu">
                <div id="down_load">
                    <a href="javascript:void(0);">下载App</a>
                </div>

                <div id="dl_dropdown">
                    <div class="qr-img">
                        <img>
                    </div>
                    <div class="qr-right">

                        <a href="http://app.eshimin.com/download.html" target="_blank">
                            <img class="d_img_1" src="/smmail/cop/images/android_download.jpg">
                        </a>

                        <a href="http://app.eshimin.com/download.html" target="_blank">
                            <img class="d_img_2" src="/smmail/cop/images/ios_download.jpg">
                        </a>
                    </div>

                </div>
            </li>
        </ul>
    </div>
</div>

<div class="logo-box" style="color:#ff6713;font-size: 30px;font-weight: 800;">
    <div style="margin-top:10px;width:55px;float:left"><img alt="加载中" src="logo.png"></div>
    <div style="width:945px;float:right;margin-top:20px;"><a href="page1.jsp" target="_top" style="color:#ff6713;">古美路街道综合为老服务平台</a></div>
    <div style="clear:both;">
    </div>
</div>
<%--<div>--%>
    <%--<img src="logo.png" style="">--%>
    <%--<h2 style="text-align: center;padding-top: 2%">古美街道服务平台</h2>--%>
<%--</div>--%>

</body>
</html>

<script type="text/javascript">

    $(function () {
        $("#downloadMenu").hover(function () {
            $("#down_load").css("background", "none repeat scroll 0 0 #fff")
                .css("border-color", "#eee")
                .css("border-style", "solid")
                .css("border-width", "0 1px")
                .css("padding", "0 4px 0px")
                .css("z-index", "1001");
            $("#dl_dropdown").show();
        }, function () {
            $("#down_load").removeAttr("style");
            $("#dl_dropdown").hide();
        });
    });


    function login(){

        var userName = $("#username").val();
        var password = $("#password").val();
        var href = window.parent.location.href;
        //登录验证
        $.ajax({
            url: "/user/login",
            data:{
                username:userName,
                password:password,
                href:href
            },
            dataType: "json",
            type:"post",
            success: function(result) {

                //成功，并隐藏
                if (result.success == true) {

                    window.parent.location.href=result.rdurl;
                }
                //失败
                else {
                    var mask = $(".dialog-outer");
                    mask.find(".dlg-info").text(result.msg);
                    mask.show();
                }
            },
            error: function (req,err) {
                for(var key in req){
                    console.log(key);
                    console.log(req[key]);
                }
                console.log(err)
            }
        });
    }

    function getWeatherNew2() {
        //从上海气象局接口获取天气数据
        $.ajax({
            url: "http://www.eshimin.com/weather/baidu/get",
            dataType: "jsonp",
            jsonpCallback: "callback",//callback的function名称
            cache: false,
            success: function (result) {
                //渲染天气
                if (result != null) {
                    //var data = result.weatherinfo;
                    //var first = data[0];
                    var box = $(".weather-box");

                    //var temperature =data.temp2 +" ~ "+ data.temp1;
                    //	alert(getWeatherPic( first.dayPictureUrl ));
                    //box.find(".pic").attr( "src", "" + getWeatherPic( first.dayPictureUrl ));
                    box.find(".temperature").text(result.tempe);
                    box.find(".weather").text(result.weather);
                    //box.find(".wind").text(first.wind);
                    box.show();
                    headWidth();
                }
            }
        });
    }


    function hideMask() {
        var mask = $(".dialog-outer");
        mask.hide();
    }

    function keyLogin(event) {
        if (event.keyCode == 13) {   //回车键的键值为13
            $("#submitBtn").click();  //调用登录按钮的登录事件
        }
    }

    function headWidth(){
        //根据天气信息长短自适应抬头宽度，最小值固定为1000px
        var div1 = $(".site-nav-bd-l").width();
        var div2 = $(".site-nav-bd-r").width();
        var div3 = $(".site-nav-bd").width();
        if (div1+div2 > 1000) {//内容宽度超过1000时，根据内容多少自适应
            div3 = div1 +550;
            $(".site-nav-bd").width(div3);
        }
    }
</script>
