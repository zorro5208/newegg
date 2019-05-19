requirejs.config({
    paths : {//重命名
        //新名字：旧名字
        //所有依赖
         "jquery": "../lib/jquery-1.10.1.min",
         "cookie":"../lib/jquery.cookie",
         "login": "login",
    },
    // 设置依赖关系
	shim:{//设置前后顺序
		'cookie':{
			deps: ["jquery"]
		},
		'login':{
			deps:["jquery","cookie"]
		}
    }
});

//main.js-----
requirejs(['jquery','cookie','login'],function($){
    
});