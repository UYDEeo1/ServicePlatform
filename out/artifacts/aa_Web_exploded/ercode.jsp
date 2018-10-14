<%--
  Created by IntelliJ IDEA.
  User: jinsq
  Date: 2018/7/26
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="http://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://static.runoob.com/assets/qrcode/qrcode.min.js"></script>
</head>
<body>

<input id="text" type="text" value="在此输入要生成的二维码的代码" style="width:80%" /><br/>
<div id="qrcode" style="width:100px; height:100px; margin-top:15px;"></div>
<script type="text/javascript">
    var qrcode = new QRCode(document.getElementById("qrcode"), {//生成的二维码大小
        width : 100,
        height : 100
    });
    function makeCode () {
        var elText = document.getElementById("text");
        if (!elText.value) {//判断要生成的二维码代码是否为空
            alert("Input a text");
            elText.focus();
            return;
        }
        qrcode.makeCode(elText.value);//生成二维码函数
    }
    makeCode();
    $("#text").
    on("blur", function () { //键盘事件
        makeCode();
    }).
    on("keydown", function (e) {
        if (e.keyCode == 13) {
            makeCode();
        }
    });
</script>


</body>
</html>
