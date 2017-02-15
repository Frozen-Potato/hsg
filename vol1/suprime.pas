const	fi = 'suprime.inp';
	go = 'suprime.out';
var	n,rvsn,i	: longint;
	g,f		: text;
	s 		: string;

function ktp(x 		: longint)	: boolean;
var	i		: longint;
begin
	ktp := true;
	if x = 2 then exit
	else
		if x < 2 then exit(false)
		else 
			for i := 2 to trunc(sqrt(x)) do 
			if x mod i = 0 then exit(false);
end;

begin
	assign(f,fi);
	assign(g,go);
	reset(f);
	rewrite(g);
	readln(f,S);
	n := 0;
	rvsn := 0;
	For i := 1 to length(S) do 
	begin
		n := n * 10 + ord(S[i]) - 48;
	end;
	For i := length(S) downto 1 do
	begin
		rvsn := rvsn * 10 + ord(S[i]) - 48;
	end;
	write(n,' ',rvsn);
	readln;
	if (ktp(n) = true) and (ktp(rvsn) = true) then Writeln(g,'TRUE')
	else writeln(g,'false');
	close(f);
	close(g);	
end.
