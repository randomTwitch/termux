#time source ./twitchDuplicateCheck2nd.csh > ./Dupdup.txt
#time source ./twitchDuplicateCheck1st.csh | less
set c = ( `grep "" ./2ndTwitchViolet.ascii | sed 1,3000s/https...m.twitch.tv.// | sed 1,3000s/http...m.twitch.tv.// | sed 1,3000s/.home//` );
echo $#c;
echo "---";
uniq -D ./2ndTwitchViolet.ascii;
echo "---";
echo 2nd uniqueness against 1st;
foreach aa ( $c )
	(grep /$aa/ ./1stTwitchRed.ascii;)&
end
echo "---";
echo 2nd uniqueness against 3rd;
foreach aa ( $c )
	(grep /$aa/ ./3rdTwitchLblue.ascii;)&
end
echo "---";
echo 2nd uniqueness against 4th;
foreach aa ( $c )
	(grep /$aa/ ./4thTwitchWhite.ascii;)&
end
unset c aa;
(sleep 20s && rm ./Dupdup.txt;&)&; exit 0;
