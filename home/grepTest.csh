#set t="https://m.twitch.tv/avagg/home";
#set tt=`echo $1 | sed -e 1,2s/.home// | sed -e 1,2s/https...m.twitch.tv.//`;
#set ttt=`grep $tt ./1stTwitchRed.ascii`;
#echo $ttt; echo $t; echo $1;
#if ( `grep $1 ./1stTwitchRed.ascii` == $t ) exit 0;
#echo "ended";
#grep $tt ./1stTwitchRed.ascii; if $status == 0 echo "$1 t" && $< && exit 0;
if 1 == 1 then;
	echo "t"; 
	echo "tt"; 
	#else if 1 != 1 then; 
	#echo "T"; 
	#echo "TT"; 
	#else if 0 != 0 then; 
	#echo "TTT"; 
	#echo "TTTT"; 
	#else 
	#echo "exit"; echo "exit"; 
endif
