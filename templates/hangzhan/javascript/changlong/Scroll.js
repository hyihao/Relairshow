
$(function () {

    $('#menuNav li a').click(function (e) {
        
        if (!$('html, body').is(':animated')) {
            $('.menuNav li a').removeClass('current');
            $(this).addClass('current');
            var target = $(this).attr('href');
            if (target.indexOf('.') < 0) {
                e.preventDefault();
                $('html, body').animate({
                    scrollTop: $(target).offset().top - 30
                }, 1000);                
            }
            else {
                return true;
            }
        }
    });

    var x_pos = 0;
    var li_items_n = 0;
    var right_clicks = 0;
    var left_clicks = 0;
    var li_col = jQuery("#movie_scroll > .upcoming_item");
    var li_width = li_col.outerWidth(true);
    var viewWindow = Math.round(jQuery('.i_swwantlister').width() / li_width);
    var total_clicks = 0;
    //alert(viewWindow);
    li_col.each(function (index) {
        x_pos += jQuery(this).outerWidth(true);
        li_items_n++;
    })

    right_clicks = li_items_n - viewWindow;
    total_clicks = li_items_n - viewWindow;

    //alert(right_clicks);

    $('#movie_scroll').css('position', 'relative');
    $('#movie_scroll').css('left', '0px');
    $('#movie_scroll').css('width', x_pos + 'px');

    var is_playing = false;
    var completed = function () { is_playing = false; }

    $('#upcomingPre').click(function () {
        cur_offset = $('#movie_scroll').position().left;

        if (!is_playing) {
            if (left_clicks > 0) {
                is_playing = true;
                $('#movie_scroll').animate({ 'left': cur_offset + li_width + 'px' }, "slow", "linear", completed);
                right_clicks++;
                left_clicks--;
            }
            else {
                is_playing = true;
                jQuery('#movie_scroll').animate({ 'left': -li_width * total_clicks + 'px' }, "slow", "linear", completed);
                right_clicks = 0;
                left_clicks = total_clicks;
            }
        }
    });

    jQuery('#upcomingNext').click(function () {

        if (!is_playing) {
            cur_offset = jQuery('#movie_scroll').position().left;
            if (right_clicks > 0) {
                is_playing = true;
                jQuery('#movie_scroll').animate({ 'left': cur_offset - li_width + 'px' }, "slow", "linear", completed);
                right_clicks--; left_clicks++;
            }
            else {
                is_playing = true; jQuery('#movie_scroll').animate({ 'left': 0 + 'px' }, "slow", "linear", completed);
                left_clicks = 0;
                right_clicks = total_clicks;
            }
        }
    });

    var slider_link = $('#upcomingNext');
    var slider_link_index = 1;
    var slider_count = $('#movie_scroll > .upcoming_item').size();

    function slider_intro() {
        if (slider_link_index <= slider_count) {
            slider_link.trigger('click');
            slider_link_index++;
            setTimeout(function () { slider_intro() }, 5000); //select change time
        }
    }
    //setTimeout(function () { slider_intro() }, 5000);
    setInterval(fnMpyd, 500);
});
function $$(id) {//获取ID标签
    return document.getElementById(id);
}
function getStyle(obj, name) {//获取样式表中的样式
    if (obj.currentStyle) {
        return obj.currentStyle[name];
    } else {
        return getComputedStyle(obj, false)[name];
    }
}
function startMove(obj, json, fnEnd) {
    clearInterval(obj.timer);
    obj.timer = setInterval(function () {
        var bStop = true; //假设：所有的运动都已到达目标值

        for (var attr in json) {
            var cur = 0;
            if (attr == "opacity") {
                cur = Math.round(parseFloat(getStyle(obj, attr)) * 100); //Math.round 四舍五入
            } else {
                cur = parseInt(getStyle(obj, attr));
            }
            var speed = (json[attr] - cur) / 10;
            speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed);

            if (cur != json[attr]) {
                bStop = false; //如果还有运动没有到达目标值的，设置false
            }

            if (attr == "opacity") {
                obj.style.filter = "alpha(opacity:" + (cur + speed) + ")";
                obj.style[attr] = (cur + speed) / 100;
            } else {
                obj.style[attr] = cur + speed + "px";
            }
        }

        if (bStop) {
            clearInterval(obj.timer); //当所有的值到达目标值时，才关闭定时器
            if (fnEnd) fnEnd(); //如果有回调函数 则执行
        }

    }, 30);
}

function fnMpyd() {
    var oMpyd = $$("ind_ydfb"),
		now = 0;
    startMove(oMpyd, { top: -112 });
    if (oMpyd.offsetTop == -112) {
        startMove(oMpyd, { top: -100 });
    }
}
