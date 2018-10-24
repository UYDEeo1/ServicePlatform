/**
 * Created by jinsq on 2018/10/20.
 */

var app = angular.module('myInfo', []);
app.controller('RecordCtrl', function($scope, $http) {
    $http({
        method: 'GET',
        url: 'http://101.132.76.252:83/file/36/record'
    }).then(function successCallback(response) {

        console.log(response);
        // alert(JSON.stringify(response.data.data))
        $scope.Data = response.data.data;



    }, function errorCallback(response) {
        // 请求失败执行代码
    });

});