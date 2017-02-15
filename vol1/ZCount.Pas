const   fi = 'Zcount.inp';
        go = 'Zcount.out';
var     f,g     : text;
        d,n,i,k : int64;
BEGIN
        write('d79823723');
        assign(f,fi);
        assign(g,go);
        reset(f);
        rewrite(g);
        readln(f,n);
        close(f);
        {writeln('n=',n);}
        d := 0;
        i := 5;
        {writeln(i);}
        if n >= 5 then
        while i < n do
        Begin
                k := i;
                {writeln('k=',k);}
                while (k <> 1) and ( k mod 5 = 0 ) do
                begin
                        inc(d);
                        {writeln('k=',k);}
                        k := k div 5;
                end;
                inc(i);
                {writeln(i);}
        end;
        writeln(g,d);
        close(g);
END.
