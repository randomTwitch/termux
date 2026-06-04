#time source ./twitchDuplicateCheck4th.csh > ./Dupdup.txt
#time source ./twitchDuplicateCheck1st.csh | less
set a = (`grep "" ./4thTwitchWhite.ascii | sed 1,3000s/https...m.twitch.tv.// | sed 1,3000s/http...m.twitch.tv.// | sed 1,3000s/.home//`);
echo $#a;
echo "---";
uniq -D ./4thTwitchWhite.ascii;
echo "---";
echo 4th uniqueness against 1st;
foreach aa ( $a )
	(grep /$aa/ ./1stTwitchRed.ascii;)&
end
echo "---";
echo 4th uniqueness against 2nd;
foreach aa ( $a )
	(grep /$aa/ ./2ndTwitchViolet.ascii;)&
end
echo "---";
echo 4th uniqueness against 3rd;
foreach aa ( $a )
	(grep /$aa/ ./3rdTwitchLblue.ascii;)&
end
unset a aa;
(sleep 20s && rm ./Dupdup.txt;&)&; exit 0;
