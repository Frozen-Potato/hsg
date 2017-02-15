const   fi = 'DigitSum.inp';
        go = 'DigitSum.out';

var     n       : string;
        s,i     : longint;
        f,g     : text;

begin
        assign(f,fi);
        assign(g,go);
        reset(f);
        rewrite(g);
        readln(f,n);
        close(f);
        write(g,length(n));
        s := 0;
        for  i := 1 to length(n) do
        s := s + ord(n[i]) - 48;
        writeln(g,' ',s);
        close(g);
end.
