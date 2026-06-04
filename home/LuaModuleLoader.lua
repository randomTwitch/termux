--#a is a global variable
--a=require("LuaModule");
--a=package.searchpath("init","/data/data/com.termux/files/usr/local/?.lua"); print(a);
--a=package.searchpath("init","/data/data/com.termux/files/usr/home/?.lua"); print(a);

--a=require("init"); -- [ setenv LUA_PATH /data/data/com.termux/files/usr/local/init.lua || setenv LUA_PATH_5_4 /data/data/com.termux/files/usr/local/init.lua ]

a=require("LuaModule");

--for i,j in pairs(package['preload']) do print(i,'####',j); end for i,j in pairs(package.loaded) do print(i,'###',j); end
--when a module prints its not considered a return value unless its a shell substitute then only print counts as return values
print(type(a),#a,#_G);
--return _G;
