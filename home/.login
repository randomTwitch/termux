setenv PS_FORMAT ni,tty,ppid,pid,nlwp,%cpu,%mem,cp,comm,lwp,etime,start_time,tid,thcount;
setenv LESS "--use-color --long-prompt --line-numbers --tilde -P %m";
alias jobcmd "jobs -l";
set implicitcd=verbose; set listjobs=long; set printexitvalue; set time="1 %k"; set savehist="50 merge"; set savedirs="10"; set dirsfile="/data/data/com.termux/files/home/.dirsfile"; set histdup="erase"; set histfile="/data/data/com.termux/files/home/.histfile"; set loginsh="true";
alias shell ~/../usr/bin/tcsh;
alias helpcommand "man"; alias update "( sleep 3s && echo -n "fg" >> `tty` ; & ) & ; ( apt-get update ; & ) && ( echo -n 'y' |& apt-get upgrade ; & ) | & ( more ) & ;"; alias procTempIP "( sleep 3s && ( ( lsclocks --cpu-clock 1 ; & ) | & ( grep cpu ; & ) && ( lsclocks --cpu-clock 2 ; & ) | & ( grep cpu ; & ) && ( lsclocks --cpu-clock 6 ; & ) | & ( grep cpu ; & ) && ( termux-battery-status ; & ) | & ( grep temp ; & ) && ( ifconfig ; & ) | & ( grep inet ; & ) ; & ) | & ( ( more ) ) ; & ) & ;"; alias erl_count "grep '#' ../usr/tmp/erl_tmp | sed 1,2s/#/#'\n'/g | grep '#' -c";
renice +20 $$;
exit 0;
