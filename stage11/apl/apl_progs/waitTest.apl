integer main()
{
        integer i,pid,r;
        i=1;
        pid=Fork();
        print (pid);
        if(pid==-2) then
            pid=Exec("odd.xsm");
        else
            i=1;
            while (i <= 40) do
                if(i%2==0) then
                    print(i);
                    endif;
                if(i==30) then
                    r=Signal();
                    //print(r);
                endif;
		        i=i+1;
                endwhile;
         endif;
        return 0;
}
