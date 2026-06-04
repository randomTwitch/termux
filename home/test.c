#include<stdio.h>
//#include<pthread.h>
//#include<stdlib.h>
#include<ncurses.h>

//int func();
int main(int argc,char* argv[])
{
	int a=0; int* p=&a; a=2; printf("%d\n",*p); char b='c';
	printf("\033[1;34m%c\n%s\n%s\n\033[0m",*&b,argv[0],argv[1]);
	//return 12;
	//if (a>=0) { }
	//printf("%d",a);
	//printf("%d",a);
	//int a=0; a=1;
	//asm ("ldr w0,#-16;\
	cmp w0,w0;\
		");
	//asm ("mov w8,#99;");
	//printf("%d",a);	
	//asm ("mov x1,#23;b printf;");
	//func();
	
	//char* str="date";
	//system(str);
	//int x=rand();
	//printf("%d and %d\n",x,clock());	
	//exit(23);
}
//int func( ) { /*printf("H");*/ }
