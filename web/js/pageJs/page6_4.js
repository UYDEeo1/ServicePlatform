/**
 * Created by jinsq on 2018/11/5.
 */


$(document).ready(function(){


    var table =$(".dataTables-example").dataTable(
        {
            "sPaginationType": "full_numbers",
            "bPaginite": true,
            "bInfo": true,
            "bSort": false,
            "bFilter": false, //搜索栏
            "bStateSave": true,
            "bProcessing": true, //加载数据时显示正在加载信息
            "bServerSide": true, //指定从服务器端获取数据
            "columns":[{},{
                data:"name"
            },{
                data:"organName"
            },{
                data:"time"
            }
            ],
            "columnDefs": [
                // 列样式
                {
                    "targets": [0], // 目标列位置，下标从0开始
                    "data": "id", // 数据列名
                    "render": function(data, type, full) { // 返回自定义内容
                        return"<input type='checkbox' name='id' value='"+data+"'/>";
                    }
                },

                // 增加一列删除和修改，同时将我们需要传递的数据传递到链接中
                {
                    "targets": [4], // 目标列位置，下标从0开始
                    "data": "id", // 数据列名
                    "render": function(data, type, full) { // 返回自定义内容
                        return "<button id='"+data+"' onclick='delete_shop("+data+")'>删除</button>";
                    }
                }
            ],
            "sAjaxSource": "http://47.101.138.13:83/cart/getCartInfo",//这个是请求的地址
            "fnServerData": retrieveData,
            bLengthChange: false,
        });
    function retrieveData(url, aoData, fnCallback) {

        $.ajax({
            url: url,//这个就是请求地址对应sAjaxSource
            data : {
                "iDisplayStart" : aoData.iDisplayStart,
                "iDisplayLength" : aoData.iDisplayLength,
                "iSortCol_0" : aoData.iSortCol_0,
                "sEcho" : aoData.sEcho,
                "sSortDir_0" : aoData.sSortDir_0,
                "token":getCookie("token")
            },
            type: 'GET',
            dataType: 'json',
            async: false,
            success: function (result) {
                fnCallback(result);//把返回的数据传给这个方法就可以了,datatable会自动绑定数据的
            },
            error:function(XMLHttpRequest, textStatus, errorThrown) {
                // alert("status:"+XMLHttpRequest.status+",readyState:"+XMLHttpRequest.readyState+",textStatus:"+textStatus);

            }
        });
    }
    // $('#search').click(function () {
    //     table.fnFilter();
    // });

    var oTable=$("#editable").dataTable(
    );
    oTable.$("td").editable("",{
        "callback":function(sValue,y){var aPos=oTable.fnGetPosition(this);oTable.fnUpdate(sValue,aPos[0],aPos[1])},
        "submitdata":function(value,settings){return{"row_id":this.parentNode.getAttribute("id"),
            "column":oTable.fnGetPosition(this)[2]}},"width":"90%","height":"100%"});

});



function getCookie(name)
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}


function delete_shop(Id) {
    $.ajax({
        url: "http://47.101.138.13:83/cart/delete",
        type: "get",
        data: {
            ids:Id
        },
        async:false,
        success: function (data) {
//                var result=eval("("+data+")");
//                 alert(JSON.stringify(data));
            if (data.success == false) {
                swal({
                    text:data.error,
                    icon:"error"
                });
            } else {
                swal({
                    text:"删除成功！",
                    icon:"success"
                });
                tableUpdate();

            }
        }
    });

}


function submit_shop() {



    var obj = document.getElementsByName("id");
    var check_val = [];
    for(var k in obj){
        if(obj[k].checked)
            check_val.push(obj[k].value);


    };
    $.ajax({
        url: "http://47.101.138.13:83/cart/saveInBook",
        type: "get",
        data: {
            token:getCookie("token"),
            bookIds_array:check_val
        },
        async:false,
        success: function (data) {
//                var result=eval("("+data+")");
//                 alert(JSON.stringify(data));
            if (data.success == false) {
                swal({
                    text:data.error,
                    icon:"error"
                });
            } else {
                swal({
                    text:"提交成功！",
                    icon:"success"
                });
                tableUpdate();

            }
        }
    });

}



function tableUpdate() {
    var start = $(".dataTables-example").dataTable().fnSettings()._iDisplayStart;
    var total = $(".dataTables-example").dataTable().fnSettings().fnRecordsDisplay();
    window.location.reload();
    if(total-start==1){
        if(start>0){
            $(".dataTables-example").dataTable().fnPageChange('previous',true);
        }
    }
}
