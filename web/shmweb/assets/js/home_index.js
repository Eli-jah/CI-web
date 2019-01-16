//全屏设置
$(document).ready(function() {
	$("header").removeClass("normal_page");
	$('#full_page').fullpage({
		sectionsColor: ['#1bbc9b', '#4BBFC3', '#7BAABE', '#f90', '#fff'],
        anchors: ['page1', 'page2', 'page3', 'page4', 'page5','footer'],
		menu: '#menu',
		normalScrollElements: '#foronMouseWheel',
		afterLoad: function(anchorLink, index){
			if(index == '1'||index == '3'){
				$(".logo_box .img2").css('opacity','0');
				$(".header_menu span").css("border-color","#fff");
				$(".local_name span").css("color","#fff");
			}else {
				$(".logo_box .img2").css('opacity','1');
				$(".header_menu span").css("border-color","#344356");
				$(".local_name span").css("color","#aaafb5");
			}
		},
		onLeave: function(index,nextIndex,direction){
			if(nextIndex == '1') {
				$(".first_tips").css("width","60px");
				$(".second_tips").css("width","44px");
				$(".third_tips").css("width","34px");
				$(".forth_tips").css("width","24px");
				$(".fifth_tips").css("width","14px");
				$(".page1").css("opacity","1");
				$(".page2").css("opacity","0.8");
				$(".page3").css("opacity","0.6");
				$(".page4").css("opacity","0.4");
				$(".page5").css("opacity","0.2");
				$("#menu li span").css("color","#fff");
				$("#menu li span").css("border-color","#fff");
				if($win.width() < 900){
		            $(".logo_box .img2").css('opacity','0');
					$(".header_menu span").css("border-color","#fff");
					$(".local_name span").css("color","#fff");
					$(".header_left").css("background","transparent");
					$(".full_page1").addClass("active");
		        }
			}
			if(nextIndex == '2') {
				$(".first_tips").css("width","44px");
				$(".second_tips").css("width","60px");
				$(".third_tips").css("width","44px");
				$(".forth_tips").css("width","34px");
				$(".fifth_tips").css("width","24px");
				$(".page1").css("opacity","0.8");
				$(".page2").css("opacity","1");
				$(".page3").css("opacity","0.8");
				$(".page4").css("opacity","0.6");
				$(".page5").css("opacity","0.4");
				$("#menu li span").css("color","#344458");
				$("#menu li span").css("border-color","#344458");
			}
			if(nextIndex == '3') {
				$(".first_tips").css("width","34px");
				$(".second_tips").css("width","44px");
				$(".third_tips").css("width","60px");
				$(".forth_tips").css("width","44px");
				$(".fifth_tips").css("width","34px");
				$(".page1").css("opacity","0.6");
				$(".page2").css("opacity","0.8");
				$(".page3").css("opacity","1");
				$(".page4").css("opacity","0.8");
				$(".page5").css("opacity","0.6");
				$("#menu li span").css("color","#fff");
				$("#menu li span").css("border-color","#fff");
				$(".change_box").find(".first_tip").trigger("click");
			}
			if(nextIndex == '4') {
				$(".first_tips").css("width","24px");
				$(".second_tips").css("width","34px");
				$(".third_tips").css("width","44px");
				$(".forth_tips").css("width","60px");
				$(".fifth_tips").css("width","44px");
				$(".page1").css("opacity","0.5");
				$(".page2").css("opacity","0.6");
				$(".page3").css("opacity","0.8");
				$(".page4").css("opacity","1");
				$(".page5").css("opacity","0.8");
				$("#menu li span").css("color","#344458");
				$("#menu li span").css("border-color","#344458");
			}
			if(nextIndex == '5') {
				$(".first_tips").css("width","14px");
				$(".second_tips").css("width","24px");
				$(".third_tips").css("width","34px");
				$(".forth_tips").css("width","44px");
				$(".fifth_tips").css("width","60px");
				$(".page1").css("opacity","0.2");
				$(".page2").css("opacity","0.4");
				$(".page3").css("opacity","0.6");
				$(".page4").css("opacity","0.8");
				$(".page5").css("opacity","1");
				$("#menu li span").css("color","#344458");
				$("#menu li span").css("border-color","#344458");
			}
			if(nextIndex == '6') {
				if($win.width() < 900){
		            $(".logo_box .img2").css('opacity','1');
					$(".header_menu span").css("border-color","#344356");
					$(".local_name span").css("color","#aaafb5");
					$(".header_left").css("background","#fff");
		       }
			}
		}
	});
});

