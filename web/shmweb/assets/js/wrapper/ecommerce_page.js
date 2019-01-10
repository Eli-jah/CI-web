var $win = $(window),
    $doc = $(document),
    $body = $('body', $doc),
    winW = $win.width();
//视差效果
function parallax(){
	if ($win.width() > 992) {
        if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
        	var oUl=document.getElementById('Ecommerce_part_1'),
			l = oUl.offsetWidth/2,
			t = oUl.offsetHeight/2,
			aLi=document.getElementsByClassName('formouseon');
			oUl.onmousemove = function( ev ){
				var oEv = ev || event,
					iL = oEv.clientX,
					iT = oEv.clientY;
		
				for(var i=0; i<aLi.length; i++){
					aLi[i].style.marginLeft=(iL - l )/100*aLi[i].style.zIndex+'px';
					aLi[i].style.marginTop=(iT - t )/70*aLi[i].style.zIndex+'px';
				}
			}
        };
    }
}

//轮播图
var swiper1 = new Swiper('#Ecommerce_part_2', {
	  centeredSlides: true,
	  loop: false,
	  speed: 800,
	  effect : 'fade',
	  fadeEffect: {
        crossFade: true,
      },
//		  autoplay: {
//		    delay: 3000,
//		  },
	  navigation: {
	      nextEl: '.swiper-button-next',
	      prevEl: '.swiper-button-prev',
	  }
});  

//点击左侧切换右侧图标群
$(".left_type_btns ul").on("click","li",function(){
	$(".left_type_btns ul").find("li").removeClass("active");
	$(this).addClass("active");
	var code = $(this).attr("code");
	$(".right_type_icons").find(".icons_box").removeClass("active");
	$(".right_type_icons").find(".icons_box[code='"+ code +"']").addClass("active");
})
//移动端切换图标
$(".left_type_btns_mobile ul li").click(function(){
	$(".left_type_btns_mobile ul").find("li").removeClass("active");
	$(this).addClass("active");
	var code = $(this).attr("code");
	$(".right_type_icons").find(".icons_box").removeClass("active");
	$(".right_type_icons").find(".icons_box[code='"+ code +"']").addClass("active");
})
//判断是否存在相应的dom节点调用相应 的方法以免其他页面报错
$(function(){
	if(document.getElementById("Shortvideo_mousesheel")){
		parallax();
		Shortvideo();
	}
	if(document.getElementById("Tourism_content")){
		parallax();
		tourism();
	}
	if(document.getElementById("Marketing_content")){
		marketing();
	}
	if(document.getElementById("news_content")){
		news();
	}
	if(document.getElementById("aboutUs_content")){
		aboutUs();
	}
})

//视频流页面解决方法
function Shortvideo(){
	//视频流滚动与点击
	var page5_index = 1;
	$(".content_center li").on("click",function(){
		$(".content_center").find("li").removeClass("active");
		$(this).addClass("active");
		page5_index = parseInt($(this).attr("code"));
		var code = $(this).find("span").text();
		$(".show_tip_num").find("span").text(code);
		$(".content_left").find(".content_left_item").removeClass("active");
		$(".content_left").find(".content_left_item[code='"+ code +"']").addClass("active");
		$(".content_right").find(".small_part_title").removeClass("active");
		$(".content_right").find(".small_part_title[code='"+ code +"']").addClass("active");
	})
	window.onload = function () {
	   var oDiv = document.getElementById('foronMouseWheel');
	   function onMouseWheel(ev) {/*当鼠标滚轮事件发生时，执行一些操作*/
	        var ev = ev || window.event;
	        var down = true; // 定义一个标志，当滚轮向下滚时，执行一些操作
	            down = ev.wheelDelta?ev.wheelDelta<0:ev.detail>0;
	        if(down){
	        	page5_index += 1;
	        	if(page5_index>1&&page5_index<6){
	            	var code = "0"+ page5_index;
	            	$(".content_center").find("li").removeClass("active");
	            	$(".content_center").find("li[code='"+ page5_index +"']").addClass("active");
					$(".show_tip_num").find("span").text(code);
					$(".content_left").find(".content_left_item").removeClass("active");
					$(".content_left").find(".content_left_item[code='"+ code +"']").addClass("active");
					$(".content_right").find(".small_part_title").removeClass("active");
					$(".content_right").find(".small_part_title[code='"+ code +"']").addClass("active");
	            }
	            if(page5_index>=6){
	            	page5_index = 6;
	            	var code = "0"+ page5_index;
	            	$(".content_center").find("li").removeClass("active");
	            	$(".content_center").find("li[code='"+ page5_index +"']").addClass("active");
					$(".show_tip_num").find("span").text(code);
					$(".content_left").find(".content_left_item").removeClass("active");
					$(".content_left").find(".content_left_item[code='"+ code +"']").addClass("active");
					$(".content_right").find(".small_part_title").removeClass("active");
					$(".content_right").find(".small_part_title[code='"+ code +"']").addClass("active");
	            }
	        }else{
	        	page5_index -= 1;
	            if(page5_index>1&&page5_index<6){
	            	var code = "0"+ page5_index;
	            	$(".content_center").find("li").removeClass("active");
	            	$(".content_center").find("li[code='"+ page5_index +"']").addClass("active");
					$(".show_tip_num").find("span").text(code);
					$(".content_left").find(".content_left_item").removeClass("active");
					$(".content_left").find(".content_left_item[code='"+ code +"']").addClass("active");
					$(".content_right").find(".small_part_title").removeClass("active");
					$(".content_right").find(".small_part_title[code='"+ code +"']").addClass("active");
	            }
	            if(page5_index<=1){
	            	page5_index = 1;
	            	var code = "0"+ page5_index;
	            	$(".content_center").find("li").removeClass("active");
	            	$(".content_center").find("li[code='"+ page5_index +"']").addClass("active");
					$(".show_tip_num").find("span").text(code);
					$(".content_left").find(".content_left_item").removeClass("active");
					$(".content_left").find(".content_left_item[code='"+ code +"']").addClass("active");
					$(".content_right").find(".small_part_title").removeClass("active");
					$(".content_right").find(".small_part_title[code='"+ code +"']").addClass("active");
	            }
	        }
	        if(ev.preventDefault){/*FF 和 Chrome*/
	            ev.preventDefault();// 阻止默认事件
	        }
	        return false;
	    }
	  addEvent(oDiv,'mousewheel',onMouseWheel);
	  addEvent(oDiv,'DOMMouseScroll',onMouseWheel);
	  function addEvent(obj,xEvent,fn) {
		    if(obj.attachEvent){
		      obj.attachEvent('on'+xEvent,fn);
		    }else{
		      obj.addEventListener(xEvent,fn,false);
		    }
	  }
	}
}

