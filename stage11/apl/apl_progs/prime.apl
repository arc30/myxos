decl
	integer n,i,j,flag;
enddecl


integer main()
{
breakpoint;
print("enter num");
read(n);
i=2;
j=2;
flag=1;
while(i<n) do
	flag=1;
	j=2;
	while(j<i) do
		if (i%j==0) then
			flag=0;
			break;
		endif;
	j=j+1;
	endwhile;
	if(flag==1) then
		print(i);
	endif;
i=i+1;
endwhile;
return 0;
}
