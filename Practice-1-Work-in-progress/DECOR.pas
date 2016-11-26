Const	Fi	= 'DECOR.inp';
	Go	= 'DECOR.out';
Var	n,d	: Qword;
	A	: Array [1..1000] of longint;


Procedure inp;
Var	F	: text;
Begin
	Assign(F,Fi);
	Reset(F);
	Read(F,n);
	Close(F);
End;

Procedure Workin;
Var	i,j	: Qword;
Begin
	For i :=  1 to n do A[i] := 1;
	j := 2;
	While j <= n do 
	Begin 
		For i := 2 to n do 
		If i mod j = 0 then 
		Begin
			If A[i] = 0 then A[i] := 1
			Else A[i] := 0;
		End;
		{For i := 1 to n do Write(a[i]);
		Readln;}
		inc(j);
	End;
	d := 0;
	For i := 1 to n do 
	If A[i] = 1 then inc(d);
End;

Procedure out;
Var	i	: longint;
	G	: text;
Begin
	Assign(G,Go);
	ReWrite(G);
	Write(G,d);
	Close(G);
End;

BEGIN
	inp;
	Workin;
	out;
END.
