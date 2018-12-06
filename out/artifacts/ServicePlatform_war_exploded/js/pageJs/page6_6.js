/**
 * Created by jinsq on 2018/11/3.
 */


function xinxiang() {
        $.ajax({
            url: "http://47.101.138.13:83/message/saveMessage",
            type: "get",
            data: {
                content: $("textarea[name='text']").val(),
                type: $('input[type=radio][name=typee]:checked').val(),
                token: getCookie("token")
            },
            async:false,
            success: function (data) {
                if (data.success == false) {
                    // $("#m").html(data.error);
                    swal({
                        text:"提交失败!"+data.error,
                        icon:"error"
                    })

                } else {
                    swal({
                        text:"提交成功！",
                        icon:"success"
                    });

                }
            }
        });

}


function getCookie(name)
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}

