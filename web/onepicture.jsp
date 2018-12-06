<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/10/1
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>一张图</title>
    <%--<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>--%>
    <%--<script src="js/jquery-1.9.1.min.js"></script>--%>
    <%--<script src="js/bootstrap.min.js"></script>--%>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/onepicture.js"></script>




    <style>
        @media (min-width: 1024px) {
            body {
                font-size: 18px;
                margin: 0;
            }
            /*#left_pic{*/
                /*margin-left:5%;*/
                /*margin-top: 30px;*/
                /*width:75%;*/
                /*float: left;*/
            /*}*/
            /*#left_pic img{*/
                /*width:100%;*/
            /*}*/
            #right_nav{
                position: fixed;
                /*float: right;*/
                width: 16%;
                /*margin-right: 1%;*/
                margin-top: 5px;

                right: 0;

            }
            .pop{

                 height:320px;
                 width:250px;
                 display: none;
                 /*position: fixed;*/
                 /*bottom: 0;*/
                 z-index:99;
                 margin-left: 10%;
                 margin-top: -70%;
                 /*position:absolute;  !* 注：弹出框必须为绝对定位 *!*/
             }
            .pop li{
                list-style-type: none;
            }

            .popOnly{

                height:320px;
                width:250px;
                display: none;
                /*position: fixed;*/
                /*bottom: 0;*/
                z-index:99;
                position:absolute;  /* 注：弹出框必须为绝对定位 */
            }
            .popOnly li{
                list-style-type: none;
            }

            .box_related{

                padding:3%;
                box-shadow: 0 6px 12px rgba(0,0,0,.175);
                background-color: #ffffff;


            }

            .box_related img{
                width:100%;
                height:150px;
                margin-bottom: 10px;
                padding-top: 4%;
                padding-right: 4%;
                padding-left: 4%;
            }
            .box_related a{
                color:#cb8e6a;
                font-size:16px;
                text-decoration:none;
            }
            a{
                cursor: pointer;
            }
            .closeimg{
                /*padding-left: 65%;*/
                position: absolute;
            }
            .closeimg img{
                width:30px;
            }
            .erJ{
                font-size: 14px!important;
                padding-left: 20px!important;

            }
            .sanJ{
                font-size: 14px!important;
                padding-left: 35px!important;
            }


        }
    </style>
</head>
<body ng-app="myInfo" ng-controller="PicCtrl">

<!DOCTYPE html>
<html>
<head>
    <title>portal统一头部</title>

    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>


    <style>
        body {
            margin: 0px;
            padding: 0px;
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
            #right_nav{
                position: fixed;
                /*float: right;*/
                width: 16%;
                margin-right: 1%;
                margin-top: 5px;

                right: 0;

            }

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
            #right_nav{
                position: fixed;
                /*float: right;*/
                width: 16%;
                margin-right: 4%;
                margin-top: 5px;

                right: 0;

            }

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
            #right_nav{
                position: fixed;
                /*float: right;*/
                width: 16%;
                margin-right: 4%;
                margin-top: 5px;

                right: 0;

            }

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
            #right_nav{
                position: fixed;
                /*float: right;*/
                width: 16%;
                margin-right: 5%;
                margin-top: 5px;

                right: 0;

            }


        }
        .smalimage{
            position: absolute;
            z-index: 999;
            display: none;
        }

        #tubiao{
            animation: myfirst 0.7s infinite;
            /*box-shadow: -100px 100px 10px #fff; !*阴影*!*/
            /*animation: shadow .5s linear infinite;*/
        }
        /*@keyframes shadow {*/
            /*0%, 100% {transform: scaleX(1);}*/
            /*50% {transform: scaleX(1.2);}*/
        /*}*/

        @keyframes myfirst {
            0% {
                transform: translate(0px, 0px);
            }
            50% {
                transform: translate(0px, -10px);
            }
            100% {
                transform: translate(0px, 0px);
            }
        }

        #imgOrg,#imgOrgOnly{
            width: 100%;
            max-width: 250px;
        }
        #onePic{
            width: 1056px;
            height: 1314px;
        }
    </style>


</head>

<body >

<iframe id="headFrame" src="head.jsp" frameborder="0" scrolling="no">
</iframe>
</body>
</html>








    <div style="position: relative;width: 75%;float: left;">
        <div>
            <img src="img/onePic.jpeg" border="0" alt="OnePic" id="onePic" usemap="#onepicture" width="1056px;" onclick="closeimg();closeimgOnly()">
        </div>
        <div class="smalimage">
            <img src="img/map.png" id="tubiao" width="30px" style="cursor: pointer" onclick="$('#details').show()">
            <a name="miao" style="position: relative;bottom: 100px;color: transparent">1</a>
            <div id="details" class="pop">
                <%--<a class="closeimg"><img src="img/guanbi.png" onclick="closeimg()"></a>--%>
                <li class="box_related">
                    <a>
                        <img id="imgOrg" onerror="this.src='https://api.eshimin.com/image/live/commercial/icons/3101120060005_icon_20150812_155519_88.jpg'">
                    </a>
                    <a id="Tit">
                        古美敬老院
                    </a>
                    <br>     地址：<label id="add">闵行区虹莘路2288弄</label><br>     咨询电话：<label id="phoneNum">(021)34174387</label><br>
                    服务时间：<label id="serviceTime"></label><br>
                </li>
            </div>
        </div>
        <div id="detailsOnly" class="popOnly">
            <%--<a class="closeimg"><img src="img/guanbi.png" onclick="closeimgOnly()"></a>--%>
            <li class="box_related">
                <a>
                    <img id="imgOrgOnly" onerror="this.src='https://api.eshimin.com/image/live/commercial/icons/3101120060005_icon_20150812_155519_88.jpg'">
                </a>
                <a id="TitOnly">
                    古美敬老院
                </a>
                <br>     地址：<label id="addOnly">闵行区虹莘路2288弄</label><br>     咨询电话：<label id="phoneNumOnly">(021)34174387</label><br>
                服务时间：<label id="serviceTimeOnly"></label><br>
            </li>
        </div>
    </div>
