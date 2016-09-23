//购物车数量加减add
function CartAddMinus(obj, webpath, goods_id, num) {
    if (num > 0) {
        var goods_quantity = $(obj).prev("input[name='goods_quantity']");
        $(goods_quantity).val(parseInt($(goods_quantity).val()) + 1);
        cartTotalAmount(obj, goods_id);
          } else {
        var goods_quantity = $(obj).next("input[name='goods_quantity']");
        if (parseInt($(goods_quantity).val()) > 0) {
            $(goods_quantity).val(parseInt($(goods_quantity).val()) - 1);
            cartTotalAmount(obj, goods_id);
         }
    }
}

//判断时间是否为空，计算单价
function cartTotalAmount(obj, goods_id) {
    var dom=$(obj).parents();
    var usedate = $(dom).find(".Wdate").val();
    var goods_quantity = $(dom).find("input[name='goods_quantity']").val();
    var unit = $(dom).find("#pricecount_" + goods_id + " strong");
    var sell_price = $(dom).find(".base_price strong").html();
    var count_price = 0;

    if (isNaN(goods_quantity)) {
        alert('门票数量只能输入数字!');
        $(obj).val("1");
    }
    if (isNaN(sell_price)) {
        alert('门票价格有误');
        return;
    }
    if (typeof (usedate) != "undefined" && usedate != '') {
        unit.html((goods_quantity * sell_price).toFixed(2));
        $(".unitprice").each(function (a, b) {            
            if (!isNaN($(b).text())) {
                count_price += parseFloat($(b).text());
            }
        });
        $('#total_amount').html(count_price.toFixed(2));
        $('#Strong1').html(count_price.toFixed(2));
    } 
}

function checkMobile(str) {
    var  re = /^1\d{10}$/
    if (re.test(str)) {
        return true;
    } else {
    return false;
    }
}




//计算购物车金额
function CartAmountTotal(obj, webpath, goods_id) {
    if (isNaN($(obj).val())) {
        alert('门票数量只能输入数字!');
        $(obj).val("1");
    }
    $.ajax({
        type: "post",
        url: webpath + "tools/submit_ajax.ashx?action=cart_goods_update",
        data: {
            "goods_id": goods_id,
            "goods_quantity": $(obj).val()
        },
        dataType: "json",
        beforeSend: function (XMLHttpRequest) {
            //发送前动作
        },
        success: function (data, textStatus) {
            if (data.status == 1) {
                location.reload();
            } else {
                alert(data.msg);
                location.reload();
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert("状态：" + textStatus + "；出错提示：" + errorThrown);
        },
        timeout: 20000
    });
    return false;
}

$(function () {
    $('#btnSubmit').click(function () {
        var row1 = {}, jsonbox = {};
        menpiaoItem = [];
        var _unitprice = 0;
        var itemCount = 0;
        $(".ticket_item_inner tbody tr").each(function (a, b) {
            _unitprice = $(this).find('.unitprice').html();
            _unitprice = parseFloat(_unitprice);

            if (!isNaN(_unitprice) && _unitprice > 0) {
                row1.usedate = $(this).find('.Wdate').val();
                row1.menpiaoid = $(this).find('.ticket_item_title').attr('id');
                row1.qty = $(this).find('.copies_num').val();
                menpiaoItem.push(row1);
                itemCount++;                
            }            
        });
        jsonbox.accept_name = $('#accept_name').val().replace(/(^s*)|(s*$)/g, ""); ;
        jsonbox.mobile = $('#mobile').val().replace(/(^s*)|(s*$)/g, ""); ;
        jsonbox.message_content = $('#message_content').val().replace(/(^s*)|(s*$)/g, ""); ;
        jsonbox.menpiaoitem = menpiaoItem;


        if (jsonbox.accept_name == '') {
            $.dialog.alert('请输入取票人姓名');
            $('#accept_name').focus();
            return false;
        }
        if (jsonbox.mobile == '') {
            $.dialog.alert('请输入取票人手机号码');
            $('#mobile').focus();
            return false;
        }
        if (!checkMobile(jsonbox.mobile)) {
            $.dialog.alert('手机号码有误，请重新输入');
            $('#mobile').select();
            return false;
        }
        if (itemCount <= 0) {
            $.dialog.alert('请选择对应的使用日期');
            return false;
        }
        var box = JSON.stringify(jsonbox);

        $.ajax({
            type: "post",
            url: "/tools/submit_ajax.ashx?action=menpiao",
            data: {
                "jsonbox": box
            },
            dataType: "json",
            beforeSend: function (XMLHttpRequest) {
                //发送前动作
            },
            success: function (data, textStatus) {
                if (data.status == 1) {
                    if (data.url) {
                        location.href = data.url;
                    }
                } else {
                    $.dialog.alert(data.msg);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert("状态：" + textStatus + "；出错提示：" + errorThrown);
            },
            timeout: 20000
        });
        return false;
    });
    /******Pay*****/
    $('.radioPay').each(function (index, dom) {
        $(dom).click(function () {
            $('#payType').val($(this).val());
            $('#pay_form').attr("action", $('#payType').val());
        });
    })

})

