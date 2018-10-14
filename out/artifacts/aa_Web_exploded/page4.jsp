<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>社区生活</title>

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

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <link href="css/society_css.css" rel="stylesheet" type="text/css" />
    <script src="js/UNIC-GBK.js" type="text/javascript" ></script>

    <style type="text/css">
        .container .so_left{
            float: left;
            width:710px;

        }

        .container .so_right{
            float: left;
            width:290px;
            left:750px;
        }

        .so_left .society_info{
            height: 350px;
            width: 220px;
            float: left;
            left:0px;
            padding: 10px;
            border: 5px solid #0095da;
        }

        p.title{
            background: url("img/inzx.png") no-repeat;
            width:310px; height:20px;
            font-family:微软雅黑;
            font-size:17px;
            color:#00a6f3;
            text-indent:55px;
            margin-bottom:15px;
            display:inline;
            float:left;
        }

        /*我的社区*/
        .society_search{
            width: 310px;
            height: 186px;
            float: left;
            overflow:hidden;
            font-family:微软雅黑;
            font-size:14px;
            line-height:30px;
        }

        .society_search div{
            margin:10px 0;
        }

        .society_search div p{
            line-height: 30px;
            text-indent: 1em;
            *word-break: break-all;
            word-break: break-all;
            margin: 8px 0px;
        }

        .society_search div p.link a{
            float:right;
            right:0;
            text-align: right;
            color: #00a6f3;
            text-decoration: underline;
        }

        a:hover{
            text-decoration: underline;
        }

        /*社区服务*/
        .so_left  .society_service{
            width: 410px;
            height: 200px;
            float: left;
            margin-left: 20px;
        }

        .society_service ul{
            margin: 10px 0px;
        }

        .society_service ul li{
            float: left;
            height: 80px;
            width: 133px;
            border: 1px solid #e6e6e6;
            text-align: center;
        }

        .society_service ul li:hover{
            cursor: pointer;
            border: 1px solid #60c8f8;
        }

        .society_service ul li img{
            margin-top: 5px;
        }

        .society_service ul li p{
            text-align: center;
            font-size: 16px;
        }

        .society_service ul li:nth-child(even){
            background-color:#fbfbfb;
        }

        .society_style ul li {
            float:left;
            width: 156px;
            margin: 0px 8px 0px 0px;
        }

        .society_style ul li img{
            width:156px;
            height:106px;
        }

        /*社区服务信息*/
        .society_service2 {
            width:1008px; height:auto; margin:0 auto; margin-top:0px;
        }

        .society_service2_box {
            width:auto; height:330px; float:left;
            border-top:1px solid #dedede;border-right:1px solid #dedede;border-bottom:1px solid #dedede;border-left:1px solid #dedede;
            margin-right: 0px; margin-top:15px;
        }

        .addborder {
            border-left:1px solid #dedede;
        }

        .society_service2_box p {
            width:332px; height:42px;
            background-color:#eeeeee;
            line-height:42px; font-family:微软雅黑; font-size:16px; color:#2f2f2f;
        }

        .society_service2_box p img {
            float:left; width:30px; height:24px; margin-left:15px;
            margin-right:9px; margin-top:8px; display:inline;
        }

        .box_li {
            width:332px; height:80px; font-family:宋体; font-size:13px;
            color:#747474;margin-top:12px; line-height:27px;overflow:hidden;
        }

        .box_li span {
            font-size:15px; color:#292929; font-family:微软雅黑;
        }

        .box_li img {
            width:99px; height:80px; float:left;margin-left:15px; margin-right:9px; display:inline;
        }

        .box_li img:hover {
            opacity: 0.6;
        }
        .society_service2_box2 {
            width:330px; height:80px; float:left;
        }

        .society_service2_box2  ul {
            list-style: square; color:#92b7f2; float:left;
        }

        .box2_li {
            width:330px; height:20px; line-height:20px; color:#92b7f2; font-family:微软雅黑;
            margin-left:35px; margin-top:12px; font-size:14px;
        }

        /*社区公告*/
        .society_notice{
            width:651px;
            height:186px;
            float:right;
            font-family:微软雅黑;
            font-size:14px;
        }

        .society_notice span{ display:block; text-align:right; }

        .society_notice span a{ color:#00a6f3; text-decoration: underline;}

        .society_notice p {
            width:651px;
        }

        .society_notice ul{
            /*list-style:  inside;*/
            /*margin: 10px 0px;*/
            list-style: square;
            color:#92b7f2;
            float:left;
        }

        .society_notice ul li{
            /*line-height: 31px;
            font-size: 13px;
            border-bottom: 1px dotted gray;
            white-space:nowrap;
            text-overflow:ellipsis;
            -o-text-overflow:ellipsis;
            overflow:hidden;
            */
            width:620px; margin-left:25px; height:31px; line-height:31px;
        }

        .society_notice li span {
            float:right; color:#919191;font-size: 12px;
        }

        .society_notice ul li:hover{
            cursor: pointer;
        }

        .society_notice ul li a{
            text-decoration: none;
            color: black;
        }

        .society_notice ul li a:hover{
            text-decoration: underline;
        }

        /*便民服务*/
        #xuexiao {
            float:left; text-align:center; cursor:pointer;
        }

        #xuexiao1 {
            /* color:#1d51a3; background:url(/images/dicService/lif.png) no-repeat; */ width:124px; height:38px;
        }

        #kecheng {
            float:left; text-align:center;cursor:pointer;
        }

        #kecheng1 {
            color:black ; background:#fafafa ;width:124px; height:37px;
        }

        #weizhang {
            float:left; text-align:center; cursor:pointer;
        }

        #weizhang1 {
            /*color:#1d51a3; background:url(/images/dicService/lif.png) no-repeat; */ width:124px; height:38px;
        }

        #lukuang {
            float:left; text-align:center;cursor:pointer;
        }

        #lukuang1 {
            color:black ; background:#fafafa ;width:124px; height:37px;
        }

        .search-img {
            background :url("img/search_img.png") no-repeat;
            border: 1px solid #dedede;
            height: 45px;
            background-color: #eeeeee;
            float:left;
            width:100%;
            margin-bottom:20px;
        }

        .s-input {
            float:left;
            height: 32px;
            margin: 6px 0px 0px 110px;
            border: 1px solid #d8d8d8;
            border-bottom: 1px solid #ccc;
            padding: 2px;
            padding-left: 10px;
            width: 450px;
            background-color:#fff;
            outline:none;
        }

        .s-input:hover {
            border-bottom:1px solid #999 ;
            border-left:1px solid #999 ;
            border-top:1px solid #999 ;
        }

        .s-bt {
            background :url("img/search.png") no-repeat;
            height: 35px;
            width: 84px;
            cursor: pointer;
            list-style-type: none;
            float: left;
            margin-top: 5px;
            border: 1px solid #dedede;
            border-bottom: 0px;
            border-left: 0px;
        }

        .s-society-name {
            float:left;
            color: #fff;
            font-size: 18px;
            padding: 10px 0px 0px 50px;
        }

        .s-select {
            border: 1px solid #dedede;
            height: 35px;
            width: 80px;
            float: left;
            margin: 5px -110px 0px 110px;
            backgrond-color:#fff;
        }

        .s-select-img {
            width：16px;
            height:14px;
            float:left;
        }

        .s-option {
            height:45px;
            width:200px;
            border:1px solid #dedede;
        }

        .s-input-focus {
            border-left:1px solid #38f !important;
            border-bottom:1px solid #38f !important;
            border-top:1px solid #38f !important;
        }

        #bianminxinxi
        {
            padding: 0;
            margin: 10px 0 0 30px;
            list-style: disc;
        }

        #bianminxinxi li
        {
            height: 25px;
            line-height: 25px;
            padding-left: 0;
            color: #666666;
            font-size: 12px;
            font-family: Microsoft YaHei;
            cursor: pointer;
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


<script type="text/javascript">
    //获取登录用户
    function getLoginUser(){
        return 'eshimin04603655';
    }

    function getUserInfo(){
        var json ={};
        json.societyCode = '310112006';
        json.userName =  'eshimin04603655';
        json.real =  '0';
        return json;
    }

    /*更新iframe高度*/
    function refreshIframeHeight(iframe,height){
        $("#"+iframe).height(parseInt(height)+10);
    }

</script>

<div class="sheq">


    <div class="clear"></div>
    <div id="" class="search-img">
        <span id="society_name" class="s-society-name"><span id="county"> &nbsp&nbsp&nbsp古美</span>街道&nbsp&nbsp</span>
        <input id="s-input" name="" class="s-input" placeholder="请输入您想要的内容（社区服务商查找）"  autocomplete="off"  type="text">
        <li id="s-bt" name="" class="s-bt" ></li>
    </div>
    <div class="clear"></div>
    <div class="society_search">
        <p class="title">社区公告</p>
        <div>
            <p>
                <span>街道名称：</span><span id="societyName">古美路街道</span>
            </p>
            <p>
                <span>办事处地址：</span><span  id="address">平南路890号</span>
            </p>
            <p>
                <span>电话：</span><span id="phone"></span>
            </p>

        </div>
    </div>
    <div class="society_notice">
        <p class="title">公共信息
        </p>
        <ul id="notice_ul">
            <li>
                <span>2018-07-04</span>
                <a href="newsdetail.jsp" target="_top">&nbsp;&nbsp;上海平阳农贸市场经营管理有限公司招聘启事</a>
            </li>
            <li>
                <span>2018-07-04</span>
                <a href="newsdetail.jsp" target="_top">&nbsp;&nbsp;上海平阳农贸市场经营管理有限公司招聘启事</a>
            </li>
            <li>
                <span>2018-07-04</span>
                <a href="newsdetail.jsp" target="_top">&nbsp;&nbsp;上海平阳农贸市场经营管理有限公司招聘启事</a>
            </li>
            <li>
                <span>2018-07-04</span>
                <a href="newsdetail.jsp" target="_top">&nbsp;&nbsp;上海平阳农贸市场经营管理有限公司招聘启事</a>
            </li>

        </ul>
        <span ><a href="page5.jsp" target="_top">查看更多</a>
					</span>
    </div>
</div>
<div class="clear"></div>
<div class="society_service2">
    <div id="society_service2_list">

        <div class="society_service2_box">
            <p><img src="img/jiankang.png" />健康</p>
            <ul>
                <li class="box_li">
                    <a href="page5.jsp" target="_top">
                        <img src="https://api.eshimin.com/image/live/commercial/icons/G20030101_icon_20140421_110655_89.jpg">
                    </a>
                    <a href="page5.jsp" target="_top">
                        <span>古美社区卫生服务中心</span>
                    </a>
                    <br>     地址：闵行区龙茗路668号<br>     咨询电话：(021)54165569
                </li>

                <li class="box_li">
                    <a href="page5.jsp" target="_top">
                        <img src="https://api.eshimin.com/image/live/commercial/icons/G20030101_icon_20140421_110655_89.jpg">
                    </a>
                    <a href="page5.jsp" target="_top">
                        <span>古美社区卫生服务中心</span>
                    </a>
                    <br>     地址：闵行区龙茗路668号<br>     咨询电话：(021)54165569
                </li>
            </ul>
            <div class="society_service2_box2">
                <ul>
                    <li class="box2_li">
                        <a href="page5.jsp" target="_top">上海市闵行区妇幼保健院</a>
                    </li>
                    <li class="box2_li">
                        <a href="page5.jsp" target="_top">上海市闵行区妇幼保健院</a>
                    </li>
                    <li class="box2_li">
                        <a href="page5.jsp" target="_top">上海市闵行区妇幼保健院</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="society_service2_box">
            <p><img src="img/wenhua.png" />文化</p>
            <ul>
                <li class="box_li">
                    <a href="page5.jsp" target="_top">
                        <img src="https://api.eshimin.com/image/live/commercial/icons/G20030201_icon_20140421_110949_65.jpg">
                    </a>
                    <a href="page5.jsp" target="_top">
                        <span>古美社区文化活动中心</span>
                    </a>
                    <br>     地址：闵行区平阳路256号　<br>     咨询电话：(021)54167923
                </li>

                <li class="box_li">
                    <a href="page5.jsp" target="_top">
                        <img src="https://api.eshimin.com/image/live/commercial/icons/G20030201_icon_20140421_110949_65.jpg">
                    </a>
                    <a href="page5.jsp" target="_top">
                        <span>古美社区文化活动中心</span>
                    </a>
                    <br>     地址：闵行区平阳路256号　<br>     咨询电话：(021)54167923
                </li>

            </ul>
            <div class="society_service2_box2">
                <ul>
                    <li class="box2_li">
                        <a href="page5.jsp" target="_top">古美社区学校平南新村一居委教学点</a>
                    </li>
                    <li class="box2_li">
                        <a href="page5.jsp" target="_top">古美社区学校平南新村一居委教学点</a>
                    </li>
                    <li class="box2_li">
                        <a href="page5.jsp" target="_top">古美社区学校平南新村一居委教学点</a>
                    </li>


                </ul>
            </div>
        </div>

        <div class="society_service2_box">
            <p><img src="img/yanglao.png" />养老</p>
            <ul>
                <li class="box_li">
                    <a href="page5.jsp" target="_top">
                        <img src="https://api.eshimin.com/image/live/commercial/icons/3101120060005_icon_20150812_155519_88.jpg">
                    </a>
                    <a href="page5.jsp" target="_top">
                        <span>平阳敬老院</span>
                    </a>
                    <br>     地址：闵行区平阳路1225号<br>     咨询电话：(021)34174387
                </li>

                <li class="box_li">
                    <a href="page5.jsp" target="_top">
                        <img src="https://api.eshimin.com/image/live/commercial/icons/3101120060005_icon_20150812_155519_88.jpg">
                    </a>
                    <a href="page5.jsp" target="_top">
                        <span>平阳敬老院</span>
                    </a>
                    <br>     地址：闵行区平阳路1225号<br>     咨询电话：(021)34174387
                </li>

            </ul>
            <div class="society_service2_box2">
                <ul>
                    <li class="box2_li">
                        <a href="page5.jsp" target="_top">古美老年人日间照料中心</a>
                    </li>
                    <li class="box2_li">
                        <a href="page5.jsp" target="_top">古美老年人日间照料中心</a>
                    </li>
                    <li class="box2_li">
                        <a href="page5.jsp" target="_top">古美老年人日间照料中心</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="society_service2_box">
            <p><img src="img/banshi.png" />办事</p>
            <ul>
                <li class="box_li">
                    <a href="page5.jsp" target="_top">
                        <img src="https://api.eshimin.com/image/live/commercial/icons/G20030001_icon_20140714_150214_92.jpg">
                    </a>
                    <a href="page5.jsp" target="_top">
                        <span>古美路街道社区事务受理中心</span>
                    </a>
                    <br>     地址：闵行区古龙路1139号<br>     咨询电话：(021)54163600
                </li>
            </ul>
            <div class="society_service2_box2">
                <ul>
                </ul>
            </div>
        </div>

        <div class="society_service2_box">
            <p><img src="img/shenghuo.png" />生活</p>
            <ul>
                <li class="box_li">
                    <a href="page5.jsp" target="_top">
                        <img src="https://api.eshimin.com/image/live/commercial/icons/G20030002_icon_20140421_144249_8.jpg">
                    </a>
                    <a href="page5.jsp" target="_top">
                        <span>古美路街道市民公共服务和管理中心</span>
                    </a>
                    <br>     地址：闵行区平阳路141号—143<br>     咨询电话：021
                </li>
            </ul>
            <div class="society_service2_box2">
                <ul>
                    <li class="box2_li">
                        <a href="page5.jsp" target="_top">科普公园公厕</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="society_service2_box">
            <p><img src="img/jiazheng.png" />党建</p>
            <ul>
            </ul>
            <div class="society_service2_box2">
                <ul>
                </ul>
            </div>
        </div>

        <div class="society_service2_box">
            <p><img src="img/jiazheng.png" />其他</p>
            <ul>
            </ul>
            <div class="society_service2_box2">
                <ul>
                </ul>
            </div>
        </div>

    </div>
</div>
<div class="clear"></div>






































</div>
<div class="clear"></div>
<!-- <div class="society_weibo">
          <p class="title">社区微博</p>
          <div>
              <iframe width="100%" height="345" class="share_self"  frameborder="0" scrolling="no" src="http://widget.weibo.com/weiboshow/index.php?language=&width=0&height=365&fansRow=2&ptype=1&speed=300&skin=1&isTitle=0&noborder=0&isWeibo=1&isFans=0&uid=3860508786&verifier=826f0ad7&dpc=1"></iframe>
          </div>
      </div>
-->




<!DOCTYPE html>
<html>
<head>
    <title>底部栏</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">

    <link type="text/css" rel="stylesheet"  href="css/common.css" />
    <script src="/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>
    <style type="text/css">

        .bottom {
            background: url("/images/foot/index2.png") repeat-x scroll 0 0 #fff;
            height: auto;
            margin-top: 15px;
            padding-top: 20px;
            padding-bottom: 20px;
            text-align: center;
            min-width: 1268px;
            width: 100%;
            line-height: 30px;
            font-size: 14px;
            margin:0 auto;
            display: block;
        }


        .bottom a {
            margin: 0 5px;
            border: 0 none;
            color: #454545;
            text-decoration: none;
        }


        #links{
            margin: 0 auto;
            width: 400px;
            list-style: none outside none;
            /* display:none; */

        }

        .bottom li {
            display: inline;
            float: left;
            height: 40px;
            margin-left: 3px;
            text-align: center;
            width: auto;
        }

        .bottom li img{
            height:40px;
        }

        .bottom .help-link{
            text-align: center;
            font-size: 14px;
            margin-top:8px;
        }

        .help-link a:hover{
            color:green;
        }

        .foot-l{
            float:left;
            width:650px;
            height:90px;
            margin-left:150px;
        }

        .foot-r{
            float:left;
            height:90px;
            margin-left:10px;
            display:none;
        }

        .foot-r img{
            width:70px;
            height:70px;
            display:block;
            margin-left:5px;
        }

        .foot-r .foot-left{
            float:left;
            width:80px;
        }

        .foot-r .foot-right{
            float:left;
            width:80px;
            margin-left:10px;
        }

        .foot-r span{
            font-size:13px;
            line-height:20px;
            margin:0px;
            padding:0px;
            display:block;
        }

        .special-link:hover{
            color:#454545 !important;
            cursor: default !important;
        }
    </style>
