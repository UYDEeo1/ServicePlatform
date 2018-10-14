<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/9/19
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单</title>


    <style type="text/css">
        body{
            margin:0px;
            padding:0px;
        }
    </style>

    <style type="text/css">

        body{
            border: 1px solid #e6e6e6;
            width: 720px;/*内部整体宽度*/
            padding: 10px;

        }

        table{
            font-size: 14px !important;
        }

        table tr{
            height:44px !important;
        }

        table td.first{
            padding-top: 5px;
        }

        input[readonly="readonly"]{
            border: none !important;
        }




        .msg-success{
            line-height: 30px;
            margin-bottom: 20px;
            font-size: 14px;
            color:green;

            text-align: center;
            display: none;
            background-color: #F0F8FF;
        }

        div.pannel{
            line-height: 30px;
            margin-bottom: 15px;
            font-size: 15px;
            border-bottom: 1px solid  #e6e6e6;
            margin-left: 10px;
            margin-right: 10px;
        }

        .pannel .icon{
            background-color: #F3BE9C;
            float: left;
            height: 20px;
            left: 10px;
            margin-top: 5px;
            margin-bottom: 5px;
            margin-right:10px;
            width: 5px;
        }

        .pannel .title{
            width:100px;
            border-bottom: 2px solid  #F3BE9C;
            padding-bottom:10px;
        }

        #cancelMobileForm, #changeMobileForm, #bindMobileForm{
            display:none;
        }

        #nextStep3 {
            background-color: transparent !important;
            border: medium none !important;
            color: #fff !important;
            cursor: pointer !important;
            height: 32px !important;
            line-height: 32px !important;
            text-align: center !important;
            width: inherit !important;
        }

        form table div.tip {
            color: #999999;
            font-size: 13px !important;
            height: 20px;
            padding: 5px 0;
        }

        table{
            border-collapse: collapse;
            width:90%;
            padding:50px;
            margin-top:50px;
            margin-left:30px;
        }
        table th,td{
            /*border: 1px solid #39b8ef;*/
            height:40px;
            text-align: center;
            padding:10px;
        }
        table tr:nth-of-type(odd){
            background-color: #F3BE9C;
        }
        table tr:nth-of-type(even){
            background-color: #eea77c;
        }
        button{
            cursor: pointer;
        }
        .buttn{
            height: 40px;
            width:100px;
            background-color: #ffbf9c;
            border-radius: 1px;
        }

    </style>
</head>
<body>

<div class="pannel">
    <div class="title">
        <div class="icon">

        </div>
        我的订单
    </div>
</div>

<p class="msg-success">

</p>


<table>
    <thead>
    <tr style="border-bottom: 1px solid #b47d5b;">
        <th>商品名称</th>
        <th>公司</th>
        <th>时间</th>
        <th>处理状态</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>饮食制作</td>
        <td>乐健公司</td>
        <td>2018/07/07 12:00:00</td>
        <td>未处理</td>
    </tr>

    <tr>
        <td>饮食制作</td>
        <td>乐健公司</td>
        <td>2018/07/07 12:00:00</td>
        <td>已处理</td>
    </tr>

    <tr>
        <td>饮食制作</td>
        <td>乐健公司</td>
        <td>2018/07/07 12:00:00</td>
        <td>未处理</td>
    </tr>



    </tbody>
</table>


</body>
</html>
