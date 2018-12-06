<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/9/13
  Time: 09:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>



    <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet" type="text/css">
    <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/bootstrap-select.min.css" rel="stylesheet">
    <link href="css/jquery.searchableSelect.css" rel="stylesheet">
    <script src="js/jquery.min.js?v=2.1.4"></script>



    <script src="js/bootstrap.min.js?v=3.3.5"></script>
    <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="js/bootstrap-select.min.js"></script>
    <script src="js/bootstrap-dialog.js"></script>


    <script src="js/sweetalert.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/sweetalert.css">


    <script src="js/angular.min.js"></script>
    <script src="js/pageJs/page6_4.js"></script>



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
            margin-top:20px;
            margin-left:30px;
        }
        table th,td{
            /*border: 1px solid #39b8ef;*/
            height:40px;
            text-align: center;
            padding:10px;
            border:none!important;
        }
        table tr:nth-of-type(odd){
            background-color: #F3BE9C!important;
        }
        table tr:nth-of-type(even){
            background-color: #eea77c!important;
        }
        .pagination>li>a{
            color:#8c4126!important;
        }


        .pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover{
            background-color: #ff5000!important;
            border-color: #ff5000!important;
            color: #fff!important;
        }

        #DataTables_Table_0_info{
            padding-left: 30px;
            color: #423232;
        }
        .table-responsive{
            border:none!important;
        }

        button{
            cursor: pointer;
        }
        .buttn{
            height: 40px;
            width:100px;
            background-color: #ff5000;
            border-radius: 8px;
            color:#fff;
        }
        button:disabled{
            background-color: #d3d3d3;
        }

    </style>
    <script>
        setInterval(function(){
            var obj = document.getElementsByName("id");
            var check=0;
            for(var k in obj){
                if(obj[k].checked) {
                    document.getElementById("button").disabled="";
                    check = 1;
                }

            }
            if(check == 0)
            {
                document.getElementById("button").disabled="disabled";
            }
            else {
                document.getElementById("button").disabled="";
            }
        },200);

    </script>
</head>
<body>


<div class="pannel">
    <div class="title">
        <div class="icon">

        </div>
        购物车
    </div>
</div>


<p class="msg-success">

</p>



<div id="biaoge">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <%--<div class="ibox-title">--%>
                    <%--<h5>老人 <small>健康档案</small></h5>--%>
                    <%--<div class="ibox-tools">--%>
                    <%--<a class="collapse-link">--%>
                    <%--<i class="fa fa-chevron-up"></i>--%>
                    <%--</a>--%>
                    <%--<a class="close-link">--%>
                    <%--<i class="fa fa-times"></i>--%>
                    <%--</a>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <div class="ibox-content">

                        <div class="table-responsive">
                            <div class="table-responsive">
                                <table class="table table-striped dataTables-example text-nowrap text-nowrap">
                                    <thead>
                                    <tr style="border-bottom: 1px solid #eea77c;">
                                        <th></th>
                                        <th>商品名称</th>
                                        <th>公司</th>
                                        <th>时间</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody style="width: 100%;">

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>



<%--<table>--%>
    <%--<thead>--%>
    <%--<tr style="border-bottom: 1px solid #b47d5b;">--%>
        <%--<th>商品名称</th>--%>
        <%--<th>公司</th>--%>
        <%--<th>时间</th>--%>
        <%--<th></th>--%>
    <%--</tr>--%>
    <%--</thead>--%>
    <%--<tbody>--%>
    <%--<tr>--%>
        <%--<td>饮食制作</td>--%>
        <%--<td>XX公司</td>--%>
        <%--<td>2018/07/07 12:00:00</td>--%>
        <%--<td><button>取消预定</button></td>--%>
    <%--</tr>--%>

    <%--<tr>--%>
        <%--<td>饮食制作</td>--%>
        <%--<td>XX公司</td>--%>
        <%--<td>2018/07/07 12:00:00</td>--%>
        <%--<td><button>取消预定</button></td>--%>
    <%--</tr>--%>

    <%--<tr>--%>
        <%--<td>饮食制作</td>--%>
        <%--<td>XX公司</td>--%>
        <%--<td>2018/07/07 12:00:00</td>--%>
        <%--<td><button>取消预定</button></td>--%>
    <%--</tr>--%>



    <%--</tbody>--%>
<%--</table>--%>
<div style="margin-left: 500px;margin-top: 20px;"><button id="button" class="buttn" onclick="submit_shop()" disabled="disabled">确认订购</button></div>



</body>
</html>
