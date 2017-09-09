const	fi	= 'maxpaid.inp';
	go	= 'maxpaid.out';

type	inta = array [1..10000] of longint;
var	b	: inta;
	n	: longint;


procedure qsort(var a : inta);
procedure sort(l, h: int64);
var
	i, j, x, y: int64;

begin
	i := l;
	j := h;
	x := a[(l + h) div 2];

	repeat
		while a[i] < x do
			i := i + 1;
		while x < a[j] do
			j := j - 1;

		if i <= j then
		begin
			y := a[i];
			a[i] := a[j];
			a[j] := y;
			i := i + 1;
			j := j - 1
		end
	until i > j;

	if l < j then
		sort(l, j);
	if i < h then
		sort(i, h)
end;
begin
	sort(0, length(a) - 1)
end;

begin
	assign(f,fi);
	reset(f);
	read(f,n);
	for i := 1 to n do read(f,b[i]);
	close(f);

	qsort(b);
	
	if (b[1] * b[2]) > (b[n-1] * b[n]) then mp := b[1] * b[2] 
		else mp := b[n] * b[n-1];

	assign(g,go);
	rewrite(g);
	write(g,mp);
	close(g);
end.
