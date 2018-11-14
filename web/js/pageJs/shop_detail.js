/**
 * Created by jinsq on 2018/10/24.
 */
var app = angular.module('myShop', []);

var IIId = "";
function GetQueryString(name)
{
    var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);//search,查询？后面的参数，并匹配正则
    if(r!=null)return  unescape(r[2]); return null;
}


IIId=GetQueryString("id");


app.controller('NavCtrl', function($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://47.101.138.13:83/goods/getTypes'
    }).then(function successCallback(response) {

        console.log(response);
        // alert(JSON.stringify(response.data.data))
        $scope.Data = response.data.data;

    }, function errorCallback(response) {
        // 请求失败执行代码
    });


    $scope.overdiv = function (xid) {
        document.getElementById(xid).style.display="block";
    }
    $scope.outdiv = function (xid) {
        document.getElementById(xid).style.display="none";
    }


});

app.controller('myController',["$scope", "$http",function($scope,$http) {
    // 分页组件 必须变量
    $scope.currentPage = 1; // 当前页 （请求数据）
    $scope.pageSize = 10; // 每页记录数 （请求数据）
    $scope.totalCount = 0; // 总记录数 （响应数据）
    $scope.totalPages = 0; // 总页数 （根据 总记录数、每页记录数 计算 ）
    $scope.shopId = 46;


    //加载上一页
    $scope.prev = function () {
        $scope.selectPage($scope.currentPage - 1,$scope.shopId);
    }
    //加载下一页
    $scope.next = function () {
        $scope.selectPage($scope.currentPage + 1,$scope.shopId);
    }
    //加载指定页
    $scope.selectPage = function (page,Id) {
        // page 超出范围
        if ($scope.totalPages != 0 && (page < 1 || page > $scope.totalPages)) {
            return;
        }


        // $('#content').html("");
        //发送请求

        $http({
            method: 'GET',
            // url: page + '.json',
            url:'http://47.101.138.13:83/goods/getProductByPage?type='+Id+'&iDisplay='+page,
            // params: {
            //     "iDisplay": page, // 页码
            //     // pageSize: $scope.pageSize, // 每页记录数
            //     "type":Id
            // }
        }).success(function (response, status, headers, config) {
            // 要在分页工具条显示所有页码
            $scope.pageList = new Array();
            // alert(JSON.stringify(response.data.aaData));


            if(response.success==false || response.data.iTotalItems==0){
                $(".pagination").hide();
                $("#content").hide();
                $("#kong").show();
            }else {
                $("#kong").hide();
                $(".pagination").show();
                $("#content").show();
                // 显示表格数据
                $scope.Shop = response.data.aaData;



            }





            //先根据总记录数去计算总页数
            $scope.totalCount = response.data.iTotalItems; //总记录数
            $scope.totalPages = Math.ceil($scope.totalCount / $scope.pageSize); //总页数
            // 更新当前显示页码
            $scope.currentPage = page;
            //显示分页工具条中间码
            var begin; // 显示第一个页码
            var end; // 显示最后一个页码
            // 如果每页显示10页,理论上 begin 是当前页 -5
            begin = $scope.currentPage - 5;
            if (begin < 1) { //begin不能小于1
                begin = 1;
            }
            // 显示10个页码，理论上end 是 begin + 9
            end = begin + 9;
            if (end > $scope.totalPages) {
                //最后一页不能大于总页数
                end = $scope.totalPages;
            }
            // 修正begin 的值, 理论上 begin 是 end - 9
            begin = end - 9;
            if (begin < 1) { //begin不能小于1
                begin = 1;
            }
            // 将页码加入 PageList集合
            for (var i = begin; i <= end; i++) {
                $scope.pageList.push(i);
            }
        }).error(function (data, status, headers, config) {
            // 当响应以错误状态返回时调用
            alert("出错，请联系管理员 ");
        });
    }
    //判断是否是当前页
    $scope.isActivePage = function (page) {
        return page === $scope.currentPage;
    }
    // 初始化，选中第一页
    // $scope.selectPage(1,46);
    if(IIId!=null)
    {

        $scope.selectPage(1,IIId);
    }
    else{
        $scope.selectPage(1,46);
    }
    //接受传值

    $scope.shopDetail= function(id,name){
        $scope.shopId= id;
        $scope.selectPage($scope.currentPage,$scope.shopId);
        document.getElementById("posC").innerHTML=">"+name;

    }


    $scope.phone = function (pphone) {
        swal({
            text:"欢迎拨打我公司电话："+ pphone
        })
    }

    $scope.add_shopcar = function (id,organId,type) {
        $.ajax({
            url: "http://47.101.138.13:83/cart/save",
            type: "get",
            data: {
                organId: organId,
                productId: id,
                type:type,
                token:getCookie("token")
            },
            async:false,
            success: function (data) {
//
                if (data.success == false) {
                    swal({
                        text:data.error,
                        icon:"error"
                    });
                } else {
                    swal({
                        text:"加入购物车成功！请到个人中心查看您的购物车",
                        icon:"success"
                    })

                }
            }
        });

    }
    $scope.panduan= function (s1,s2) {
        return angular.equals(s1,s2);
    }
}]);



function getCookie(name)
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}



