@ time = 15;
set a = ( `grep -e "" /data/data/com.termux/files/usr/tmp/erl_tmp | sed 1,2s/'#'/'\n'/g` );
if ( $#a == 0 ) exit 0;
@ counter = $#a;
foreach b ( $a )
	if ( $counter != 0 ) @ counter = $counter - 1;
	( sleep $time\s; am start -n com.android.chrome/com.google.android.apps.chrome.Main -d $b; echo "Remaining " $counter;& );& ;
	@ time += 15;
end
echo "" > /data/data/com.termux/files/usr/tmp/erl_tmp; unset time counter a b; exit 0;
