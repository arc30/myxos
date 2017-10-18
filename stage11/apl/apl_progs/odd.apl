

integer main()
{
integer i,stat;
i=0;
while (i<=30) do
	if (i%2==1) then	
		print(i);
	endif;
	
	if(i==15) then 
		stat=Wait(0);
	endif;

	i=i+1;	
endwhile;


return 0;
}
