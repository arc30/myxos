decl
        integer status;
	integer status1;
enddecl
integer main()
{
        status = Create("myfile.dat");
        status1=Open("myfile.dat"); //filedescriptor returned if success
	print("open status:");print(status1);
	status=Delete("myfile.dat");
	print("del status before closing: "); print(status);

	status=Close(status1);
	print("close status:");print(status);
	status=Delete("myfile.dat");
        print("del status after closing: "); print(status);



        return 0;
}


