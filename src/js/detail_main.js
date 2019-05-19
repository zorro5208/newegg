requirejs.config({
    paths : {//重命名
        //新名字：旧名字
        //所有依赖
         "jquery": "../lib/jquery-1.10.1.min",
         "cookie":"../lib/jquery.cookie",
         "layui":"../lib/layui/layui.all",
         "magnifier": "../lib/magnifier",
         "detail": "detail",
         "head" : "head"
    },
    // 设置依赖关系
	shim:{//设置前后顺序
		'cookie':{
			deps: ["jquery"]
		},
		'detail':{
			deps:["jquery","cookie","layui","magnifier"]
		},
		'magnifier':{
			deps: ["jquery"]
		},
		'head':{
			deps: ["jquery"]
		}
    }
});

//main.js-----
requirejs(['jquery','cookie','magnifier','layui','detail','head'],function($){
    
});