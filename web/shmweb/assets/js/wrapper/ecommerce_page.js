var $win = $(window),
    $doc = $(document),
    $body = $('body', $doc),
    winW = $win.width();
//视差效果
function parallax() {
    if ($win.width() > 992) {
        if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
            var oUl = document.getElementById('Ecommerce_part_1'),
                l = oUl.offsetWidth / 2,
                t = oUl.offsetHeight / 2,
                aLi = document.getElementsByClassName('formouseon');
            oUl.onmousemove = function (ev) {
                var oEv = ev || event,
                    iL = oEv.clientX,
                    iT = oEv.clientY;

                for (var i = 0; i < aLi.length; i++) {
                    aLi[i].style.marginLeft = (iL - l ) / 100 * aLi[i].style.zIndex + 'px';
                    aLi[i].style.marginTop = (iT - t ) / 70 * aLi[i].style.zIndex + 'px';
                }
            }
        }
    }
}

//轮播图
var swiper1 = new Swiper('#Ecommerce_part_2', {
    centeredSlides: true,
    loop: false,
    speed: 800,
    effect: 'fade',
    fadeEffect: {
        crossFade: true,
    },
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
});

//点击左侧切换右侧图标群
$(".left_type_btns ul").on("mouseenter", "li", function () {
    $(".left_type_btns ul").find("li").removeClass("active");
    $(this).addClass("active");
    var code = $(this).attr("code");
    $(".right_type_icons").find(".icons_box").removeClass("active");
    $(".right_type_icons").find(".icons_box[code='" + code + "']").addClass("active");
});
//移动端切换图标
$(".left_type_btns_mobile ul li").click(function () {
    $(".left_type_btns_mobile ul").find("li").removeClass("active");
    $(this).addClass("active");
    var code = $(this).attr("code");
    $(".right_type_icons").find(".icons_box").removeClass("active");
    $(".right_type_icons").find(".icons_box[code='" + code + "']").addClass("active");
})
//判断是否存在相应的dom节点调用相应 的方法以免其他页面报错
$(function () {
    if (document.getElementById("Ecommerce_part_1")) {
        parallax();
    }
    if (document.getElementById("Shortvideo_mousesheel")) {
        parallax();
        Shortvideo();
    }
    if (document.getElementById("Tourism_content")) {
        parallax();
        tourism();
    }
    if (document.getElementById("Marketing_content")) {
        marketing();
    }
    if (document.getElementById("news_content")) {
        news();
    }
    if (document.getElementById("aboutUs_content")) {
        aboutUs();
    }
});

