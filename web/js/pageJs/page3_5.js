/**
 * Created by jinsq on 2018/10/26.
 */

var app = angular.module('myInfo', []);
app.controller('pCtrl', function($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://101.132.76.252:83/file/getIntegral?token='+getCookie("token")
    }).then(function successCallback(response) {

        console.log(response);
        // alert(JSON.stringify(response.data.data))
        $scope.PPP = response.data.data;



    }, function errorCallback(response) {
        // 请求失败执行代码
    });

});


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
            "columns":[{
                data:"organ.name"
            },{
                data:"type"
            },{
                data:"data"
            },{
                data:"time"
            },{
                data:"moneyChange"
            }
            ],
            "sAjaxSource": "http://101.132.76.252:83/file/data",//这个是请求的地址
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





