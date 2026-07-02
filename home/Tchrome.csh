#unsetenv *;
set a = ( `grep -e "" /data/data/com.termux/files/usr/tmp/erl_tmp | sed 1,2s/'#'/'\n'/g` );
if ( $#a == 0 ) exit 0;
@ timer = 15;
@ counter = $#a;
foreach b ( $a )
	if ( $counter != 0 ) @ counter = $counter - 1;
#	( sleep $timer\s; am start -n com.android.chrome/com.google.android.apps.chrome.Main -d $b; echo "Remaining " $counter;& );& ;
	( sleep $timer\s; am start -n mark.via.gp/mark.via.Shell -d $b; echo "Remaining " $counter;& );& ;
	@ timer += 15;
end
echo "" > /data/data/com.termux/files/usr/tmp/erl_tmp; unset timer counter a b; exit 0;
