
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>社会涉老机构注册</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet" type="text/css">
    <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">


    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.5"></script>
    <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <%--<link href="/css/animate.min.css" rel="stylesheet">--%>
    <link href="css/style.min.css?v=4.0.0" rel="stylesheet">
    <link href="css/common_table.css" rel="stylesheet">
    <link href="css/base.css" rel="stylesheet">


    <style>
        .wrapper-content {
            padding: 20px;
        }
        .ibox {
            clear: both;
            margin-bottom: 25px;
            margin-top: 0;
            padding: 0;
        }
        .ibox-title {
            -moz-border-bottom-colors: none;
            -moz-border-left-colors: none;
            -moz-border-right-colors: none;
            -moz-border-top-colors: none;
            background-color: #fff;
            border-color: #e7eaec;
            -webkit-border-image: none;
            -o-border-image: none;
            border-image: none;
            border-style: solid solid none;
            border-width: 4px 0 0;
            color: inherit;
            margin-bottom: 0;
            padding: 14px 15px 7px;
            min-height: 48px;
        }
        .ibox-title h5 {
            display: inline-block;
            font-size: 16px;
            margin: 0 0 7px;
            padding: 0;
            text-overflow: ellipsis;
            float: left;
        }
        .ibox-tools {
            display: inline-block;
            float: right;
            margin-top: 0;
            position: relative;
            padding: 0;
        }
        .ibox-content {
            background-color: #fff;
            color: inherit;
            padding: 15px 20px 20px;
            border-color: #e7eaec;
            -webkit-border-image: none;
            -o-border-image: none;
            border-image: none;
            border-style: solid solid none;
            border-width: 1px 0;
        }
        .hr-line-dashed {
            border-top: 1px dashed #e7eaec;
            color: #fff;
            background-color: #fff;
            height: 1px;
            margin: 20px 0;
        }
    </style>
</head>







<body style="background-color: #f3f3f4;">

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
            height: 78px;
            min-width: 1268px;
            width: 100%;
            margin: 0 auto;
            overflow: hidden;
            display: block;
        }

    </style>


</head>

<body>

<iframe id="headFrame" src="head.jsp" frameborder="0" scrolling="no">
</iframe>
</body>
</html>


<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>社会涉老服务机构 <small>注册</small></h5>
                    <%--<div class="ibox-tools">--%>
                        <%--<a class="collapse-link">--%>
                            <%--<i class="fa fa-chevron-up"></i>--%>
                        <%--</a>--%>
                        <%--<a class="close-link">--%>
                            <%--<i class="fa fa-times"></i>--%>
                        <%--</a>--%>
                    <%--</div>--%>
                </div>
                <div class="ibox-content">
                    <form method="get" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">手机号</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" value="" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">验证码</label>
                            <div class="col-sm-2">
                                <input placeholder="请输入收到的验证码" type="text" class="form-control">
                            </div>
                            <div class="col-xs-1">
                                <input type="button" onclick="" class="btn btn-primary" value="获取验证码" id="sendCode">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">邮箱</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" value="" />
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">名称</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" value="" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">简介</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" value="" />
                            </div>
                        </div>
                        <%--<div class="hr-line-dashed"></div>--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">席位数</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" value="" />
                            </div>
                        </div>
                        <%--<#--<div class="hr-line-dashed"></div>-->--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">服务时间</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" value="" />
                            </div>
                        </div>
                        <%--<#--<div class="hr-line-dashed"></div>-->--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">地址</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" value="" />
                            </div>
                        </div>
                        <%--<#--<div class="hr-line-dashed"></div>-->--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">联系方式</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" value="" />
                            </div>
                        </div>
                        <%--<#--<div class="hr-line-dashed"></div>-->--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">网站</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" value="" />
                            </div>
                        </div>
                        <%--<#--<div class="hr-line-dashed"></div>-->--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">照片</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" value="" />
                            </div>
                        </div>
                        <%--<#--<div class="hr-line-dashed"></div>-->--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">服务信息</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" value="" />
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-primary" type="submit">提交</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>

</body>

</html>
