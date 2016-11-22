Var	a,b,c,d,e,f,m	: Qword;
BEGIN
	Read(a,b,c);
	d := a * a;
	e := b * b;
	f := c * c;
	m := f;
	If e > m then 
	begin
		m := e;
		e := f;
		f := m;
	end
	Else If d > m then 
	begin
		m := d;
		d := f;
		f := m;
	end;
	
	If (d + e = f)  then 
	begin
		writeln(0);
		exit;
	end
	Else 
	If (d + e < f)  then
	begin
		Writeln(2);
		exit;
	end
	Else 
	If (d + e > f)  then      
	begin
		Writeln(1);
		exit;
	end;
END.