$(function(){
	//首屏图片视差效果
	var oUl=document.getElementById('page1_banner'),
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
	//首屏第三屏幕
	var oUl1=document.getElementById('parallax_box'),
		l1 = oUl1.offsetWidth/2,
		t1 = oUl1.offsetHeight/2,
		aLi1=document.getElementsByClassName('moveimg');
		oUl1.onmousemove = function( ev ){
			var oEv = ev || event,
				iL = oEv.clientX,
				iT = oEv.clientY;
	
			for(var i=0; i<aLi1.length; i++){
				aLi1[i].style.marginLeft=(iL - l )/100*aLi1[i].style.zIndex+'px';
				aLi1[i].style.marginTop=(iT - t )/70*aLi1[i].style.zIndex+'px';
			}
		}
	$(window).resize(function(){
        autoScrolling();
    });
    function autoScrolling(){
        var $ww = $(window).width();
        if($ww < 1024){
            $.fn.fullpage.setAutoScrolling(false);
        } else {
            $.fn.fullpage.setAutoScrolling(true);
        }
    }
    autoScrolling();
});

//首页 banner
$(function() {
	//首屏第一个banner
	var swiper = new Swiper('#page1_banner', {
		  centeredSlides: true,
		  loop: true,
		  speed: 800,
		  effect : 'fade',
		  preventInteractionOnTransition : true,
		  fadeEffect: {
	        crossFade: true,
	      },
	//	  autoplay: {
	//	    delay: 3000,
	//	  },
		  pagination: {
		    el: '.banner-pagination',
		    clickable: true,
		  },
		  on:{
		      init: function(){
		        swiperAnimateCache(this); //隐藏动画元素 
		        swiperAnimate(this); //初始化完成开始动画
		      }, 
		      slideChangeTransitionEnd: function(){ 
		        swiperAnimate(this); //每个slide切换结束时也运行当前slide动画
		        //this.slides.eq(this.activeIndex).find('.ani').removeClass('ani'); 动画只展现一次，去除ani类名
		      } 
		  }

	});  
	//首屏page2的banner
	var swiper1 = new Swiper('#page2_banner', {
		  centeredSlides: true,
		  loop: false,
		  speed: 800,
		  effect : 'fade',
		  preventInteractionOnTransition : true,
		  fadeEffect: {
	        crossFade: true,
	      },
//		  autoplay: {
//		    delay: 3000,
//		  },
		  navigation: {
		      nextEl: '.swiper-button-next',
		      prevEl: '.swiper-button-prev',
		  },
		  on:{
		      init: function(){
		        swiperAnimateCache(this); //隐藏动画元素 
		        swiperAnimate(this); //初始化完成开始动画
		      }, 
		      slideChangeTransitionEnd: function(){ 
		        swiperAnimate(this); //每个slide切换结束时也运行当前slide动画
		        //this.slides.eq(this.activeIndex).find('.ani').removeClass('ani'); 动画只展现一次，去除ani类名
		      } 
		  }
	});  
	//首屏page4的banner
	var swiper2 = new Swiper('#page4_banner', {
	    slidesPerView: 'auto',
        centeredSlides: true,
        spaceBetween: 30,
        preventInteractionOnTransition : true,
	    pagination: {
	        el: '.page4-pagination',
	        clickable: true,
	        renderBullet: function (index, className) {
	          return '<span class="' + className + '">0' + (index + 1) + '</span>';
	        },
	    },
    });
});

//首屏第三屏的canvas
$(function() {
	//判断是否为移动端
	if(!/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
		//随机波浪
		if (!!window.ActiveXObject || "ActiveXObject" in window){ 
			return true; 
		}else{ 
			init(document.getElementById('particle_wave'));
		}
		if (navigator.userAgent.indexOf('Firefox') < 0) {
			//随机灰尘
			if (!!window.ActiveXObject || "ActiveXObject" in window){ 
				return true; 
			}else{ 
				particleinit();
			}
		}
	}
})

//首屏B2C与O2O的切换
$(".change_box").on("click","a", function(){
	$(".change_box").find("a").removeClass("active");
	$(this).addClass("active");
	$(".change_content").find(".change_content_part").removeClass("active");
    $(".change_content").find("div[name='"+ $(this).attr("name") +"']").addClass("active");
	if($(this).attr("name") == "B2C") {
		$(".full_page3").addClass("partone_bg");
		$(".full_page3").removeClass("parttwo_bg");
		$(".parttwo_bg_content").find(".part_title").addClass("partone_bg_text");
		$(".parttwo_bg_content").find(".part_title").removeClass("parttwo_bg_text");
		$("#menu li span").css("color","#fff");
		$("#menu li span").css("border-color","#fff");
		$(".logo_box .img2").css('opacity','0');
		$(".header_menu span").css("border-color","#fff");
		$(".local_name span").css("color","#fff");
	}else {
		$(".full_page3").addClass("parttwo_bg");
		$(".full_page3").removeClass("partone_bg");
		$(".parttwo_bg_content").find(".part_title").removeClass("partone_bg_text");
		$(".parttwo_bg_content").find(".part_title").addClass("parttwo_bg_text");
		$("#menu li span").css("color","#344458");
		$("#menu li span").css("border-color","#344458");
		$(".logo_box .img2").css('opacity','1');
		$(".header_menu span").css("border-color","#344356");
		$(".local_name span").css("color","#aaafb5");
	}
})

//点击首屏第五屏的步骤点
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
//首屏第五部分局部滚动
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
