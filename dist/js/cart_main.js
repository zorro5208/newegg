"use strict";requirejs.config({paths:{jquery:"../lib/jquery-1.10.1.min",cookie:"../lib/jquery.cookie",cart:"cart",head:"head"},shim:{cookie:{deps:["jquery"]},cart:{deps:["jquery","cookie"]},head:{deps:["jquery"]}}}),requirejs(["jquery","cookie","cart","head"],function(){});