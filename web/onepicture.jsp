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
</head>
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
                float: right;
                width: 16%;
                margin-right: 2%;
                margin-top: 30px;
                /*position: fixed;*/
                /*right: 0;*/
                /*z-index: 99;*/

            }
            .pop{

                height:320px;
                width:24%;
                display: none;
                position: fixed;
                bottom: 0;
                z-index:99;
                /*position:absolute;  !* 注：弹出框必须为绝对定位 *!*/
            }
            .pop li{
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
                padding-left: 90%;
                position: absolute;
            }
            .closeimg img{
                width:30px;
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

        }
        .smalimage{
            position: absolute;
            z-index: 999;
            display: none;
        }
    </style>


</head>

<body>

<iframe id="headFrame" src="head.jsp" frameborder="0" scrolling="no">
</iframe>
</body>
</html>


    <div style="position: relative;width: 75%;float: left;">
        <div>
            <img src="img/onePic.jpeg" border="0" alt="OnePic" usemap="#onepicture" width="1056px;">
        </div>
        <div class="smalimage">
            <img src="img/地图.png" width="30px">
        </div>
    </div>

    <map name="onepicture" ng-controller="MapCtrl">

        <area ng-repeat="k in mmap" shape="circle" coords="{{k.X}},{{k.Y}},8" ng-click="showDetails(k.id)" target="_blank">

        <%--<area shape="circle" coords="230,437.5,10" onclick="showdetails(this,'东兰苑')"  target="_blank">--%>
    </map>


<div id="right_nav">
    <div class="panel-group" id="accordion" >


        <div class="panel panel-info" ng-repeat="x in Data" ng-cloak>
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion"
                       href="#co{{x.organName}}" id="{{x.id}}">
                       {{x.organName}}
                    </a>
                </h4>
            </div>
            <div id="co{{x.organName}}" class="panel-collapse collapse">
                <div class="panel-body" ng-repeat="s in x.organs">
                    <%--<a onclick="sImage('19.5%','31%')">ceshi</a><br>--%>
                    <a id="{{s.id}}" ng-click="showImage(s.id);showDetails(s.id)">{{s.value}}</a><br>
                </div>
            </div>
        </div>



        <div class="panel panel-info" id="ddd">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion"
                       href="#collapseThree">
                        居委会
                    </a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse">
                <div>

                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#ddd"
                            href="#collapseFour">
                                街道
                            </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body">
                                古美一村
                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>



        <%--<div class="panel panel-warning">--%>
            <%--<div class="panel-heading">--%>
                <%--<h4 class="panel-title">--%>
                    <%--<a data-toggle="collapse" data-parent="#accordion"--%>
                       <%--href="#collapseFour">--%>
                        <%--助餐点--%>
                    <%--</a>--%>
                <%--</h4>--%>
            <%--</div>--%>
            <%--<div id="collapseFour" class="panel-collapse collapse">--%>
                <%--<div class="panel-body">--%>
                    <%--Nihil anim keffiyeh helvetica, craft beer labore wes anderson--%>
                    <%--cred nesciunt sapiente ea proident. Ad vegan excepteur butcher--%>
                    <%--vice lomo.--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="panel panel-default">--%>
            <%--<div class="panel-heading">--%>
                <%--<h4 class="panel-title">--%>
                    <%--<a data-toggle="collapse" data-parent="#accordion"--%>
                       <%--href="#collapseFive">--%>
                        <%--邻里中心--%>
                    <%--</a>--%>
                <%--</h4>--%>
            <%--</div>--%>
            <%--<div id="collapseFive" class="panel-collapse collapse">--%>
                <%--<div class="panel-body">--%>
                    <%--<a>平南居</a><br>--%>
                    <%--<a onclick="showImage('19.5%','31%')">东兰苑</a><br>--%>
                    <%--<a onclick="showImage('60.3%','33.5%')">古龙汇</a>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>


</div>


<div id="details" class="pop">
    <div class="closeimg"><img src="img/guanbi.png" onclick="closeimg()"></div>
    <li class="box_related">
        <a>
            <img id="imgOrg" src="https://api.eshimin.com/image/live/commercial/icons/3101120060005_icon_20150812_155519_88.jpg">
        </a>
        <a id="Tit">
            古美敬老院
        </a>
        <br>     地址：<label id="add">闵行区虹莘路2288弄</label><br>     咨询电话：<label id="phoneNum">(021)34174387</label><br>
        服务时间：<label id="serviceTime"></label><br>
    </li>
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

    function closeimg() {
        $("#details").hide();
    }
</script>





<script src="js/angular.min.js"></script>
<script src="js/pageJs/onepicture.js"></script>

</body>
</html>
