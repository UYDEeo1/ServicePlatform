/**
 * Created by jinsq on 2018/10/26.
 */

var app = angular.module('myInfo', []);
app.controller('accountCtrl', function($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://101.132.76.252:83/cardUser/accountInfo?oldmanId=3374'
    }).then(function successCallback(response) {

        console.log(response);
        // alert(JSON.stringify(response.data.data))
        $scope.Data = response.data.data;



    }, function errorCallback(response) {
        // 请求失败执行代码
    });

});
