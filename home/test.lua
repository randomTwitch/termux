--this script is called by ~/test3.lua
-- print(os.date().."\n"..#arg);
--[[print(#arg); ]] --a=arg; 
-- b=string.sub(a,r,j)
-- print(type(arg)..type(a))

---[[
--a={};
--for b, c in pairs(arg) do
--  if --[[b ~= -1 or--]] b > 0 then
--    a[b]=c;
--    print(#a .. a[b]);
--  end
  --print(b .. c);
  --print(arg)
--end
--]]
-- for i=1,2 do print('test'); end
--[[
do
  ---[[
  x=1; y={}; z=1; a=arg; w=0; v={}; s={};
  while z~=nil do 
    z=string.find(a[1],'#',x);
    if z~=nil then x=z+1; print(z); table.insert(v,z); end
  end
  x=1; --print(#v);
  for t,u in pairs(v) do
    --print(t,u);
    --print(string.sub(a[1],x,v[t]-1)); 
    table.insert(s,string.sub(a[1],x,v[t]-1)); x=v[t]+1;
  end
  --for i=1,#s do print(s[i]); end
  local tmpFile=io.tmpfile();
  io.output(tmpFile):write("am start -a \"android.intent.action.VIEW\" -n \"org.mozilla.firefox/org.mozilla.fenix.IntentReceiverActivity\" --activity-clear-task --es \"com.android.browser.application_id\" \"org.mozilla.firefox\" -d ");
  for i=1,#s do
    --os.execute("../usr/bin/tcsh -c 'builtins'");
    os.execute("(tcsh -c 'source ~/init.csh')&"); -- execute in sub shell in background
    --os.execute('am start -a "android.intent.action.VIEW" -n "org.mozilla.firefox/org.mozilla.fenix.IntentReceiverActivity" ' .. '-d \"' .. s[i] .. '\" ' .. '--activity-clear-task --es "com.android.browser.application_id" "org.mozilla.firefox"&');
    --os.execute('(tcsh -c "source ./firefox.txt ' .. s[i] .. '"&)'); --file got deleted
    tmpFile:seek("set"); local c=io.output(tmpFile):read(); --print("(tcsh -bcf '"..c.."\""..s[i].."\"'&)");
    os.execute("(tcsh -bcf '"..c.."\""..s[i].."\"'&)");
    os.execute('sleep 15s'); -- user will unfocus the app for next link to open
    --print(s[i]);
  end
  tmpFile:close();
  --print(string.sub(a[1],x,v[1]-1))
  --table.insert(u,string.sub(a[1],x,v[1]-1));
  --]]
  --print(string.find(a[1],'@',1));
--end
--]]
--[[
for i=1, #s do
  os.execute('am start -a "android.intent.action.VIEW" -n "org.mozilla.firefox/org.mozilla.fenix.IntentReceiverActivity" ' .. '-d \"' .. s[i] .. '\" ' .. '--activity-clear-task --es "com.android.browser.application_id" "org.mozilla.firefo"');
  os.execute("sleep 4s");
end
--]]

function f (...)
	do
		x=1; y={}; z=1; a=arg; w=0; v={}; s={};
		while z~=nil do 
			z=string.find(a[1],'#',x);
			if z~=nil then x=z+1; print(z); table.insert(v,z); end
		end
		x=1; --print(#v);
		for t,u in pairs(v) do
			--print(t,u);
			--print(string.sub(a[1],x,v[t]-1)); 
			table.insert(s,string.sub(a[1],x,v[t]-1)); x=v[t]+1;
		end
		--for i=1,#s do print(s[i]); end
		local tmpFile=io.tmpfile();
		io.output(tmpFile):write("am start -a \"android.intent.action.VIEW\" -n \"org.mozilla.firefox/org.mozilla.fenix.IntentReceiverActivity\" --activity-clear-task --es \"com.android.browser.application_id\" \"org.mozilla.firefox\" -d ");
		for i=1,#s do
			--os.execute("../usr/bin/tcsh -c 'builtins'");
			os.execute("(tcsh -c 'source ~/init.csh')&"); -- execute in sub shell in background
			--os.execute('am start -a "android.intent.action.VIEW" -n "org.mozilla.firefox/org.mozilla.fenix.IntentReceiverActivity" ' .. '-d \"' .. s[i] .. '\" ' .. '--activity-clear-task --es "com.android.browser.application_id" "org.mozilla.firefox"&');
			--os.execute('(tcsh -c "source ./firefox.txt ' .. s[i] .. '"&)'); --file got deleted
			tmpFile:seek("set"); local c=io.output(tmpFile):read(); --print("(tcsh -bcf '"..c.."\""..s[i].."\"'&)");
			os.execute("(tcsh -bcf '"..c.."\""..s[i].."\"'&)"); --print(c.."\""..s[i].."\"");
			os.execute('sleep 15s'); -- user will unfocus the app for next link to open
		end
	end
end
function xpf () do print('ERROR');  end end
function cof ()
	do
		local co=coroutine.create(f); local a,b,c=xpcall(coroutine.resume,xpf,co); coroutine.close(co);
		a,b,c=pcall(print,os.clock()); os.exit(8,true);
	end
end
cof();
