<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/19
  Time: 09:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>健康档案</title>
    <style>
        .title_right {
            background-color: #F3BE9C;
            width: 97%;
            line-height: 82px;
            font-size: 25px;
            text-align: left;
            text-indent: 30px;
            color: white;
            border-left: 1px solid #E2E2E2;
            border-right: 1px solid #E2E2E2;
        }
        .hr-line-dashed {
            border-top: 1px dashed #e7eaec;
            color: #fff;
            background-color: #fff;
            height: 1px;
            margin: 20px 0;
        }
        .control-label{
            line-height: 40px;
            padding-right: 40px;
        }


    </style>
</head>
<body>


<div class="title_right">健康档案</div>
<div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">血型：A</li>
        <li class="col-sm-2 control-label">失智情况：正常</li>
        <li class="col-sm-2 control-label">视力：一般障碍</li>

        <li class="col-sm-2 control-label">慢病: 糖尿病 高血压</li>

        <li class="col-sm-2 control-label">失能情况：洗澡</li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">药物反应: 无</li>
    </ul>
    <div class="hr-line-dashed"></div>
    <ul class="form-group">
        <li class="col-sm-2 control-label">恶性肿瘤史：<p>2016年，得了肿瘤A</p></li>
        <li class="col-sm-2 control-label">骨折史:<p>2015年，手骨折</p><p>脚骨折</p></li>
        <li class="col-sm-2 control-label">残疾情况: 无</li>

    </ul>
</div>

</body>
</html>