</head>
<body >
<div class="bottom">
    <div style="width:1000px;margin:0 auto;">
        <div class="foot-l">
            <p class="help-link">
                <a href="/pages/general/index.jsp?type=type1" target="_blank">关于我们</a>|
                <a href="/pages/general/index.jsp?type=type2" target="_blank">联系我们</a>|
                <a href="/pages/general/index.jsp?type=type3" target="_blank">服务协议</a>|
                <a href="http://open.eshimin.com/" target="_blank">开放平台</a>|
                <a href="/pages/general/index.jsp?type=type5" target="_blank">版权声明</a>|
                <a href="/pages/general/index.jsp?type=type6" target="_blank">友情链接</a>|
                <a href="http://weibo.com/shiminyun" target="_blank">新浪微博</a>|
                <a href="javascript:void(0);"  id="weixin-link">微信</a>


            </p>

            <p style="text-align: center;font-size: 12px; margin-top:0px; line-height: 25px;">

                <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010802001464"
                   style="display:inline-block;text-decoration:none;line-height:20px;">
                    <img src="/images/foot/beian.png" style="float:left;margin-right:5px;"/>
                    沪公网安备 31010802001464号
                </a>
                建议您使用Chrome或IE8版本及以上浏览器
                <br/>
                Copyright   2003-2015 eshimin.com. All rights reserved. | ICP备：<a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备10033695号</a>
            </p>

        </div>
        <div class="foot-r">
            <div class="foot-left">
                <img src="/images/foot/qrcode_for_smy.jpg">
                <span>市民云微信</span>
            </div>
            <div class="foot-right">
                <img src="/images/foot/qrcode_for_smxx.jpg">
                <span>市民信箱微信</span>
            </div>


        </div>

        <div style="clear:both;">
        </div>
    </div>

    <ul id="links">



        <li style="display: none;">
            <a href="http://www.zx110.org/picp?sn=310108100040975" target="_blank"
               style="zoom:1;height:52px;position:relative;text-decoration:none; display:inline-block;">
                <img src="/images/foot/picp_bg2.png" alt="沪公网备" border="0"/>
            </a>
        </li>
        <li style="width: 70px;">
        </li>
        <%--<li><a href="http://www.shjbzx.cn/" target="_blank"><img src="/images/foot/img5.png" /></a></li>--%>
        <%--<li><a href="https://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&entyId=1u2xwmwzpxrk6u2rvor2928au92degmyr8rxc2ylsor8c2d" target="_blank"><img src="/images/foot/shgs.gif" /></a></li>--%>
    </ul>

    <div class="clear_float"></div>
</div>

<div class="clear_float"></div>


<script type="text/javascript">
    $(function(){
        $("#weixin-link").on("mouseover",function(){
            $(".foot-r").fadeIn("slow");
        }).on("mouseout",function(){
            $(".foot-r").fadeOut("slow");
        });
    });
</script>

</body>
</html>

</body>
</html>
