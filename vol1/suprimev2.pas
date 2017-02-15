const 	fi	= 'suprimev2.inp';
	go	= 'suprimev2.out';
var	n,i	: longint;
	s	: string;
	f,g	: text;

function	pritest(x	: longint): boolean;
var	j	: longint;
begin
	pritest := true;
	if x = 2 then exit(true)
		else	if x > 2 then 
			begin	
				for j := 2 to trunc(sqrt(x)) do
				if x mod j = 0 then exit(false);
			end
			else	pritest := false;
end;

begin
	assign(f,fi);
	assign(g,go);
	reset(f);
	rewrite(g);
	readln(f,s);		
	close(f);
	while (length(s) <> 0) do
	begin
		n := 0; 
		for i := 1 to length(s) do n := n * 10 + ord(s[i])- 48;
		if pritest(n) =true then delete(s,length(s),1) 
			else break;
	end; 
	if length(s) = 0 then writeln(g,'true') 
		else writeln(g,'false');
		
	close(g);	
end.
