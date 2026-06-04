#!/data/data/com.termux/files/usr/bin/lua
--print(arg[1],"----",#arg);
--os.execute("tcsh -c '$<'");
do
	--[[local f <const> = function ()
		do
			local luaTfile=io.open('../usr/tmp/lua_azkw22',"a+"); luaTfile:write(string.format(arg[1]..'#')):flush(); luaTfile:close(); warn("@on"); warn(os.clock()); warn("@off");
			--os.execute("exec tcsh -bcdftvxV '(source ./chrome.txt;&)';");
			os.execute("exec tcsh -bcdftvxV '(am start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -p com.android.chrome;&)';");
			--os.exit(9,true); --program stops if uncomment this line
			--os.exit(0,true);
			local luaTfile <close> = nil;
			return;
		end
	end--]]
	--local f <const> = load([[local luaTfile=io.open('../usr/tmp/lua_azkw22',"a+"); luaTfile:write(string.format(arg[1]..'#')):flush(); luaTfile:close(); warn("@on"); warn(os.clock()); warn("@off");os.execute("exec tcsh -bcdftvxV '(am start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -p com.android.chrome;&)';");local luaTfile <close> = nil;return;]]);

	--local xpf <const> = function () do print('ERROR'); return; end end
	--local xpf <const> = load([[print('ERROR'); return;]]);
	--[[local cof <const> = function ()
		do
			local co=coroutine.create(f); local a,b,c=xpcall(coroutine.resume,xpf,co);
			--these commands never run function f closes with zero success else 9-255 stops it
			coroutine.close(co);
			a,b,c=pcall(print,os.clock());
			local co <close> = nil; local a <close> = nil; local b <close> = nil; local c <close> = nil;

			--os.exit(8,true);
			return;
		end
	end--]]
	--local cof <const> = load([[local co=coroutine.create(f);local a,b,c=xpcall(coroutine.resume,xpf,co);coroutine.close(co);a,b,c=pcall(print,os.clock());local co <close> = nil; local a <close> = nil; local b <close> = nil; local c <close> = nil;return;]]);
	--cof();
	--local f <close> = nil; local xpf <close> = nil; local cof <close> = nil;
	--
	local f <const> = load(
		[[local luaTfile=io.open('../usr/tmp/lua_azkw22',"a+"); luaTfile:write(string.format(arg[1]..'#')):flush(); luaTfile:close(); warn("@on"); warn(os.clock()); warn("@off");os.execute("exec tcsh -bcdftvxV '(am start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -p com.android.chrome;&)';");local luaTfile <close> = nil;return;]]
	)
	f()
	local f <close> = nil
	io.output("/dev/pts/1"):write(os.clock()):flush() --performance reporting purposes
	return
end
--function f () do local luaTfile=io.open('../usr/tmp/lua_azkw22',"a+"); luaTfile:write(string.format(arg[1]..'#')):flush(); luaTfile:close(); warn("@on"); warn(os.clock()); warn("@off");os.execute("exec tcsh -bcdftvxV '(am start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -p com.android.chrome;&)';");local luaTfile <close> = nil;return; end end
--f();
--io.output("/dev/pts/1"):write(os.clock()):flush(); --performance reporting purposes
--return;
