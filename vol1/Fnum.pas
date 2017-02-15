const	fi = 'fnum.inp';
	go = 'fnum.out';

var	f,g		: text;
	i,n,li,h,j	: longint;
	a		: array [1..100000] of longint;
	kt1		: boolean;

function	us(x : longint): longint;
var	k : longint;
begin
	us := 0;
	for k := 1 to x - 1 do 
	if x mod k = 0 then us := us + k;
end;

function	kt(x : longint): boolean;
begin
	kt := false;	
	if us(x) = i then kt := true;
end;

begin
	assign(f,fi);
	assign(g,go);
	reset(f);
	rewrite(g);
	readln(f,n);
	j := 0;
	for i := 6 to n do
	begin
		{write(i,' ');}
		if us(i) < n then
		begin 
			li := us(i);
			{Writeln(li);
			readln;}
			if (kt(li) = true) and (li <> i) then 
			begin
				kt1 := true;
				for h := 1 to j do if (a[h] = i) or (a[h] = li) then begin kt1 := false; break; end;
				if kt1 = true then
				begin
					inc(j);
					a[j] := i;
					writeln(g,i,' ',li);
				end;
			end;
		end;
	end;
	close(f);
	close(g);	
end.
