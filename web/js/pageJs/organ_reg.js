/**
 * Created by jinsq on 2018/11/9.
 */
function regsub() {
    if($("input[name='personPhone']").val()=="")
    {
        swal({
            text:"申请人手机号不能为空！",
            icon:"error"
        })

    }
    else if($("input[name='name']").val()==""){
        swal({
            text:"机构名称不能为空！",
            icon:"error"
        })
    }
    else if($("input[name='email']").val()==""){

        swal({
            text:"email不能为空！",
            icon:"error"
        })
    }
    else {
        var obj = document.getElementsByName("auth");
        var check_val = [];
        for(var k in obj){
            if(obj[k].checked)
                check_val.push(obj[k].value);
        };
        $.ajax({
            url: "http://47.101.138.13:83/organ/reg",
            type: "post",
            data: {
                personPhone: $("input[name='personPhone']").val(),
                name: $("input[name='name']").val(),
                email: $("input[name='email']").val(),
                organTypeId: $("#organTypeId option:checked").val(),
                intro: $("input[name='intro']").val(),
                work: $("input[name='work']").val(),
                serviceTime: $("input[name='serviceTime']").val(),
                address: $("input[name='address']").val(),
                phone: $("input[name='phone']").val(),
                webUrl: $("input[name='webUrl']").val(),
                // pic: $("input[name='pic']").val(),
                num: $("input[name='num']").val(),
                districtId: $("#districtId option:checked").val(),
                auth:check_val

            },
            async:false,
            success: function (data) {

                if (data.success == false) {
                    swal({
                        text:data.error,
                        icon:"error"
                    })
                } else {

                    swal({
                        text:"提交成功！",
                        icon:"success"
                    })

                }
            }
        });
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