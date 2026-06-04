#!/data/data/com.termux/files/usr/bin/tcsh

#this script is called when any app shares text string data with termux
#user shares urls from browserand this script first calls test2.lua to
#make url#url#url# and stores in a file urlConcat.txt because envirenment resets
#everytime this script is called so ive to delete urlConcat.txt manually
#before calling this script and then concatenated urls are pased to x variable
#that is passed to test.lua which opens them only if this app is not minimized

#echo 'hello';
#echo "$0 \n $1 \n $2"; #$<;
#echo "`lua /data/data/com.termux/files/home/test2.lua $1`";
#setenv q $q#`lua /data/data/com.termux/files/home/test2.lua $1`;

#echo "$1#" >> ./urlConcat.txt
(lua /data/data/com.termux/files/home/test2.lua $1;&);
#echo $cwd;
#lua -e "test2.lua $1";
tcsh -bcdftvxV 'source ./chrome.txt';
#bash -c 'echo "`<./urlConcat.txt`"';

#set x=`lua -e 'print(io.open("./urlConcat.txt"):read())'`;
#echo $x;
#instead of making the call to read all urls test3.lua will open not test.lua
#lua /data/data/com.termux/files/home/test.lua $x;

#sleep 10;
