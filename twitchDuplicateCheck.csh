#reset counter beforeeach start; check counter after looping; $c0...000 have results; 
#start with last file with every other; next with others skipping last one; next with others skipping all previous;
#4 > 3 2 1; 3 > 2 1; 2 > 1;
#5 > 4 3 2 1; 4 > 3 2 1; 3 > 2 1; 2 > 1;
@ $counter = 0;

foreach e ( `grep "" ./4thTwitchWhite.ascii` )
grep "$e" ./1stTwitchRed.ascii ; set s = $status;
if ( $s == 0 ) set c$counter = $e;
if ( $s == 0 ) @ counter = $counter + 1;
end
