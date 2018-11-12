/**
 * Created by jinsq on 2018/11/6.
 */

var app = angular.module('myInfo', []);
app.controller('PicCtrl', function($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://47.101.138.13:83/map/getTypes'
    }).then(function successCallback(response) {

        console.log(response);
        // alert(JSON.stringify(response.data.data))
        $scope.Data = response.data.data;


    }, function errorCallback(response) {
        // 请求失败执行代码
    });


    //点击菜单，在地图中显示小图标
    $scope.showImage = function (id) {
        $.ajax({
            url: "http://47.101.138.13:83/map/getDetails",
            type: "get",
            data: {
                organId: id
            },
            async:false,
            success: function (data) {

                if (data.success == false) {
                    // $("#m").html(data.error);
                } else {

                    $(".smalimage").css("top",data.data.mapTop).css("left",data.data.mapLeft).show();

                }
            }
        });
    }

    //显示详情div

    $scope.showDetails = function (id) {
        $.ajax({
            url: "http://47.101.138.13:83/map/getDetails",
            type: "get",
            data: {
                organId: id
            },
            async:false,
            success: function (data) {

                if (data.success == false) {
                    // $("#m").html(data.error);
                } else {

                    // var d = $(thisObj);
                    // var pos = d.offset();
                    // var t = pos.top + d.height(); // 弹出框的上边位置
                    // var l = pos.left + d.width();  // 弹出框的左边位置

                    document.getElementById("Tit").innerHTML=data.data.name;
                    document.getElementById("phoneNum").innerHTML=data.data.phone;
                    document.getElementById("add").innerHTML=data.data.address;
                    document.getElementById("serviceTime").innerHTML=data.data.serviceTime;

                    $("#detailsOnly").hide();
                    $(".smalimage").show();
                    $("#details").show();

                    // $("#details").css({ "top": data.data.mapTop, "left": data.data.mapLeft }).show();

                }
            }
        });
    }




});

app.controller('MapCtrl', function($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://47.101.138.13:83/map/getLocation'
    }).then(function successCallback(response) {

        console.log(response);
        // alert(JSON.stringify(response.data.data))
        $scope.mmap = response.data.data;


    }, function errorCallback(response) {
        // 请求失败执行代码
    });




    $scope.showDetailsOnly = function (id) {
        $.ajax({
            url: "http://47.101.138.13:83/map/getDetails",
            type: "get",
            data: {
                organId: id
            },
            async:false,
            success: function (data) {

                if (data.success == false) {
                    // $("#m").html(data.error);
                } else {

                    // var d = $(thisObj);
                    // var pos = d.offset();
                    // var t = pos.top + d.height(); // 弹出框的上边位置
                    // var l = pos.left + d.width();  // 弹出框的左边位置

                    document.getElementById("TitOnly").innerHTML=data.data.name;
                    document.getElementById("phoneNumOnly").innerHTML=data.data.phone;
                    document.getElementById("addOnly").innerHTML=data.data.address;
                    document.getElementById("serviceTimeOnly").innerHTML=data.data.serviceTime;

                    $(".smalimage").hide();
                    $("#detailsOnly").css("top",data.data.mapTop).css("left",data.data.mapLeft).show();

                }
            }
        });
    }

});

app.controller('LocCtrl', function($scope, $http) {
        $http({
            method: 'GET',
            url: 'http://47.101.138.13:83/map/getJwTypes'
        }).then(function successCallback(response) {

            console.log(response);
            // alert(JSON.stringify(response.data.data))
            $scope.jw = response.data.data;


        }, function errorCallback(response) {
            // 请求失败执行代码
        });
        

    })
