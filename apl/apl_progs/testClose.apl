decl
        integer status;
	integer status1;
enddecl
integer main()
{	status=Open("myfile.dat");
	status1=Close(status);
	print(status1);
	print("tried to close file");
	breakpoint;
	status=Delete("myfile.dat");
	print("called delete"); print(status);
	breakpoint;
        return 0;
}