//视频流页面解决方法
function Shortvideo() {
    //视频流滚动与点击
    var page5_index = 1;
    $(".content_center li").on("click", function () {
        $(".content_center").find("li").removeClass("active");
        $(this).addClass("active");
        page5_index = parseInt($(this).attr("code"));
        var code = $(this).find("span").text();
        $(".show_tip_num").find("span").text(code);
        $(".content_left").find(".content_left_item").removeClass("active");
        $(".content_left").find(".content_left_item[code='" + code + "']").addClass("active");
        $(".content_right").find(".small_part_title").removeClass("active");
        $(".content_right").find(".small_part_title[code='" + code + "']").addClass("active");
    });
    window.onload = function () {
        var oDiv = document.getElementById('foronMouseWheel');

        function onMouseWheel(ev) {/*当鼠标滚轮事件发生时，执行一些操作*/
            var ev = ev || window.event;
            var down = true; // 定义一个标志，当滚轮向下滚时，执行一些操作
            down = ev.wheelDelta ? ev.wheelDelta < 0 : ev.detail > 0;
            if (down) {
                page5_index += 1;
                if (page5_index > 1 && page5_index < 6) {
                    var code = "0" + page5_index;
                    $(".content_center").find("li").removeClass("active");
                    $(".content_center").find("li[code='" + page5_index + "']").addClass("active");
                    $(".show_tip_num").find("span").text(code);
                    $(".content_left").find(".content_left_item").removeClass("active");
                    $(".content_left").find(".content_left_item[code='" + code + "']").addClass("active");
                    $(".content_right").find(".small_part_title").removeClass("active");
                    $(".content_right").find(".small_part_title[code='" + code + "']").addClass("active");
                }
                if (page5_index >= 6) {
                    page5_index = 6;
                    var code = "0" + page5_index;
                    $(".content_center").find("li").removeClass("active");
                    $(".content_center").find("li[code='" + page5_index + "']").addClass("active");
                    $(".show_tip_num").find("span").text(code);
                    $(".content_left").find(".content_left_item").removeClass("active");
                    $(".content_left").find(".content_left_item[code='" + code + "']").addClass("active");
                    $(".content_right").find(".small_part_title").removeClass("active");
                    $(".content_right").find(".small_part_title[code='" + code + "']").addClass("active");
                }
            } else {
                page5_index -= 1;
                if (page5_index > 1 && page5_index < 6) {
                    var code = "0" + page5_index;
                    $(".content_center").find("li").removeClass("active");
                    $(".content_center").find("li[code='" + page5_index + "']").addClass("active");
                    $(".show_tip_num").find("span").text(code);
                    $(".content_left").find(".content_left_item").removeClass("active");
                    $(".content_left").find(".content_left_item[code='" + code + "']").addClass("active");
                    $(".content_right").find(".small_part_title").removeClass("active");
                    $(".content_right").find(".small_part_title[code='" + code + "']").addClass("active");
                }
                if (page5_index <= 1) {
                    page5_index = 1;
                    var code = "0" + page5_index;
                    $(".content_center").find("li").removeClass("active");
                    $(".content_center").find("li[code='" + page5_index + "']").addClass("active");
                    $(".show_tip_num").find("span").text(code);
                    $(".content_left").find(".content_left_item").removeClass("active");
                    $(".content_left").find(".content_left_item[code='" + code + "']").addClass("active");
                    $(".content_right").find(".small_part_title").removeClass("active");
                    $(".content_right").find(".small_part_title[code='" + code + "']").addClass("active");
                }
            }
            if (ev.preventDefault) {/*FF 和 Chrome*/
                ev.preventDefault();// 阻止默认事件
            }
            return false;
        }

        addEvent(oDiv, 'mousewheel', onMouseWheel);
        addEvent(oDiv, 'DOMMouseScroll', onMouseWheel);
        function addEvent(obj, xEvent, fn) {
            if (obj.attachEvent) {
                obj.attachEvent('on' + xEvent, fn);
            } else {
                obj.addEventListener(xEvent, fn, false);
            }
        }
    }
}

//旅游解决方案
function tourism() {
    window.onload = function () {
        $("#Tourism_lists").find("li[code='1']").addClass("active");
        $("#Tourism_img_lists").find("li[code='1']").addClass("active");
    };
    $("#Tourism_lists").on("mouseenter", ".left_swiper_content", function (event) {
        if (winW < 1200) return;
        $("#Tourism_lists").find("li").removeClass("active");
        $("#Tourism_img_lists").find("li").removeClass("active");
        $(this).parents("li").addClass("active");
        $("#Tourism_img_lists").find("li[code='" + $(this).parents('li').attr("code") + "']").addClass("active");
    });
}

//企业营销解决方案
function marketing() {
    $("#importance_parts").on("mouseenter", ".import_item", function (event) {
        if (winW < 1200) return;
        $("#importance_parts").find(".import_item").removeClass("active");
        $(this).addClass("active");
    })
}

