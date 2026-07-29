set f=(`echo "$1" | sed 1,2s/'?'/'#'/m1`); set d = $status;
if ( $d == 0 ) set e=$f[2] ;
if ( $d == 0 ) set ee=$f[2] ; unset f d;
echo "https://m.twitch.tv/$e/home";
echo "https://m.twitch.tv/$ee/home";
