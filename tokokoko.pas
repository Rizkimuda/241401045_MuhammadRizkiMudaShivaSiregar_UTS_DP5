program tokopoko;

uses crt;

var
kemb,kemb1:longint;
nokemb,nokemb1:integer;

begin
clrscr;
    write('Masukkan Jumlah Kembalian:'); readln(kemb);

    nokemb:=0;

    nokemb1:=kemb div 100000;
    nokemb:=nokemb+nokemb1;
    kemb1:=kemb mod 100000;

    nokemb1:=kemb1 div 50000;
    nokemb:=nokemb+nokemb1;
    kemb1:=kemb mod 50000;

    nokemb1:=kemb1 div 20000;
    nokemb:=nokemb+nokemb1;
    kemb1:=kemb mod 20000;

    nokemb1:=kemb1 div 10000;
    nokemb:=nokemb+nokemb1;
    kemb1:=kemb mod 10000;

    nokemb1:=kemb1 div 5000;
    nokemb:=nokemb+nokemb1;
    kemb1:=kemb mod 5000;

    nokemb1:=kemb1 div 2000;
    nokemb:=nokemb+nokemb1;
    kemb1:=kemb mod 2000;

    nokemb1:=kemb1 div 1000;
    nokemb:=nokemb+nokemb1;
    kemb1:=kemb mod 1000;

    nokemb1:=kemb1 div 500;
    nokemb:=nokemb+nokemb1;
    kemb1:=kemb mod 500;

    nokemb1:=kemb1 div 200;
    nokemb:=nokemb+nokemb1;
    kemb1:=kemb mod 200;

    nokemb1:=kemb1 div 100;
    nokemb:=nokemb+nokemb1;
    kemb1:=kemb mod 100;

write(nokemb);

end.

