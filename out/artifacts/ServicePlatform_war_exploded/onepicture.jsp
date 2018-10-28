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

            }
            .pop{

                height:250px;
                width:23%;
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
                margin-right:20px;
                padding:3%;
                box-shadow: 0 6px 12px rgba(0,0,0,.175);
                margin-left: 0;
                margin-bottom: 40px;

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


        }
    </style>
</head>
<body>

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
            <img src="img/onepicture.jpeg" border="0" alt="OnePic" usemap="#onepicture" width="1056px;">
        </div>
        <div class="smalimage">
            <img src="img/地图.png" width="50px">
        </div>
    </div>

    <map name="onepicture">
        <area shape="circle" coords="657.5,481.25,10" onclick="showdetails(this,'古龙汇')"  target="_blank" title="古龙汇">
        <area shape="circle" coords="230,437.5,10" onclick="showdetails(this,'东兰苑')"  target="_blank" title="东兰苑">
    </map>


<div id="right_nav">
    <div class="panel-group" id="accordion">
        <div class="panel panel-danger">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion"
                       href="#collapseOne">
                        日间照料中心
                    </a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">

                    <a>平南日间照料中心</a>

                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion_1"
                               href="#collapseOne1_1">
                                日托站
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne1_1" class="panel-collapse collapse">
                        <div class="panel-body">
                            <a>平吉一村日托站</a><br>
                            <a>平吉二村日托站</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion"
                       href="#collapseTwo">
                        敬老院
                    </a>
                </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse">
                <div class="panel-body">
                    Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                    cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                    vice lomo.
                </div>
            </div>
        </div>
        <div class="panel panel-success">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion"
                       href="#collapseThree">
                        长者照护之家
                    </a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse">
                <div class="panel-body">
                    Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                    cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                    vice lomo.
                </div>
            </div>
        </div>
        <div class="panel panel-warning">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion"
                       href="#collapseFour">
                        助餐点
                    </a>
                </h4>
            </div>
            <div id="collapseFour" class="panel-collapse collapse">
                <div class="panel-body">
                    Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                    cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                    vice lomo.
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion"
                       href="#collapseFive">
                        邻里中心
                    </a>
                </h4>
            </div>
            <div id="collapseFive" class="panel-collapse collapse">
                <div class="panel-body">
                    <a>平南居</a><br>
                    <a onclick="showImage('19.5%','31%')">东兰苑</a><br>
                    <a onclick="showImage('60.3%','33.5%')">古龙汇</a>
                </div>
            </div>
        </div>
    </div>


</div>


<div id="details" class="pop">
    <li class="box_related">
        <a href="page5.jsp" target="_top">
            <img src="https://api.eshimin.com/image/live/commercial/icons/3101120060005_icon_20150812_155519_88.jpg">
        </a>
        <a href="page5.jsp" target="_top" id="Tit">
            古美敬老院
        </a>
        <br>     地址：闵行区虹莘路2288弄<br>     咨询电话：(021)34174387
    </li>
</div>

<script type="text/javascript">


    function showdetails(thisObj,k){
        var d = $(thisObj);
        var pos = d.offset();
        var t = pos.top + d.height(); // 弹出框的上边位置
        var l = pos.left + d.width();  // 弹出框的左边位置
        document.getElementById("Tit").innerHTML=k;
        $("#details").css({ "top": t, "left": l }).show();
    }

    function showImage(x,y) {
        $(".smalimage").css("top",y).css("left",x).show();

    }
</script>

</body>
</html>
