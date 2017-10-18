decl
        integer status;
	
enddecl
integer main()
{	breakpoint;
        status = Open("myfile.dat");
        print(status);
	print(" tried to open file ");
	breakpoint;
	status= Close(Open("myfile.dat"));
	print(status);
	print("tried to close file");
	breakpoint;
        return 0;
}

