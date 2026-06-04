#this script is non executable source[ed] by ~/test3.lua that darkens then bold resets terminal color
#resetting the terminal color
#printf '\033[0m';
#bold color Gray
#if ( $1 == 1 ) printf '\033[0m' && printf '\033[1;30m' && echo 1 && exit;
#Dark color Gray
#if ( $1 == 2 ) printf '\033[0m' && printf '\033[2;30m' && echo 2 && exit;

#echo dark;
#printf '\033[0m';
printf '\033[2;30m';
