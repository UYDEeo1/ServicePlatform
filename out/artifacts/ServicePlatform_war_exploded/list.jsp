<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/2
  Time: 09:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详情</title>

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

    <link  href="css/common.css" type="text/css" rel="stylesheet"  />
    <link  href="css/paginate.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37293556" charset="UTF-8"></script>
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.paginate.js" type="text/javascript"></script>

    <style type="text/css">

        body{
            border: 1px solid #e6e6e6;
            width: 977px;/*内部整体宽度*/
            padding: 10px;
            line-height: 60px;
            min-height: 300px;
        }

        .type_div{
            height: 60px;
        }

        .type_div .line {
            border-bottom:1px solid  #f0f0f0;
            width:100%;
            margin-top: 3px;
        }

        .type_div div{
            float: left;
        }

        .type_div ul{
            float: left;
            left:100px;
        }

        .type_div ul li{
            float: left;
            line-height: 40px;
            border: 1px solid #f0f0f0;
            margin: 9px 5px 5px 5px;
            padding:0px 10px;
            background-color: #f8f8f8;
        }

        .type_div ul li:hover{
            cursor: pointer;
            background-color: #fd9935;
        }

        .cm_item{
            border-bottom: 1px dashed #e6e6e6;
            padding-bottom: 10px;
            margin-bottom:10px;
            height: 210px;
        }

        .img_box{
            border: 1px solid #e6e6e6;
            width: 248px;
            height: 200px;
            float: left;
            left: 0px;
        }

        /*295*190*/
        .img_box img{
            height: 190px;
            width: 242px;
            margin: 5px 3px 5px 3px;
        }

        .cm_info{
            width: 450px;
            margin:0px 10px 0px 10px;
            float: left;
            left: 300px;
        }

        .cm_info p.cm_name{
            font-size: 15px;
            line-height: 30px;
            color:black;
        }

        .cm_info p.cm_name a:hover{
            color: red;
            cursor: pointer;
        }

        .cm_info p {
            margin-bottom: 7px;
            line-height: 30px;
            font-size: 13px;
            color:#747474;

        }

        .cm_info p span.label{

        }

        .cm_info p.text{
            max-height: 60px;
            overflow: hidden;
        }


        #commercial_list{
            min-height: 150px;
            margin-top: 10px;
        }

        /*分页条*/
        div.page_place{
            height: 35px;
            margin-top:15px;
        }

        .pageWraper{
            width: 100%;
        }

        /*社区服务分类*/
        .dic_service-group {
            display: inline-block;
            font-size: 13px;
            position: relative;
            vertical-align: middle;
            white-space: nowrap;
        }

        .dic_service-group .btn {
            background: none repeat scroll 0 0 #f7f7f7;
            border: 1px solid #dedede;
            box-shadow: 0 1px 0 rgba(255, 255, 255, 0.2) inset, 0 1px 2px rgba(0, 0, 0, 0.05);
            color: #4d4d4d;
            height: 32px;
            line-height: 32px;
            padding: 0 12px;
        }
        .dic_service-group > .btn + .btn {
            margin-left: -3px;
        }
        .dic_service-group > .btn:last-child {
            border-bottom-right-radius: 4px;
            border-top-right-radius: 4px;
        }
        .dic_service-group > .btn:first-child {
            border-bottom-left-radius: 4px;
            border-top-left-radius: 4px;
            margin-left: 0;
            margin-right: -5px;
        }
        .dic_service-group .current {
            background: none repeat scroll 0 0 #fd9935;
            color: #fff;
        }

        .dic_service-group a {
            outline: medium none;
            text-decoration: none;
        }

        .btn {
            background: none repeat scroll 0 0 #d9edb0;
            color: #7cae01;
            display: inline-block;
            height: 34px;
            line-height: 34px;
            padding: 0 34px;
        }

        .line {
            border-bottom:1px solid  #f0f0f0;
            width:100%;
            margin-top: 3px;
        }


    </style>


</head>
<body>


<div id="dic_service" class="dic_service-group">
    <a id="tabBtn_0" class="btn current"  href="javascript:void(0);" onclick="queryCommercialList('0','')">全部</a>
    <a class="btn">卫生健康</a>
    <a class="btn">文化教育</a>
    <a class="btn">居家养老</a>
    <a class="btn">网上办事</a>
    <a class="btn">生活服务</a>
</div>
<div class="line"></div>
<div class="clear_float"></div>


<div id="commercial_list">
    <div class="cm_item">
        <div class="img_box">
            <img src="img/yanglao.jpg">
        </div>
        <div class="cm_info">
            <p class="cm_name">
                <a href="organizationdetail.jsp">古美养老院</a>
            </p>

            <p class="text">
                <span class="label">服务内容：</span>
                古美社区是闵行区的东大门，位于中环线和外环线之间，东起虹梅路、南临沪闵路、西抵虹莘路、北依漕宝路，交通便捷，有着得天独厚的区位
            </p>

            <p>
                <span class="label">地址：</span>闵行区古龙路1139号 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="label">咨询电话：</span>(021)54163600
            </p>

            <p>
                <span class="label">评分：</span>5星
            </p>
        </div>

        <div class="clear_float"></div>
    </div>
    <div class="cm_item">
        <div class="img_box">
            <img src="img/yanglao.jpg">
        </div>
        <div class="cm_info">
            <p class="cm_name">
                <a href="organizationdetail.jsp">古美养老院</a>
            </p>

            <p class="text">
                <span class="label">服务内容：</span>
                古美社区是闵行区的东大门，位于中环线和外环线之间，东起虹梅路、南临沪闵路、西抵虹莘路、北依漕宝路，交通便捷，有着得天独厚的区位
            </p>

            <p>
                <span class="label">地址：</span>闵行区古龙路1139号 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="label">咨询电话：</span>(021)54163600
            </p>

            <p>
                <span class="label">评分：</span>5星
            </p>
        </div>

        <div class="clear_float"></div>
    </div>
</div>



<div class="clear_float"></div>

<div class="pageWraper">
    <div class="page_place" style="padding-left: 63.1095px;">
        <div id="page_place" class="jPaginate" style="padding-left: 67px;">
            <div class="jPag-control-back" style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216);">
                <a class="jPag-first">&nbsp;第一页&nbsp;</a>
            </div>
            <div style="overflow: hidden; width: 228px;">
                <ul class="jPag-pages" style="width: 418px;">
                    <li style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216);"><a>1</a></li><li style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216);"><a>2</a></li><li style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216);"><a>3</a></li><li style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216);"><a>4</a></li><li style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216);"><a>5</a></li><li style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216);"><a>6</a></li><li style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216);"><a>7</a></li><li style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216);"><a>8</a></li><li style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216);"><a>9</a></li><li style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216);"><a>10</a></li><li style="color: black; background-color: orange; border: 1px solid rgb(171, 171, 171);"><span class="jPag-current">11</span></li></ul>
            </div>
            <div class="jPag-control-front" style="color: rgb(104, 186, 100); background-color: rgb(240, 240, 240); border: 1px solid rgb(216, 216, 216); left: 299px;"><a class="jPag-last">最后一页</a>
            </div>
        </div>
    </div>
</div>


<div class="clear_float"></div>












</body>
</html>
