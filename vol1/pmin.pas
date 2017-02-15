const	fi = 'pmin.inp';
	go = 'pmin.out';
var	f,g	: text;
	a,b 	: array [1..100000] of longint;
	i,j,n,d,k	: longint;
begin
	assign(f,fi);
	assign(g,go);
	reset(f);
	rewrite(g);
	Readln(f,n,k);
	for i := 1 to n do read(f,a[i]);
	for i := 1 to n do b[i] := i;
	for i := 1 to n - 1 do
	for j := i + 1 to n do
	if a[j] < a[i] then 
	begin
		d := a[i];
		a[i] := a[j];
		a[j] :=d;
		d :=b[i];
		b[i] := b[j];
		b[j] := d;
	end;
	writeln(g,a[k],' ',b[k]);
	close(f);
	close(g);	
end.
