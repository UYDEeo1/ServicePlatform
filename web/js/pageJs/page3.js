/**
 * Created by jinsq on 2018/10/10.
 */

var app = angular.module('myInfo', []);

app.controller('infoCtrl', function($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://47.101.138.13:83/file/1/getById?token='+getCookie("token")
    }).then(function successCallback(response) {

        console.log(response);
        // alert(JSON.stringify(response.data.data.oldman))
        $scope.Oldman = response.data.data.oldman;
        $scope.Linkman = response.data.data.linkman;
        $scope.Organ = response.data.data.organ;
        $scope.Community = response.data.data.community;
        $scope.Home = response.data.data.home;

    }, function errorCallback(response) {
        // 请求失败执行代码
    });

});


function getCookie(name)
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}
