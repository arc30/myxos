integer main()
{

string filename;
integer stat;

integer i,pid;
i=0;

while(i<1) do
	print("#Arc$:");
	
	
		read (filename);
	
		if(filename=="exit") then
			Exit();
		endif;

		pid=Fork();
		
		if(pid==-1) then
			print("forkErr"); Exit();
		endif;		

		if(pid==-2) then
			stat=Exec(filename);
			if(stat==-1) then
				print("execErr"); Exit();
			endif;
		endif;
	//	stat=Wait(pid);

		if(pid!=-1 && pid!=-2) then
			
			stat=Wait(pid);	

			if(stat!=0) then
				print("WaitErr"); Exit();
			endif;		
		endif;

		if(filename=="exit") then
			Exit();
		endif;
endwhile;


return 0;
}
