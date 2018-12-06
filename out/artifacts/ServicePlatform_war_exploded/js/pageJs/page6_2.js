/**
 * Created by jinsq on 2018/10/26.
 */
// var app = angular.module('myInfo', []);
// app.controller('LogCtrl', function($scope, $http) {
//     $http({
//         method: 'GET',
//         url: 'http://101.132.76.252:83/cardUser/changePwd',
//         params:{
//             'oldmanId':'3374',
//             'oldPwd':'',
//             'password':''
//         }
//     }).then(function successCallback(response) {
//
//         console.log(response);
//         // alert(JSON.stringify(response.data.data))
//         $scope.Data = response.data.data;
//
//
//
//     }, function errorCallback(response) {
//         // 请求失败执行代码
//     });
//
// });
//
//
// app.controller('userpswdCtrl', function($scope,Account,SweetAlert,$state,$localStorage){
//
//     $scope.user = {};  //信息全部存在user里面
//     $scope.changePassword = function(){
//         if($scope.password_again === $scope.user.newPassword){   //如果两次密码输入一致
//             // $scope.user.accountId = $localStorage.accountId;     //获取用户id
//             Account.modifyPassword($scope.user,function(data){    //修改密码
//                 console.log(data);
//                 SweetAlert.swal({
//                     title:'',
//                     text: "修改成功",
//                     type: "success",
//                     showCancelButton: false,
//                     confirmButtonColor: "#DD6B55",
//                     confirmButtonText: "是",
//                     cancelButtonText: "否",
//                     closeOnConfirm: true,
//                     closeOnCancel: true
//                 })
//             },function(){
//
//             })
//         }
//     }
// })
//

function psdd() {
    if($("input[name='newpsd']").val()==$("input[name='newpsd_Again']").val()) {
        $.ajax({
            url: "http://47.101.138.13:83/cardUser/changePwd",
            type: "get",
            data: {
                oldPwd: $("input[name='password']").val(),
                password: $("input[name='newpsd']").val(),
                token: getCookie("token")
            },
            async:false,
            success: function (data) {
//                var result=eval("("+data+")");
//                 alert(JSON.stringify(data));
                if (data.success == false) {
                    $("#m").html(data.error);
                } else {
                    $("#m").empty();
                    swal({
                        text:"密码修改成功！",
                        icon:"success"
                    });


                }
            }
        });
    }
    else {
        $("#m").html("密码输入不一致");
    }
}


function getCookie(name)
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}