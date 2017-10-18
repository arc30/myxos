
//merging 2 files into a new one. stage8 test 


integer main()
{
integer stat1,stat2,stat3,counter,x,y,z,num1,num2,num3;

string word1,word2,word3,l,m,n;

breakpoint;

stat1=Open("f1.dat");
breakpoint;
stat2=Open("f2.dat");
breakpoint;

//counter=Delete("f3.dat");

stat3=Create("f3.dat");

print(stat3);

stat3=Open("f3.dat");

breakpoint;
x=Read(stat1,word1);
y=Read(stat2,word2);

print(word1);print(word2);

while( x!=-1 && y!=-1 && word1!="" && word2!="") do
	if(word1<=word2) then
		z=Write(stat3,word1);
	//print(word1);
		x=Read(stat1,word1);
	endif;
	if(word2<word1) then
		z=Write(stat3,word2);
		y=Read(stat2,word2);
	endif;
endwhile;

while(x!=-1 && word1!="") do
	z=Write(stat3,word1);
	x=Read(stat1,word1);
endwhile;

while(y!=-1 && word2!="") do
	z=Write(stat3,word2);
	y=Read(stat2,word2);
endwhile;

breakpoint;

return 0;
}