//旅游解决方案
function tourism(){
	window.onload = function(){
	  $("#Tourism_lists").find("li[code='1']").addClass("active");
	  $("#Tourism_img_lists").find("li[code='1']").addClass("active");
	}
	$("#Tourism_lists").on("mouseenter", ".left_swiper_content", function(event) {
	  if (winW < 1200) return;
	  $("#Tourism_lists").find("li").removeClass("active");
	  $("#Tourism_img_lists").find("li").removeClass("active");
	  $(this).parents("li").addClass("active");
	  $("#Tourism_img_lists").find("li[code='"+ $(this).parents('li').attr("code") +"']").addClass("active");
	})
}

//企业营销解决方案
function marketing(){
	$("#importance_parts").on("mouseenter", ".import_item", function(event) {
	  if (winW < 1200) return;
	  $("#importance_parts").find(".import_item").removeClass("active");
	  $(this).addClass("active");
	})
}

//新闻资讯
function news(){
	//页面初始化加载第一页新闻列表内容,页码page为1
	var page = 1;
	getnewsList();
	$(".news_content_lists_ul").on("mouseenter","li.for_show",function(event){
		if (winW < 1200) return;
		$(".news_content_lists_ul").find("li").removeClass("active");
		$(this).addClass("active");
		$(".news_content_lists_ul").find("li").find("img").removeAttr("data-adaptive-background");
		$(this).find("img").attr("data-adaptive-background","true");
		$.adaptiveBackground.run({
			parent: $(".news_content"),
			normalizedTextColors:  {
			    light:      "#fff",
			    dark:       "#fff"
			},
		});
	}).on("mouseleave", "li.for_show", function(event) {
        if (winW < 1200) return;
        $(".news_content_lists_ul").find("li").removeClass("active");
        $(".news_content_lists_ul").find("li").find("img").removeAttr("data-adaptive-background");
        $(".news_content").css("background-color","#fff");
    })
	//鼠标滚轮事件，向上滚动时调用上一页内容，向下滚动时调用下一页的新闻列表,列表每次展现数量为5,此效果仅限PC端展示
	window.onload = function () {
	   if (winW < 1200) return;
	   var oDiv = document.getElementById('foronMouseWheel');
	   function onMouseWheel(ev) {/*当鼠标滚轮事件发生时，执行一些操作*/
	        var ev = ev || window.event;
	        var down = true; // 定义一个标志，当滚轮向下滚时，执行一些操作
	            down = ev.wheelDelta?ev.wheelDelta<0:ev.detail>0;
	        if(down){
	        	console.log("向下滚动，页码加一，获取下一页内容");
	        }else{
	        	console.log("向上滚动，页码减一，获取上一页内容");
	        }
	        if(ev.preventDefault){/*FF 和 Chrome*/
	            ev.preventDefault();// 阻止默认事件
	        }
	        return false;
	    }
	  addEvent(oDiv,'mousewheel',onMouseWheel);
	  addEvent(oDiv,'DOMMouseScroll',onMouseWheel);
	  function addEvent(obj,xEvent,fn) {
		    if(obj.attachEvent){
		      obj.attachEvent('on'+xEvent,fn);
		    }else{
		      obj.addEventListener(xEvent,fn,false);
		    }
	  }
	}
	//点击arrowdown加载下一页内容
	$(".arrowdown").click(function(){
		alert("正在加载")
	});
	//获取新闻列表接口
	function getnewsList(){
		console.log("获取页面新闻列表");
	}
}
//关于我们
function aboutUs(){
	
}
