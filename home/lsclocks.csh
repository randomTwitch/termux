#source it in terminal set t to a number before 
#@ t=1;
while ( $t )
#while? if ! ( $t % 25 ) break ; @ t=$t + 1 ; lsclocks --cpu-clock=$t | grep 'cpu' ; # interactive terminal mode commandline
#while? end # interactive terminal mode commandline
if ! ( $t % 25 ) break ; @ t=$t + 1 ; lsclocks --cpu-clock=$t | grep 'cpu' ;
end
#alias firstSecondTopProcClockTicks "lsclocks --cpu-clock `ps -eo tty,pid | grep -e 'pts/0' | grep -o -e '[0-9]*' | grep '[^0|^1]' | sed 1,2i\\' \'-c' '` | grep cpu ; lsclocks --cpu-clock `ps -eo tty,pid | grep 'pts/1' | grep -o -e '[0-9]*' | grep '[^1]'` | grep cpu ; lsclocks --cpu-clock `ps -eo tty,ppid | grep 'pts/0' | grep -o -e '[0-9]*' | grep '[^0]'` | grep cpu ;";

