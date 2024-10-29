program KasirSupermarketAHY;
uses crt;

var
    hari,namaprod,kategori:string;
    member:char;
    i,hargaprod,diskon,hydis,frozdis,elekdis,lakdis,diskonmem,jumprod,tendis,bonus:integer;
    total:real;
    total1,poin:longint;
    
begin
clrscr;
    write('Masukkan hari pembelian: '); readln(hari);
    write('Apakah anda member?(y/t)'); readln(member);

        hydis:=0;
        frozdis:=0;
        elekdis:=0;
        lakdis:=0;

        case (hari) of
            'senin':hydis:=10;
            'selasa':frozdis:=5;
            'rabu':elekdis:=30;
            'kamis':lakdis:=8;
        end;
        
        if member='y' then
            begin
                diskonmem:=10;
            end;
   
        i:=0;
        total1:=0;
        repeat
        write('Masuki Nama Produk:');readln(namaprod);
        write('Masuki Kategori Produk(Hygiene, Frozen Food, Elektronik, Laktosa):'); readln(kategori);
        write('Masuki Harga Produk:');readln(hargaprod);
        write('Masuki Jumlah Produk:');readln(jumprod);
        writeln('---------------------------');

        tendis:=(jumprod div 10)*5;
        
        case (kategori) of
            'Hygiene':total:=(hargaprod*jumprod)-((hargaprod*jumprod)*(hydis/100))-((hargaprod*jumprod)*(diskonmem/100))-((hargaprod*jumprod)*(tendis/100));
            'Frozen Food':total:=(hargaprod*jumprod)-((hargaprod*jumprod)*(frozdis/100))-((hargaprod*jumprod)*(diskonmem/100))-((hargaprod*jumprod)*(tendis/100));
            'Elektronik':total:=(hargaprod*jumprod)-((hargaprod*jumprod)*(elekdis/100))-((hargaprod*jumprod)*(diskonmem/100))-((hargaprod*jumprod)*(tendis/100));
            'Laktosa':total:=(hargaprod*jumprod)-((hargaprod*jumprod)*(lakdis/100))-((hargaprod*jumprod)*(diskonmem/100))-((hargaprod*jumprod)*(tendis/100));
        else
        begin
            total:=(hargaprod*jumprod)-((hargaprod*jumprod)*(diskonmem/100));
        end;
        end;
        
        total1:=total1+round(total);
        i:=i+1;
        until(i=3);
        
        writeln('Total Bayar',total1);

        poin:=(total1 div 50000);
        writeln('Poin anda dapatkan:',poin);

        bonus:=(poin div 50);
        if bonus>0 then
            begin 
                writeln('Anda dapat menerima voucher diskon 20%');
            end;

        writeln('Terima Kasih!');
  
end.
