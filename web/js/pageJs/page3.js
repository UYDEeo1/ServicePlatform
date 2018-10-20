/**
 * Created by jinsq on 2018/10/10.
 */

var app = angular.module('myInfo', []);

app.controller('infoCtrl', function($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://101.132.76.252:83/file/36/getById'
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
