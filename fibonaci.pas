program fibonaci;

uses crt;

var
    n,i,a,b,y,x: integer;
begin
clrscr;
    write('Masukkan suku ke n: '); readln(n);

    a:=0;
    b:=1;
    x:=a+b;

    write('Deret Fibonacci: ', a, ',', b, ',');

    for i := 3 to n do
    begin
        y:=a+b;
        write(y, ',');
        x:=x+y;
        a:=b;
        b:=y;
    end;

  writeln;
  writeln('Jumlah total deret Fibonacci hingga suku ke-', n, ': ', x);
end.
