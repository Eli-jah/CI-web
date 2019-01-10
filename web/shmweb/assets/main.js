/**
 * 通用模块
 */

var $win = $(window),
    $doc = $(document),
    $body = $('body', $doc),
    winW = $win.width();
var page5_index = 1;

$(window).resize(function () {
    winW = $win.width();
});

$(function () {
    if (!$.fn.lazyload) return;
    $("img.lazy", $body).lazyload({
        effect: "fadeIn",
        threshold: 100,
        failure_limit: 0
    });
});

$(function () {
    if ($win.width() > 992) {
        if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
            new WOW().init();
            $(".header_menu").on("click", function () {
                $(".mobile_menu").addClass("active");
            });
            $("#nav-xs-btn").on("click", function () {
                $(".mobile_menu").removeClass("active");
            });
        }
    }
});

$(function () {
    // 判断是否为移动端
    if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
        $(".header_menu").on("click", function () {
            $(".mobile_menu").addClass("active");
        });
        $("#nav-xs-btn").on("click", function () {
            $(".mobile_menu").removeClass("active");
            $(".header_menu").removeClass("active");
        });

    }
});

// 菜单栏效果
$(".header_menu").on("mouseenter", function (event) {
    $("header").addClass("active");
    $(".local_name").addClass("active");
    $(this).addClass("active");
    $("#lists_area").addClass("active");
});

// 头部导航,二级菜单
$(function () {
    /**
     * 判断鼠标从哪个方向进入和离开容器
     * @param {Object} tag JQuery对象，事件绑定的主体
     * @param {Object} e   event对象
     * @return {Number} direction 值为“0,1,2,3”分别对应着“上，右，下，左”
     */
    function moveDirection(tag, e) {
        var w = $(tag).width();
        var h = $(tag).height();
        var offset = $(tag).offset();
        var x = (e.pageX - offset.left - (w / 2)) * (w > h ? (h / w) : 1);
        var y = (e.pageY - offset.top - (h / 2)) * (h > w ? (w / h) : 1);
        var direction = Math.round((((Math.atan2(y, x) * (180 / Math.PI)) + 180) / 90) + 3) % 4;
        return direction;
    }

    var list1 = $(".nav-list1"),
        list2 = $(".nav-list2");
    list1.on("mouseenter", ".more", function (event) {
        if (winW < 1200) return;
        var me2 = $(".child_menu");
        me2.stop().slideDown("slow");
    }).on("mouseleave", ".more", function (event) {
        if (winW < 1200) return;
        var direction = moveDirection(this, event);
        if (direction != 2) {
            $(".child_menu").stop().slideUp("slow");
        }
    });

    $(".child_menu").on("mouseleave", function () {
        $(".child_menu").stop().slideUp("slow");
    });

    list2.on("mouseenter", "li", function (event) {
        if (winW < 1200) return;
    }).on("mouseleave", "li", function (event) {
        if (winW < 1200) return;
    });

    $(".header_menu_lists").on("mouseleave", function () {
        $("header").removeClass("active");
        $(".local_name").removeClass("active");
        $(".header_menu").removeClass("active");
        $("#lists_area").removeClass("active");
    });

    var x, y;
    $(document).mousemove(function (e) {
        x = e.pageX;
        y = e.pageY;
        var div = $('#header'); // 获取你想要的DIV
        var div2 = $("#child_menu");
        var y1 = div.offset().top; // div上面两个的点的y值
        var y1_1 = div2.offset().top;
        var y2 = y1 + div.height(); // div下面两个点的y值
        var y2_1 = y1_1 + div2.height();
        var x1 = div.offset().left; // div左边两个的点的x值
        var x1_1 = div2.offset().left;
        var x2 = x1 + div.width(); // div右边两个点的x的值
        var x2_1 = x1_1 + div2.width();
        if (x < x1 || x > x2 || y < y1 || y > y2) {
            if (x < x1_1 || x > x2_1 || y < y1_1 || y > y2_1) {
                $("header").removeClass("active");
                $(".local_name").removeClass("active");
                $(".header_menu").removeClass("active");
                $("#lists_area").removeClass("active");
            } else {
                return false;
            }
        } else {
            return false;
        }
    });

    // 移动端二级导航
    $(".mobile_more").click(function () {
        if ($(".nav-list4").hasClass("active")) {
            $(".nav-list4").slideUp("slow");
            $(".nav-list4").removeClass("active");
        } else {
            $(".nav-list4").slideDown("slow");
            $(".nav-list4").addClass("active");
        }
    });

    // 获取URL路径参数
    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return decodeURI(r[2]);
        return null;
    }

    $(".local_name span").text(GetQueryString("name"));
});
