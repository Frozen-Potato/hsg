Var	i, n	: Qword ;
BEGIN
	read(n);
	writeln;
	i := 2;
	While n <> 1 do
	If n mod i =0 then 
	n := n div i
	Else inc(i);
	Writeln(i);
END.
