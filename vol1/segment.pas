{.Đoạn đan dấu. Tên chương trình: Segment
Cho một số nguyên dương n <= 10^5 và n số nguyên a 1 , a 2 , ..., a n (a[i] <=10^9 ).
Đoạn con của dãy là một số các phần tử liên tiếp nhau của dãy đã cho.
Đoạn con đan dấu là 1 đoạn con trong đó các phần tử liên tiếp a[i] và a[i+1]
mang dấu trái nhau (nói cách khác a[i] * a[i+1] < 0).
Yêu cầu: Hãy tìm đoạn con đan dấu dài nhất trong dãy đã cho.
Dữ liệu vào:
Dòng đầu chứa số N.
Dòng tiếp theo chứa N số nguyên a[1] , a[2] , ..., a[n]
Kết quả:
Gồm 1 dòng ghi 2 số L và H cách nhau bởi 1 dấu cách là chỉ số
bắt đầu và kết thúc của dãy đan dấu dài nhất tìm được
	INPUT	|	OUTPUT
----------------|--------------------
 10		|5 10
 1 2 -1 2 3 -4 5|
-2 19 -145	|

}
const	fi = 'segment.inp';
	go = 'segment.out';
var	a		: array [1..10000] of longint;
	n,m,li,lj	: longint;
procedure inp;
var	f	: text;
	i	: longint;
begin
	assign(f,fi);
	reset(f);
	readln(f,n);
	for i := 1 to n do read(f,a[i]);
	close(f);
end;

procedure solve;
var	i,j	: longint;
begin
	m := 0;
	for i := 1 to n - 1 do
	begin
		j := i + 1;
		while (j < n) and (a[j - 1] * a[j] < 0) do inc(j);
		if j - i + 1 > m then 
		begin
			m := j - i + 1; 		
			li := i;
			lj := j;
		end;
	end;	
end;

procedure out;
var	g 	: text;
begin
	assign(g,go);
	rewrite(g);
	writeln(g,li,' ',lj);
	close(g);
end;

BEGIN
	inp;
	solve;
	out;
END.
