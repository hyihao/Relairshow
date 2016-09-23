//====================初始化验证表单====================
$(function () {

    //提交表单
    $("#btnSubmit").bind("click", function () {
        if ($("#txtPhone").val() == "" && $("#txtOrder").val() == "") {
            $("#msgtips").show();
            $("#msgtips").text("请填写手机号或者订单号！");
            return false;
        }
        $.ajax({
            type: "POST",
            url: $("#queryorderform").attr("url"),
            dataType: "json",
            data: {
                "txtPhone": $("#txtPhone").val(),
                "txtOrder": $("#txtOrder").val()
            },
            //timeout: 20000,
            beforeSend: function (XMLHttpRequest) {
                $("#btnSubmit").attr("disabled", true);
                $("#msgtips").show();
                $("#msgtips dd").text("正在查询，请稍候...");
            },
            success: function (data) {
                if (data.order_no != '' && data.order_no != 'undefined' && data.order_no != 0) {
                    var paystatu = '';
                    if (data.get_order_payment_status == true) {
                        paystatu = '  <a href="/payment/confirm/' + data.order_no + '.aspx" target="_blank">去付款</a>'
                    }
                    else {
                        paystatu = "";
                    }
                    $('#querytr').html("<td>" + data.order_no + "</td><td>" + data.accept_name + "</td><td>￥" + data.order_amount + "</td><td>" + data.add_time + "</td><td>" + data.strStatus +
                     "</td><td>  <a href=\"/query/order/show-" + data.id + ".aspx\">查看订单</a>" +
                     paystatu
                     +" </td>");

                } else {
                    $('#querytr').html("<td colspan=\"8\" align=\"center\">没有找到记录</td>");
                }
                $("#btnSubmit").attr("disabled", false);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $("#msgtips ").text("状态：" + textStatus + "；出错提示：" + errorThrown);
                $("#btnSubmit").attr("disabled", false);
            }
        });
        return false;
    });
});