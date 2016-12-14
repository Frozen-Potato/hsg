Const   Fi      = 'cau1.inp';
        Go      = 'cau1.out';
Var     x,y,a,b,c,d     : longint;

Procedure       inp;
Var     F       : text;
Begin
        Assign(F,Fi);
        Reset(F);
        Readln(F,a,b);
        Readln(F,c,d);
        Close(F);
End;

Function        USCLN(t,v       : longint): longint;
Var     d       : longint;
Begin
        While v <> 0 do
        Begin

                d := t mod v;
                t := v;
                v := d;
        End;
        USCLN := t;
End;

Procedure       workin;
Var     u       : longint;
Begin
        x := a*d - c*b;
        y := b*d;
        u := USCLN(x,y);
        x := x div u;
        y := y div u;
        If y < 0 then
        Begin
                y := abs(y);
                x := x * -1;
        end;
End;

Procedure       out;
Var     G       : text;
Begin
        Assign(G,Go);
        ReWrite(G);
        Writeln(G,x,' ',y);
        Close(G);
End;

BEGIN
        inp;
        workin;
        out;
END.
