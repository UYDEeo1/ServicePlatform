<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/6/30
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上海动态</title>
    <link rel="icon" href="http://www.smmail.cn/favicon.ico?1234" type="image/x-icon" />
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery-migrate-1.1.1.min.js" type="text/javascript"></script>

    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <script src="js/bootstrap.min.js" type="text/javascript"></script>

    <link href="css/jeesite.min.css" type="text/css" rel="stylesheet" />

    <link href="css/style.min.css" type="text/css" rel="stylesheet" />
    <script src="js/script.min.js" type="text/javascript"></script>

    <style type="text/css">
        * {
            padding: 0px;
            margin: 0px;
        }

        ul {
            list-style: none;
        }

        body {
            font-family: 宋体, 微软雅黑, Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 25px;
            color: #454545;
        }

        a {
            text-decoration: none;
            border: 0;
            color: #141414;
        }

        img {
            border: 0;
        }

        .clear {
            clear: both;
        }



        .title-p {
            height: 40px;
            background:
                    url(http://218.78.214.31:7001/NewMailSh/smmail/images2014/smrd.png)
                    bottom left no-repeat;
            text-indent: 10px;
            font-family: 微软雅黑;
            font-size: 17px;
            color: #181818;
        }

        .shlb {
            width: 638px;
            height: auto;
            float: right;
            overflow: hidden;
            margin-left: 15px;
        }

        .shlb .shdt_ul {
            width: 620px;
            height: auto;
            float: left;
            margin-left: 10px;
            display: inline;
        }

        .shlb .shdt_ul li {
            overflow: hidden;
            width: 620px;
            border-bottom: 1px dotted #cacaca;
            font-family: Microsoft YaHei;
            color: #5e5e5e;
            font-size: 14px;
            margin-top: 10px;
            padding-bottom:10px;
            height:80px;
        }

        .shlb .shdt_list_left{
            width:160px;
            float:left;
            overflow: hidden;
        }

        .shlb .shdt_list_right{
            width:440px;
            float:left;
            margin-left:10px;
            overflow: hidden;
        }

        .shlb .shdt_list_left img{
            width: 140px;
            height: 80px;
            display: inline;
        }

        .shlb .shdt_list_right .shdt_title{
            line-height:30px;
            margin-bottom:0px;
            font-size:15px;
            color: black;
            overflow: hidden;
        }

        .shlb .shdt_list_right .shft_content{
            height:28px;
            line-height: 28px;
            font-size:13px;
            font-family: Microsoft YaHei;
            overflow: hidden;
        }

        .shlb p.shdt_list_title{
            line-height:25px;
            height:25px;
            margin-bottom:0px;
            font-size:15px;
            color: black;
            overflow: hidden;
        }

        .shlb div.shdt_list_content{
            min-height:22px;
            line-height: 22px;
            font-size:13px;
            font-family: Microsoft YaHei;
            overflow: hidden;
            padding:0px 10px;
            height:44px;
        }

        .pagination{
            font-family: 微软雅黑,Arial, Helvetica, sans-serif;
            font-size: 14px !important;
        }

        .aaaa {
            float: left;
            text-align: center;
            width: 600px;
            margin-top: 20px;
            font-family: Microsoft YaHei;
            font-size: 18px;
        }
    </style>


</head>
<body>

<div class="shlb">
    <p class="title-p">古美动态</p>

    <ul class="shdt_ul">

        <li>
            <div class="shdt_list_left">
                <a target="_blank">
                    <img src="/img/n2.jpg" />
                </a>
            </div>

            <div class="shdt_list_right">
                <div class="shdt_title">
                    <a target="_blank" href="newsdetail.jsp">
                        <span style=" margin-bottom:10px;">街道领导走访慰问社区单位</span>
                    </a>
                </div>

                <div class="shft_content">
                    慰问社区单位
                </div>
            </div>

            <div class="clear"></div>
        </li>

        <li>
            <div class="shdt_list_left">
                <a target="_blank">
                    <img src="/img/n2.jpg" />
                </a>
            </div>

            <div class="shdt_list_right">
                <div class="shdt_title">
                    <a target="_blank" href="newsdetail.jsp">
                        <span style=" margin-bottom:10px;">街道领导走访慰问社区单位</span>
                    </a>
                </div>

                <div class="shft_content">
                    慰问社区单位
                </div>
            </div>

            <div class="clear"></div>
        </li>


        <li>
            <div class="shdt_list_left">
                <a target="_blank">
                    <img src="/img/n2.jpg" />
                </a>
            </div>

            <div class="shdt_list_right">
                <div class="shdt_title">
                    <a target="_blank" href="newsdetail.jsp">
                        <span style=" margin-bottom:10px;">街道领导走访慰问社区单位</span>
                    </a>
                </div>

                <div class="shft_content">
                    慰问社区单位
                </div>
            </div>

            <div class="clear"></div>
        </li>

        <li>
            <div class="shdt_list_left">
                <a target="_blank">
                    <img src="/img/n2.jpg" />
                </a>
            </div>

            <div class="shdt_list_right">
                <div class="shdt_title">
                    <a target="_blank" href="newsdetail.jsp">
                        <span style=" margin-bottom:10px;">街道领导走访慰问社区单位</span>
                    </a>
                </div>

                <div class="shft_content">
                    慰问社区单位
                </div>
            </div>

            <div class="clear"></div>
        </li>

        <li>
            <div class="shdt_list_left">
                <a target="_blank">
                    <img src="/img/n2.jpg" />
                </a>
            </div>

            <div class="shdt_list_right">
                <div class="shdt_title">
                    <a target="_blank" href="newsdetail.jsp">
                        <span style=" margin-bottom:10px;">街道领导走访慰问社区单位</span>
                    </a>
                </div>

                <div class="shft_content">
                    慰问社区单位
                </div>
            </div>

            <div class="clear"></div>
        </li>


    </ul>

    <div class="clear"></div>
    <div class="pagination"><ul>
        <li class="disabled"><a href="javascript:">&#171; 上一页</a></li>
        <li class="active"><a href="javascript:">1</a></li>
        <li><a href="javascript:" onclick="page(2,8);">2</a></li>
        <li><a href="javascript:" onclick="page(3,8);">3</a></li>
        <li><a href="javascript:" onclick="page(4,8);">4</a></li>
        <li><a href="javascript:" onclick="page(5,8);">5</a></li>
        <li><a href="javascript:" onclick="page(6,8);">6</a></li>
        <li><a href="javascript:" onclick="page(7,8);">7</a></li>
        <li><a href="javascript:" onclick="page(8,8);">8</a></li>
        <li class="disabled"><a href="javascript:">...</a></li>
        <li><a href="javascript:" onclick="page(10,8);">10</a></li>
        <li><a href="javascript:" onclick="page(2,8);">下一页 &#187;</a></li>
        <li class="disabled controls"><a href="javascript:">当前 <input type="text" value="1" onkeypress="var e=window.event||this;var c=e.keyCode||e.which;if(c==13)page(this.value,8);" onclick="this.select();"/> / <input type="text" value="10" onkeypress="var e=window.event||this;var c=e.keyCode||e.which;if(c==13)page(1,this.value);" onclick="this.select();"/> 页，共 20 条</a><li>
    </ul>
        <div style="clear:both;"></div></div>
    <script type="text/javascript">
        function page(n, s) {
            location = "/cms/f/listShdt2014-More.html?pageNo="
                + n + "&pageSize=" + s;
        }
    </script>

</div>



</body>
</html>
