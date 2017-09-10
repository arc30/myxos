decl
	integer status;
	integer status1;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print("create status:");print(status);
	breakpoint;	

//	status= Open ("myfile.dat");
//	print("open status:"); print(status);
	breakpoint;

	status1 = Write(status,"nahi");
	print("write status:");print(status1);
	breakpoint;

//	status1=Close (status);
//	print("close status:");print(status);
//	breakpoint;	
	return 0;
}
