## special chars twitch app
	echo '<'$$'>';
	set f = (`grep "" $1`);
	set f = (`echo -n "$f" | sed 1,2s/'('//g | sed 1,2s/')'//g`);
	grep /$f[3]/ $p1 >& /dev/null; set s=$status;
	if ( $s == 0 ) then;
		echo "$f[3] found in 1stTwitchRed.ascii"; sleep 2s; exit 2;
	endif

	grep /$f[3]/ $p2 >& /dev/null;set s=$status;
	if ( $s == 0 ) then;
		echo "$f[3] found in 2ndTwitchViolet.ascii"; sleep 2s; exit 2;
	endif

	grep /$f[3]/ $p3 >& /dev/null; set s=$status;
	if ( $s == 0 ) then;
		echo "$f[3] found in 3rdTwitchLblue.ascii"; sleep 2s; exit 2;
	endif

	grep /$f[3]/ $p4 >& /dev/null; set s=$status;
	if ( $s == 0 ) then;
		echo "$f[3] found in 4thTwitchWhite.ascii"; sleep 2s; exit 2;
	endif

	(rm $1;&);&;
	(echo "https://m.twitch.tv/$f[3]/home" >>& $p4;&);&;
	(echo -n "https://m.twitch.tv/$f[3]/home#" >>& $p0;&);&; wait;
	unset e p00 p0 p1 p2 p3 p4 mgs_error mgs_exit mgs_pass s f; exit 1; 
## special chars twitch app
