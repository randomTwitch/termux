## special chars twitch app
	echo '<'$$'>';
	set f = (`grep "" $1`);
	set f = (`echo -n "$f[3]" | sed 1,2s/'('//g | sed 1,2s/')'//g`);
	set f=(`echo -n $f | & sed 1,2s/'[A]'/a/g | & sed 1,2s/'[B]'/b/g | & sed 1,2s/'[C]'/c/g | & sed 1,2s/'[D]'/d/g | & sed 1,2s/'[E]'/e/g | & sed 1,2s/'[F]'/f/g | & sed 1,2s/'[G]'/g/g | & sed 1,2s/'[H]'/h/g | & sed 1,2s/'[I]'/i/g | & sed 1,2s/'[J]'/j/g | & sed 1,2s/'[K]'/k/g | & sed 1,2s/'[L]'/l/g | & sed 1,2s/'[M]'/m/g | & sed 1,2s/'[N]'/n/g | & sed 1,2s/'[O]'/o/g | & sed 1,2s/'[P]'/p/g | & sed 1,2s/'[Q]'/q/g | & sed 1,2s/'[R]'/r/g | & sed 1,2s/'[S]'/s/g | & sed 1,2s/'[T]'/t/g | & sed 1,2s/'[U]'/u/g | & sed 1,2s/'[V]'/v/g | & sed 1,2s/'[W]'/w/g | & sed 1,2s/'[X]'/x/g | & sed 1,2s/'[Y]'/y/g | & sed 1,2s/'[Z]'/z/g`); #echo $f; $<;
	grep /$f/ $p1 >& /dev/null; set s=$status;
	if ( $s == 0 ) then;
	(termux-toast "$f found in 1stTwitchRed.ascii";&);&; sleep 2s; exit 2;
	endif

	grep /$f/ $p2 >& /dev/null;set s=$status;
	if ( $s == 0 ) then;
	(termux-toast "$f found in 2ndTwitchViolet.ascii";&);&; sleep 2s; exit 2;
	endif

	grep /$f/ $p3 >& /dev/null; set s=$status;
	if ( $s == 0 ) then;
	(termux-toast "$f found in 3rdTwitchLblue.ascii";&);&; sleep 2s; exit 2;
	endif

	grep /$f/ $p4 >& /dev/null; set s=$status;
	if ( $s == 0 ) then;
	(termux-toast "$f found in 4thTwitchWhite.ascii";&);&; sleep 2s; exit 2;
	endif

	(rm $1;&);&;
	(echo "https://m.twitch.tv/$f/home" >>& $p4;&);&;
	(echo -n "https://m.twitch.tv/$f/home#" >>& $p0;&);&; wait;
	unset e p00 p0 p1 p2 p3 p4 mgs_error mgs_exit mgs_pass s f; exit 1; 
## special chars twitch app
