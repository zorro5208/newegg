"use strict";requirejs.config({paths:{jquery:"../lib/jquery-1.10.1.min",cookie:"../lib/jquery.cookie",common:"common",register:"register"},shim:{cookie:{deps:["jquery"]},register:{deps:["jquery","cookie","common"]}}}),requirejs(["jquery","cookie","common","register"],function(){});