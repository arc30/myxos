integer main()
{

integer stat1,stat2,stat3,i,j,k;
string word1,word2,word3,x,y,z;

stat1=Create("file1.dat");
stat1=Open("file1.dat");

i=1;

while(i<=2000) do
	j=Write(stat1,i);
	i=i+1;
endwhile;

stat2=Create("file2.dat");
stat2=Open("file2.dat");

j=Seek(stat1,0);
j=Read(stat1,word1);

i=Delete("file1.dat");

while(word1 != "") do
	i=Write(stat2,word1);
	j=Read(stat1,word1);
endwhile;

breakpoint;
i=Close(stat1);
i=Close(stat2);

//breakpoint;

i=Delete("file1.dat");
//breakpoint;
i=Delete("file2.dat");
print("fil2Del");print(i);
//breakpoint;

return 0;
}
