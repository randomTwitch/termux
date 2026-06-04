" import "./test.js" as nodejs
" galaxy vim comment
if !has('vim9script')
	" legacy big W s:bin two tab space		
	finish
endif

vim9script
import autoload "./test.js" as nodejs
# var x:number = () => { return <string>2; };
def F(arg: list<any>=null_list)
 var X: any = () => ({ })
 legacy let varr = 10
 legacy terminal echo s:varr && read && exit
 echo X->typename()
enddef

F()
#call getchar()
#call test#F()