<div class="row-lg-8">
    <map name="onepicture" ng-controller="MapCtrl">

        <area ng-repeat="k in mmap" shape="circle" coords="{{k.X}},{{k.Y}},8" ng-click="showDetailsOnly(k.id)" target="_blank">

        <%--<area shape="circle" coords="230,437.5,10" onclick="showdetails(this,'东兰苑')"  target="_blank">--%>
    </map>
</div>


<div id="right_nav">
    <div class="panel-group" id="accordion" ng-controller="LocCtrl">


        <div class="panel panel-info" id="ddd">
            <div class="panel-heading" style="padding:0">

                    <a class="panel-title" data-toggle="collapse" data-parent="#accordion"
                       href="#co1" style="text-decoration: none;padding: 10px 0px 10px 15px;cursor: pointer">
                        <img src="{{jw.imgUrl}}" style="width:14%;">
                        <label style="padding: 10px 0;width:180px;">{{jw.name}}</label>
                    </a>

            </div>
            <div id="co1" class="panel-collapse collapse">
                <div ng-repeat="www in jw.organData">

                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h4 class="panel-title erJ">
                                <a data-toggle="collapse" data-parent="#ddd"
                                   href="#co{{www.organName}}">
                                    <label style="width: 210px;padding-left: 15px;">{{www.organName}}</label>
                                </a>
                            </h4>
                        </div>
                        <div id="co{{www.organName}}" class="panel-collapse collapse">
                            <div class="panel-body sanJ" ng-repeat="ws in www.organs">
                                <a id="{{ws.id}}" ng-click="showImage(ws.id);showDetails(ws.id)">
                                    <label style="width:200px; text-align: center">{{ws.value}}</label>
                                </a><br>
                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>


        <div class="panel panel-info" ng-repeat="x in Data" ng-cloak>
            <div class="panel-heading" style="padding:0">
                <%--<h4 class="panel-title">--%>
                    <a class="panel-title" data-toggle="collapse" data-parent="#accordion"
                       href="#co{{x.organName}}" id="{{x.id}}" style="text-decoration: none;padding: 10px 0 10px 15px;cursor: pointer;">
                        <%--<img src="https://organold.oss-cn-shanghai.aliyuncs.com/img/%E7%BB%BC%E5%90%88%E4%B8%BA%E8%80%81%E6%9C%8D%E5%8A%A1%E4%B8%AD%E5%BF%83.png?Expires=1543891753&OSSAccessKeyId=TMP.AQEHsnBobsK4qg6E1NZN2Y9xjmNbCFuhuhRp_jGT4YWWGmm724pT4fVqhPH8MC4CFQDHgbLRI0yvl8BHimzeepUrmKS0GAIVAOWTOP8Vu4IajOfkob4yP0S0Yhw0&Signature=wCgLKSRkXc%2FpCh2Ww5Wou9BY1PE%3D">--%>
                        <img style="width:14%;" src="{{x.imgUrl}}">
                        <label style="padding:10px 0;width:180px;">{{x.organName}}</label>
                    </a>
                <%--</h4>--%>
            </div>
            <div id="co{{x.organName}}" class="panel-collapse collapse">
                <div class="panel-body" ng-repeat="s in x.organs">
                    <%--<a onclick="sImage('19.5%','31%')">ceshi</a><br>--%>
                    <a id="{{s.id}}" ng-click="showImage(s.id);showDetails(s.id)">
                        <label style="width:200px;text-align: center;">{{s.value}}</label>
                    </a><br>
                </div>
            </div>
        </div>









</div>



<script type="text/javascript">


//    function showdetails(thisObj,k){
//        var d = $(thisObj);
//        var pos = d.offset();
//        var t = pos.top + d.height(); // 弹出框的上边位置
//        var l = pos.left + d.width();  // 弹出框的左边位置
//        document.getElementById("Tit").innerHTML=k;
//        $("#details").css({ "top": t, "left": l }).show();
//    }

    function sImage(x,y) {
        $(".smalimage").css("top",y).css("left",x).show();

    }

    function    closeimg() {
        $("#details").hide();
    }
function closeimgOnly() {
    $("#detailsOnly").hide();
}
</script>

    <script>
            var winWidth,winHeight;
            // 获取窗口宽度
            if (window.innerWidth)
                winWidth = window.innerWidth;
            else if ((document.body) && (document.body.clientWidth))
                winWidth = document.body.clientWidth;
            // 获取窗口高度
            if (window.innerHeight)
                winHeight = window.innerHeight;
            else if ((document.body) && (document.body.clientHeight))
                winHeight = document.body.clientHeight;
            // 通过深入 Document 内部对 body 进行检测，获取窗口大小
            if (document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth)
            {
                winHeight = document.documentElement.clientHeight;
                winWidth = document.documentElement.clientWidth;
            }
//
//            alert(winWidth);
//            alert(winHeight);

    </script>




<script src="js/angular.min.js"></script>
<script src="js/pageJs/onepicture.js"></script>

</div>
</body>
</html>
