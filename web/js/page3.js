/**
 * Created by jinsq on 2018/10/10.
 */

var app = angular.module('myInfo', []);

app.controller('infoCtrl', function($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://101.132.76.252:83/file/36/getById'
    }).then(function successCallback(response) {
        $scope.Oldman = response.data.oldman;
        $scope.Linkman = response.data.linkman;
        $scope.Organ = response.data.organ;
        $scope.Community = response.data.community;
        $scope.Home = response.data.home;

    }, function errorCallback(response) {
        // 请求失败执行代码
    });

});