#time source ./twitchDuplicateCheck3rd.csh > ./Dupdup.txt
#time source ./twitchDuplicateCheck1st.csh | less
set b = ( `grep "" ./3rdTwitchLblue.ascii | sed 1,3000s/https...m.twitch.tv.// | sed 1,3000s/http...m.twitch.tv.// | sed 1,3000s/.home//` );
echo $#b;
##
echo "---";
uniq -D ./3rdTwitchLblue.ascii;
echo "---";
echo 3rd uniqueness against 1st;
foreach aa ( $b )
	(grep /$aa/ ./1stTwitchRed.ascii;)&
end
echo "---";
echo 3rd uniqueness against 2nd;
foreach aa ( $b )
	(grep /$aa/ ./2ndTwitchViolet.ascii;)&
end
echo "---";
echo 3rd uniqueness against 4th;
foreach aa ( $b )
	(grep /$aa/ ./4thTwitchWhite.ascii;)&
end
unset b aa;
(sleep 20s && rm ./Dupdup.txt;&)&; exit 0;
