const   fi = 'Prime.inp';
        go = 'Prime.out';
var     n,i     : longint;
        f,g     : text;
function        primech(x : longint) : boolean;
var     k       : longint;
begin
        primech := true;
        if x < 2 then primech := false
        else
                if x > 2 then
                for  k := 2 to trunc(sqrt(x)) do
                if x mod k = 0 then exit(false);
end;

begin
        assign(f,fi);
        assign(g,go);
        reset(f);
        rewrite(g);
        readln(f,n);
        for  i := 1 to n do
        if primech(i) = true then write(g,i,' ');
        writeln(g);
        close(f);

        close(g);
end.
