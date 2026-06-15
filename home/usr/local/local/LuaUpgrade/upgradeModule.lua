--this script/program/module is loaded/run by "../usr/local/upgradeModuleLoader.lua"
--this module takes 2 number arguments and returns their sub 
do
--_G={...}; --gets the arguments passed to this script and sets global table
	local f <const> = function ()
		do
			--print(#_G); -- global table
			local _G=arg; --arg=nil; --local _G={...};
			if ( #_G == 0 or #arg == 0 ) then error("ERROR"); return; end
--calling this script without arguments, statement below will raise error because _G is nil and xpcall in cof()
--will return and printout clock and exit with 8 code not 9
			local tmpFile=io.tmpfile(); local _G = _G[1] - _G[2];
			io.output(tmpFile):write(string.format('%x',_G)):flush();
			local _G <close> = nil;
			tmpFile:seek('set');
			--if i had io.output on a real file it would've destroyed its contents
			local G=io.output(tmpFile):read(); --_T=G;
			print(G); local G <close> = nil; --io.output():write(G);
			tmpFile:close(); local tmpFile <close> = nil; return; end
--this statement will never execute because of last line 'end' that closed the do block
--now program returns after 'xpcall' even if user gave arguments to the program
			os.exit(9,true);
		--end
	end
	local xpf <const> = function (...) do print('ERROR'); return 10; end  end
	local cof <const> = function ()
		do
--coroutine.resume always returns true error raised or not
			local co <const> = coroutine.create(f); local a <const>,b <const>,c <const> = xpcall(coroutine.resume,xpf,co);
			coroutine.close(co);
			local co <close> = nil; local a <close> = nil; local b <close> = nil; local c <close> = nil;
			--local x,y,z=pcall(print,os.clock()); local x <close> = nil; local y <close> = nil; local z <close> = nil;
			return; end
--this statement will never execute because of last lines 'end' that closed do block
--no statements allowed after return
			os.exit(b or 10,true);
		--end
	end
	cof();
	local f <close> = nil; local xpf <close> = nil; local cof <close> = nil;
	--return true, package.path;
	return;
end
--return true, package.path;
