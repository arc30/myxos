integer main()
{
	integer pid,i,stat,dsc;
	print ("Before Fork");
	breakpoint;
	i=0;
		
	stat=Create("f4.dat");
	dsc=Open("f4.dat");

stat=Write(dsc,"parent");

	pid=Fork();
print(pid);
	if(pid==-2) then
print("//child");
		stat=Write(dsc,"child");
	endif;
		print("heysweety");
		
	
	
	return 0;
}
