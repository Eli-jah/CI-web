	//调用mock方法模拟数据
	const Random = Mock.Random;
	const produceNewsData = function(options){
		console.log(options)
		let dataarr = [];
		let newsList = [];
		for (let a = 1; a<=5;a++){
			let dataobj_list = {
				"name": Random.name(), //模拟名称
		    	"date": Random.date('MM-dd'),  //模拟时间
		    	"url": Random.url(),     //模拟url
		    	"content": Random.cparagraph(), //模拟文本
		    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
			}
			newsList.push(dataobj_list);
		}
		for(let i= 1;i<=5;i++){
			let dataobj = {
				"page": i,
				"newsList": newsList
			}
			dataarr.push(dataobj);
	    }
		return {
			dataarr: dataarr
		}
//	var dataobj = [
//	{
//		"page":1,
//		"newsList":[{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		}]
//	},
//	{
//		"page":2,
//		"newsList":[{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		}]
//	},
//	{
//		"page":3,
//		"newsList":[{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		}]
//	},
//	{
//		"page":4,
//		"newsList":[{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		}]
//	},
//	{
//		"page":5,
//		"newsList":[{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		},
//		{
//			"name": Random.name(), //模拟名称
//	    	"date": Random.date('MM-dd'),  //模拟时间
//	    	"url": Random.url(),     //模拟url
//	    	"content": Random.cparagraph(), //模拟文本
//	    	"image": Random.image('200x100', '#894FC4', '#FFF', 'png', ''), //模拟图片
//		}]
//	}]
	
	Mock.mock('/news/api','post',produceNewsData);
	
}
