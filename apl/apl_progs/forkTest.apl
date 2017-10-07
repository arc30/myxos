integer main()
{
	integer pid;
	print ("Before Fork");
	breakpoint;
	pid = Fork();
	print ("After Fork");
	print(pid);
	breakpoint;
	return 0;
}