//新闻资讯
function news() {
    var first_url = $(".news_content_lists").attr("data-request-url");
    getnewsList(first_url);
    //新闻列表背景色取色
    $(".news_content_lists_ul").on("mouseenter", "li.for_show", function (event) {
        if (winW < 1200) return;
        $(".news_content_lists_ul").find("li").removeClass("active");
        $(this).addClass("active");
        $(".news_content_lists_ul").find("li").find("img").removeAttr("data-adaptive-background");
        $(this).find("img").attr("data-adaptive-background", "true");
        $.adaptiveBackground.run({
            parent: $(".news_content"),
            normalizedTextColors: {
                light: "#fff",
                dark: "#fff"
            },
        });
    }).on("mouseleave", "li.for_show", function (event) {
        if (winW < 1200) return;
        $(".news_content_lists_ul").find("li").removeClass("active");
        $(".news_content_lists_ul").find("li").find("img").removeAttr("data-adaptive-background");
        $(".news_content").css("background-color", "#fff");
    })
    //获取新闻列表接口
    function getnewsList(url) {
        $.ajax({
            url: url,    //请求的url地址
            type: "get",   //请求方式
            beforeSend: function () {
            },
            success: function (data) {
                var html = "";
                var dataobj = data.news_data;
                if (data.prev_page_url == false) {
                    $(".arrowup").removeClass("hadPre");
                    $(".first_cricle").removeClass("dis_ni");
                } else {
                    $(".getnewsList").attr("code", data.prev_page_url);
                    $(".arrowup").attr("code", data.prev_page_url);
                    $(".arrowup").addClass("hadPre");
                    $(".first_cricle").addClass("dis_ni");
                }
                if (data.next_page_url == false) {
                    $(".arrowdown").addClass("dis_ni");
                    $(".forMoreLoad").addClass("dis_ni");
                } else {
                    $(".arrowdown").removeClass("dis_ni");
                    $(".arrowdown").attr("code", data.next_page_url);
                    $(".forMoreLoad").attr("code", data.next_page_url);
                }
                if (dataobj.length > 0) {
                    $.each(dataobj, function (i, n) {
                        html += "<li class='for_show'>" +
                            "<a href='" + n.link + "'>" +
                            "<div class='timeline-content'>" +
                            "<div class='new_dateTime'>" +
                            "<span>" + n.date_time[1] + "</span>" +
                            "<span>" + n.date_time[0] + "</span>" +
                            "</div>" +
                            "<div class='new_info_content'>" +
                            "<p class='new_title'>" + n.title + "</p>" +
                            "<p class='news_shortInfo'>" + n.content + "</p>" +
                            "</div>" +
                            "</div>" +
                            "<div class='bg_img'>" +
                            "<img class='forTestRgba active' id='images' src='" + n.photo + "'>" +
                            "</div>" +
                            "</a>" +
                            "</li>";
                    });
                    if (winW > 1200) {
                        $("#foronMouseWheel").html("");
                    }
                    $("#foronMouseWheel").append(html);
                } else {
                    //
                }
            },
            complete: function () {
            },
            error: function (e) {
                console.log(e);
                //请求出错处理
            }
        });
    }

    //请求加载更多新闻
    $(".arrowdown").click(function () {
        var url = $(this).attr("code");
        getnewsList(url);
    });
    //返回上一页
    $(".arrowup").click(function (event) {
        var url = $(this).attr("code");
        getnewsList(url);
    });
    //移动端加载更多
    $(".forMoreLoad").click(function () {
        var url = $(this).attr("code");
        getnewsList(url);
    });
}

//关于我们
function aboutUs() {
    $(".submit").click(function () {
        var company = $('#feedback_company'), username = $('#feedback_username'), email = $('#feedback_email');
        if (company.val() == "") {
            if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                alert("请填写公司名称!");
                return false;
            } else {
                layer.alert('请填写公司名称!');
                return false;
            }
        }
        if (username.val() == "") {
            if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                alert("请填写联系人名称!");
                return false;
            } else {
                layer.alert('请填写联系人名称!');
                return false;
            }
        }
        if (email.val() == "") {
            if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                alert("请填写联系邮箱!");
                return false;
            } else {
                layer.alert('请填写联系邮箱!');
                return false;
            }
        } else {
            // var reg = new RegExp('/^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/', 'gi');
            var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/gi;
            var is_ok = reg.test(email.val());
            if (!is_ok) {
                if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                    alert("请填写正确有效的邮箱!");
                    return false;
                } else {
                    layer.alert('请填写正确有效的邮箱!');
                    return false;
                }
            }
        }
        var data = {
            company: company.val(),
            username: username.val(),
            email: email.val(),
            _scfs: $.cookie('_scfc'),
        };
        $.ajax({
            url: $(".aboutUs_content .content_part_3").attr("data-request-url"),
            type: "post",   //请求方式
            data: data,
            beforeSend: function () {
            },
            success: function (data) {
                if (data.code == 200) {
                    if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                        alert("提交成功，请等待工作人员与您联系!");
                    } else {
                        layer.alert('提交成功，请等待工作人员与您联系!');
                    }
                    company.val('');
                    username.val('');
                    email.val('');
                }
                if (data.code == 422) {
                    var error = data.error;
                    if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                        alert(error);
                    } else {
                        layer.alert(error);
                    }
                }
            },
            complete: function () {
            },
            error: function (e) {
                console.log(e);
                //请求出错处理
            }
        });
    })
}
