"use strict";requirejs.config({paths:{jquery:"../lib/jquery-1.10.1.min",cookie:"../lib/jquery.cookie",layui:"../lib/layui/layui.all",magnifier:"../lib/magnifier",detail:"detail",head:"head"},shim:{cookie:{deps:["jquery"]},detail:{deps:["jquery","cookie","layui","magnifier"]},magnifier:{deps:["jquery"]},head:{deps:["jquery"]}}}),requirejs(["jquery","cookie","magnifier","layui","detail","head"],function(){});