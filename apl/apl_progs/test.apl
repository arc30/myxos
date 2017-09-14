

integer main()
{
integer status,status2,status3;
integer num,i;
integer x,y,num1,num2;

status=Create("f1.dat");
status=Open("f1.dat");

//even numbers from 1 to 40
//i=2;
//while(i<=40) do
//	num=Write(status,i);
//	i=i+2;
//endwhile;


status2=Create("f2.dat");
breakpoint;
status2=Open("f2.dat");
//print("hu"); print(status2);

//i=30;

breakpoint;



//while(i<=60) do
//	num=Write(status2,i);
//	i=i+5;
//endwhile;		


x=Seek(status,0); y=Seek(status2,0);

x=Read(status,num1);
y=Read(status2,num2);

status3=Create("f3.dat");
status3=Open("f3.dat");

while(x!=-1 && y!=-1) do
	if (x<y) then
		num=Write(status3,num1);
	else
		num=Write(status3,num2);
	endif;
	x=Read(status,num1);
	y=Read(status2,num2);
endwhile;



i=Close(status);

breakpoint;
i=Close(status2);

breakpoint;

return 0;
}

