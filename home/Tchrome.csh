#unsetenv * ;

set a = ( `grep "" /data/data/com.termux/files/usr/tmp/erl_tmp3 -m 1` ) ; set b = ( `date` ) ;
if ( $a[2] != $b[2] ) then ;
echo -n '' >& /data/data/com.termux/files/usr/tmp/erl_tmp3 ;
endif

set a = ( `grep -e "" /data/data/com.termux/files/usr/tmp/erl_tmp |& sed 1,2s/'#'/'\n'/g` ) ;
if ( $#a == 0 ) exit 0 ;
#( echo -n $a >& /data/data/com.termux/files/usr/tmp/erl_tmp2 ;&) ;& ;
set ft = `filetest -M: /data/data/com.termux/files/usr/tmp/erl_tmp2` ;
(\
\echo $ft >& /data/data/com.termux/files/usr/tmp/erl_tmp2 ;\
\echo -n $a >>& /data/data/com.termux/files/usr/tmp/erl_tmp2 ;\
\grep "" /data/data/com.termux/files/usr/tmp/erl_tmp2 >>& /data/data/com.termux/files/usr/tmp/erl_tmp3 ;&\
);&;
@ timer = 15 ;
@ counter = $#a ;
foreach b ( $a )
	if ( $counter != 0 ) @ counter = $counter - 1 ;
#	( sleep $timer\s; am start -n com.android.chrome/com.google.android.apps.chrome.Main -d $b; echo "Remaining " $counter;& );& ;
	( sleep $timer\s; am start -n mark.via.gp/mark.via.Shell -d $b; echo -n "\n Remaining " $counter;& );& ;
	@ timer += 15 ;
end
(echo -n "" >& /data/data/com.termux/files/usr/tmp/erl_tmp;&) ; & ;
unset timer counter a b ft ; wait ; exit 0 ;
