integer main()
{

integer pid;
integer stat;
pid=Fork();





if(pid==-2) then //child process
	stat=Exec("odd.xsm");
else
	stat=Exec("even.xsm");
endif;

if(pid==-2) then
	print("childpid");stat=Getpid();print(stat);
	print("childPPId"); stat=Getppid();print(stat);
endif;

return 0;
}

