--this program is called by ~/UPGRADE.csh
--package.searchpath if true require lua module
--a=package.searchpath("upgradeModule","/data/data/com.termux/files/usr/local/LuaUpgrade/?.lua"); print(a);
--for i,j in pairs(package.loaded) do print(i,j) end
--for i,j in pairs(_ENV) do print(i,j) end
----_VERSION=nil; _G=nil; --_ENV=nil;
----package.path  = "/data/data/com.termux/files/usr/local/LuaUpgrade/?.lua";
--b,c=require("upgradeModule"); true, string
--package can return only one value if returns nothing default return vales are 'true' and 'package.path'
--a,b,c,d,e=require("upgradeModule"); print(a,b,c,d,e);
----require("upgradeModule"); --io.output():write(_T);
--print(_T);
do
	--package.preload['uploadModule'] = function (...) os.exit(9);  end;
	--could've made pcall to load or 'io.tmpfile' read seek and get string value to load's argument/parameter
	--that tmpFile can then be reseeked reread from inside 'require' module/script/program/method/procedure
	local f <const> = load([[_VERSION=nil;
	_G=nil;  
	package.path  = "/data/data/com.termux/files/usr/local/LuaUpgrade/?.lua";
	require("upgradeModule"); package['loaded']['upgradeModule'] = nil; package.loaded.package = nil; package.loaded['math'] = nil; package['loaded'].debug = nil; return;
	]],"bt");
	
	----local tmpFile <const> = io.tmpfile(); io.output(tmpFile):write([[_VERSION=nil;
        ----_G=nil;
        ----package.path  = "/data/data/com.termux/files/usr/local/LuaUpgrade/?.lua";                                                       require("upgradeModule"); return;
        ----]]):flush();
	----tmpFile:seek('set');
	----local f <const> = dofile('tmpFile'); --FILE NOT FOUND
	----local f <const> = pcall(dofile,'tmpFile');
	----tmpFile:close();
	----local tmpFile <close> = nil;

	--f();
	local co <const> = coroutine.create(f); pcall(coroutine.resume,co); pcall(coroutine.close,co);
	local f <close> = nil; local co <close> = nil;
	--[[package['loaded']['upgradeModule'] = nil;]] --for i,j in pairs(package['loaded']) do print(i,j); end;
	return;
end
--return;
