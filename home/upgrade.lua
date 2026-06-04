--source ./UPGRADE; lua ./upgrade.lua; periodic;
--this script is called by ~/UPGRADE[.csh] and periodic alias passing current date in seconds and ~/UPGRADE[.csh] last accessed time in seconds as first and seconds arguments and then this script returns hex difference of the time ~/UPGRADE[.csh] last accessed time is only updated by "touch" command if tcsh shell user logins or the .csh script runs all the way through

--do
-- local _G=arg; -- local _G={...};
-- local function f ( self,a,b ) 
--	 do
--		 local tmpFile=io.tmpfile(); --[[local a=_G[1]; local b=_G[2]; local c=a-b;--]] local _G=_G[1]-_G[2]; --[[print(string.format('%x',_G));--]] io.output(tmpFile):write(string.format('%x',_G)):flush(); --[[print(tmpFile:seek());--]] tmpFile:seek('set'); --[[print(tmpFile:seek());--]] local G=io.output(tmpFile):read(); print(G); --[[io.output():write(G);--]] --[[tmpFile:seek('set'); io.output():write(io.output(tmpFile):read());--]] tmpFile:close();
       --<->-<->--- io.output():write(...)  and io.input():read() only works in os.execute("") that is standard input and outputso that you are printing to right tty device the upper command without print prints to wrong tty device
		 --os.execute("exec env a=".._G[1].." b=".._G[2].." lua -e \"".."do local a=os.getenv('a'); local b=os.getenv('b'); local c=a-b; --[[print(string.format('%x',c));--]] --[[pcall(io.write,string.format('%x',c));--]] io.output():write(string.format('%x%s%c',c,' ',10):format('%w',' ')):flush()--[[:close()--]]; end\"");
--	 end
	 --return self,a,b;
-- end;
-- table.insert(_G,f);
-- co=coroutine.create(f); coroutine.resume(co); coroutine.close(co);
 --[[xpcall(io.write,print,'\n',os.clock());--]]
 --[[pcall(print,os.clock());--]]
 --[[io.output():write(os.clock(),string.format('%s%c',' ',10)):flush()--[[:close()--]];--]]
 --f();
-- print(_G[1],#_G);

-- os.execute("exec env a=".._G[1].." b=".._G[2].." lua -e \"".."do local a=os.getenv('a'); local b=os.getenv('b'); print(a,b); end\"");

-- os.execute("exec env a=".._G[1].." b=".._G[2].." lua -e \"".."do local a=os.getenv('a'); local b=os.getenv('b'); local c=a-b; print(c); end\"");

-- os.execute("exec tcsh -bcf 'echo $test'");
--
-- local a=0x1-0x2;
-- print(a);
-- os.execute("exit 9");
--print(#_G);
--os.exit(8,true);
--end

--_G={...}; --gets the arguments passed to this script and sets global table
do
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
			local G=io.output(tmpFile):read();
			print(G); local G <close> = nil;--io.output():write(G);
			tmpFile:close(); local tmpFile <close> = nil; return; end
			os.exit(9,true);
		--end
	end
	--local xpf <const> = function (...) do print('ERROR'); return 10; end  end
	local xpf <const> = load("do --[[local a,b,c=...;]] print('ERROR'); return 10; end","bt");
	local cof <const> = function ()
		do
--coroutine.resume always returns true error raised or not
			local co <const> = coroutine.create(f); local a <const>,b <const>,c <const> = xpcall(coroutine.resume,xpf,co);
			coroutine.close(co);
			local co <close> = nil; local a <close> = nil; local b <close> = nil; local c <close> = nil;
			local x,y,z=pcall(print,os.clock()); local x <close> = nil; local y <close> = nil; local z <close> = nil; return; end
			os.exit(b or 10,true);
		--end
	end
	cof();
	local f <close> = nil; local xpf <close> = nil; local cof <close> = nil;
	return;
end
--return;
