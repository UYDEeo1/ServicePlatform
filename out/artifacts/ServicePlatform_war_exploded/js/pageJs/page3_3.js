/**
 * Created by jinsq on 2018/10/20.
 */

var app = angular.module('myInfo', []);
app.controller('LabelCtrl', function($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://47.101.138.13:83/file/1/getLabelById?token='+getCookie("token")
    }).then(function successCallback(response) {

        console.log(response);
        // alert(JSON.stringify(response.data.data))
        $scope.Data = response.data.data;



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
