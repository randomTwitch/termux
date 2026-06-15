--this loader is called by ~/.login tcsh script
do
	--package.path  = "/data/data/com.termux/files/usr/local/LuaPeriodic/?.lua";
	--local f <const> = nil;
	----a=dofile("/data/data/com.termux/files/usr/local/LuaPeriodic/luaPeriodicModule.lua"); print(a);
	dofile("/data/data/com.termux/files/usr/local/LuaPeriodic/luaPeriodicModule.lua");
	--local xpf <const> = nil;
	--local co <const> = coroutine.create(f); pcall(coroutine.resume,co); pcall(coroutine.close,co);
	--local co <close> = nil; local f <close> = nil;
	
	------local tmpFile <const> = io.tmpfile(); io.output(tmpFile):write();
	------local.f <const> = load();
	
	return;
end
--return;
