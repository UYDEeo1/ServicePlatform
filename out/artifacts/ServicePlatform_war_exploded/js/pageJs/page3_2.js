/**
 * Created by jinsq on 2018/10/19.
 */

var app = angular.module('myInfo', []);
app.controller('HealthCtrl', function($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://101.132.76.252:83/file/1/getHealthById?token='+getCookie("token")
    }).then(function successCallback(response) {

        console.log(response);
        // alert(JSON.stringify(response.data.data))
        $scope.Data = response.data.data;
        $scope.ChronicDis = response.data.data.chronicDis;
        $scope.AbiliInfo = response.data.data.abiliInfo;
        $scope.DrugAlley = response.data.data.drugAlley;
        $scope.Cancer = response.data.data.cancer;
        $scope.Broken = response.data.data.broken;
        $scope.Disabled = response.data.data.disabled;



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