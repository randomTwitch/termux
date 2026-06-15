--this script is loaded by 'luaPeriodicModuleLoader' tried to use goto labels while loops inside 'tcsh -bcf' didnt work so wrote command 6 times and it runs under 1st process and then user need to do 'tcsh -bl' and quit to run again and again
do
	local f <const> = function ()
		return;
	end
	local xpf <const> = function ()
		return 7;
	end
	local cof <const> = function ()
		f();
		return;
	end
	--cof();
	--return;
end

--os.execute runs sh shell and the comms in double quotes, exec replaces the shell and comms
----os.execute("exec tcsh -bcf 'sleep 240m && time && uptime && pstree -ap && ps efk +etime && source ./UPGRADE;\
----	sleep 240m && time && uptime && pstree -ap && ps efk +etime && source ./UPGRADE;\
----	sleep 240m && time && uptime && pstree -ap && ps efk +etime && source ./UPGRADE;\
----	sleep 240m && time && uptime && pstree -ap && ps efk +etime && source ./UPGRADE;\
----	sleep 240m && time && uptime && pstree -ap && ps efk +etime && source ./UPGRADE;\
----	sleep 240m && time && uptime && pstree -ap && ps efk +etime && source ./UPGRADE;'");
os.execute("exec tcsh -bcf 'sleep 420m && time && uptime && pstree -ap && ps efk +etime && source ./UPGRADE;\
	sleep 420m && time && uptime && pstree -ap && ps efk +etime && source ./UPGRADE;'");

--os.execute("time && uptime && pstree -ap && ps efk +etime && source ./UPGRADE");
--os.execute("sleep 10m");
return;
