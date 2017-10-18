decl
	integer status;
enddecl

integer main()
{
breakpoint;
status=Open("myfile.dat");
status=Seek(0,10);
print (status);
breakpoint;
return 0;
}
