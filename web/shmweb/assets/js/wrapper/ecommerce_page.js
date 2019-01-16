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
	  navigation: {
	      nextEl: '.swiper-button-next',
	      prevEl: '.swiper-button-prev',
	  }
});  

//点击左侧切换右侧图标群
$(".left_type_btns ul").on("mouseenter","li",function(){
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
	if(document.getElementById("Ecommerce_part_1")){
		parallax();
	}
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
	//调用mock方法模拟数据
		var Random = Mock.Random;
		var dataarr = [];
		var newsList = [];
		for (var a = 1; a<=5;a++){
			var dataobj_list = {
				"name": Random.name(), //模拟名称
		    	"date": Random.date('MM-dd'),  //模拟时间
		    	"url": Random.url(),     //模拟url
		    	"content": Random.cparagraph(), //模拟文本
		    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
			}
			newsList.push(dataobj_list);
		}
		for(var i= 1;i<=5;i++){
			var dataobj = {
				"page": i,
				"newsList": newsList
			}
			dataarr.push(dataobj);
	  }
	//页面初始化加载第一页新闻列表内容,页码page为1
	var page = 1;
	getnewsList(page);
	//新闻列表背景色取色
	$(".news_content_lists_ul").on("mouseenter","li.for_show",function(event){
		if (winW < 1200) return;
		$(".news_content_lists_ul").find("li").removeClass("active");
		$(this).addClass("active");
		$(".news_content_lists_ul").find("li").find("img").removeAttr("data-adaptive-background");
		$(this).find("img").attr("data-adaptive-background","true");
		$.adaptiveBackground.run({
			parent: $(".news_content"),
			normalizedTextColors:  {
			    light: "#fff",
			    dark: "#fff"
			},
		});
	}).on("mouseleave", "li.for_show", function(event) {
        if (winW < 1200) return;
        $(".news_content_lists_ul").find("li").removeClass("active");
        $(".news_content_lists_ul").find("li").find("img").removeAttr("data-adaptive-background");
        $(".news_content").css("background-color","#fff");
   })
	//获取新闻列表接口
	function getnewsList(page){
		var html = "";
		var data = [];
		for (var i=0;i< dataarr.length-1;i++) {
			if(page == dataarr[i].page){
				data =  dataarr[i].newsList;
			}
		}
		if(data.length>0) {
			$.each(data, function(i,n) {
				html+="<li class='for_show'>"+
						"<a href='new_show.php?name=资讯中心'>"+
							"<div class='timeline-content'>"+
						        "<div class='new_dateTime'>"+
							        "<span>"+ n.date +"</span>"+
							        "<span>2019</span>"+
						        "</div>"+
						        "<div class='new_info_content'>"+
							        "<p class='new_title'>"+ n.name +"</p>"+
							        "<p class='news_shortInfo'>"+ n.content +"</p>"+
						        "</div>"+
					        "</div>"+
					        "<div class='bg_img'>"+
				            "<img class='forTestRgba active' id='images' src='"+ n.image +"'>"+
				            "</div>"+
		                "</a>"+
					"</li>"
		    });
		}
		if (winW > 1200){
			$("#foronMouseWheel").html("");
		};
		$("#foronMouseWheel").append(html);
//		$.ajax({            
//			url: "../news/api",    //请求的url地址
//          dataType: "json",   //返回格式为json
//          async: true, //请求是否异步，默认为异步，这也是ajax重要特性
//          data: {
//          	page:page
//          },    //参数值
//          type: "post",   //请求方式
//          beforeSend : function() {
//              //请求前的处理
//          },
//          success: function(data) {
//              //请求成功时处理
//              console.log(data);
//              var html = "";
//              if(data.length>0){
//              	
//              }else {
//              	
//              }
//          },
//          complete: function() {
//              //请求完成的处理
//          },
//          error: function() {
//              //请求出错处理
//          }
//      });
	}
    //请求加载更多新闻
    $(".arrowdown").click(function(){
    	if(page>=5){
    		page = 5;
    	}else {
    		page+=1;
    	}
    	if(!$(".arrowup").hasClass("hadPre")) {
    		$(".arrowup").addClass("hadPre");
    		$(".arrowup").attr("disabled","flase");
    	}
    	getnewsList(page);
    });
    //返回上一页
    $(".arrowup").click(function(event){
    	if(page<=1){
    		page = 1;
    		$(this).removeClass("hadPre");
    		$(".first_cricle").removeClass("dis_ni");
    	}else {
    		page-=1;
    		if(page == 1){
    		    $(this).removeClass("hadPre");
    		    $(".first_cricle").removeClass("dis_ni");
    		}
    	}
    	getnewsList(page);
    })
    //移动端加载更多
    $(".forMoreLoad").click(function(){
    	if(page>=5){
    		page = 5;
    	}else {
    		page+=1;
    	}
    	getnewsList(page);
    })
}
//关于我们
function aboutUs(){
	$(".submit").click(function(){
		
	})
}
