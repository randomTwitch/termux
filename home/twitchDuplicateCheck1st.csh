#time source ./twitchDuplicateCheck1st.csh > ./Dupdup.txt
#time source ./twitchDuplicateCheck1st.csh | less
set d = ( `grep "" ./1stTwitchRed.ascii | sed 1,3000s/https...m.twitch.tv.// | sed 1,3000s/http...m.twitch.tv.// | sed 1,3000s/.home//` );
echo $#d;
echo "---";
uniq -D ./1stTwitchRed.ascii;
echo "---";
echo 1st uniqueness against 2nd;
foreach aa ( $d )
	(grep /$aa/ ./2ndTwitchViolet.ascii;)&
end
echo "---";
echo 1st uniqueness against 3rd;
foreach aa ( $d )
	(grep /$aa/ ./3rdTwitchLblue.ascii;)&
end
echo "---";
echo 1st uniqueness against 4th;
foreach aa ( $d )
	(grep /$aa/ ./4thTwitchWhite.ascii;)&
end
unset d aa;
(sleep 20s && rm ./Dupdup.txt;&)&; exit 0;
