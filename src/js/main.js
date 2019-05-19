requirejs.config({
    paths : {//重命名
        //新名字：旧名字
        //所有依赖
         "jquery": "../lib/jquery-1.10.1.min",
         "cookie":"../lib/jquery.cookie",
         "swiper":"../lib/swiper.min",
         "layui":"../lib/layui/layui",
         "common": "common",
         "index": "index",
         "head" : "head"
    },
    // 设置依赖关系
	shim:{//设置前后顺序
		'cookie':{
			deps: ["jquery"]
		},
		'swiper':{
			deps: ["jquery"]
		},
		'index':
			["jquery","cookie","swiper","common","layui"]
		,
		'head':{
			deps: ["jquery"]
		}
		
		
    }
});

//main.js-----
requirejs(['jquery','cookie','swiper','common','layui','index','head'],function($){
    
});