program CanteenOrderln;
uses crt;
var 
  item, item_tambahan : char;
  nama_item : string;
  harga, jumlah_item, total_harga, sub_total : longint;
  daftar_nama : array[1..100] of string;
  daftar_harga : array[1..100] of longint;
  daftar_jumlah : array[1..100] of longint;
  daftar_subtotal : array[1..100] of longint;
  jumlah_jenis_menu, i : integer;

begin
  clrscr;
  total_harga := 0;
  jumlah_jenis_menu := 0;
  repeat
    clrscr;
    writeln('=== MENU WARUNG BUNDA NAYLA ===');
    writeln('[1]  NASI AYAM GEPREK                         - Rp. 15.000');
    writeln('[2]  NASI AYAM PENYET                         - Rp. 15.000');
    writeln('[3]  INDOMIE GORENG                           - Rp. 10.000');
    writeln('[4]  INDOMIE KUAH                             - Rp. 10.000');
    writeln('[5]  EXTRA TELUR                              - Rp. 3.000');
    writeln('[6]  NASI GORENG                              - RP. 12.000');
    writeln('[7]  NASI GORENG AYAM PENYET                  - Rp. 18.000');
    writeln('[8]  TEH MANIS PANAS                          - Rp. 5.000');
    writeln('[9]  TEH MANIS DINGIN                         - Rp. 5.000');

    write('Masukkan pilihan item (1-9): ');
    readln(item);

    case item of
        '1' : begin
                nama_item := 'NASI AYAM GEPREK';
                harga := 15000;
              end;
        '2' : begin
                nama_item := 'NASI AYAM PENYET';
                harga := 15000;
              end;
        '3' : begin
                nama_item := 'INDOMIE GORENG';
                harga := 10000;
              end;
        '4' : begin
                nama_item := 'INDOMIE KUAH';
                harga := 10000;
              end;
        '5' : begin
                nama_item := 'EXTRA TELUR';
                harga := 3000;
              end;
        '6' : begin
                nama_item := 'NASI GORENG';
                harga := 12000;
              end;
        '7' : begin
                nama_item := 'NASI GORENG AYAM PENYET';
                harga := 18000;
              end;
        '8' : begin
                nama_item := 'TEH MANIS PANAS';
                harga := 5000;
              end;
        '9' : begin
                nama_item := 'TEH MANIS DINGIN';
                harga := 5000;
              end;      
    else
        nama_item := 'Tidak Tersedia';
        harga := 0;
    end;
    
    if nama_item <> 'Tidak Tersedia' then
    begin
        write('Banyaknya item yang dibeli (', nama_item, ') = ');
        readln(jumlah_item);

        sub_total := harga * jumlah_item;
        total_harga := total_harga + sub_total;

        jumlah_jenis_menu := jumlah_jenis_menu + 1;
        daftar_nama[jumlah_jenis_menu] := nama_item;
        daftar_harga[jumlah_jenis_menu] := harga;
        daftar_jumlah[jumlah_jenis_menu] := jumlah_item;
        daftar_subtotal[jumlah_jenis_menu] := sub_total;

        writeln('Subtotal untuk ', nama_item, ': Rp ', sub_total);
    end
    else
    begin
        writeln('Item tidak tersedia. Silakan pilih item yang tersedia.');
    end;
    
    writeln;
    write('Apakah Anda ingin menambahkan menu lain? (y/n): ');
    readln(item_tambahan);
  until (item_tambahan = 'n') or (item_tambahan = 'N');

  clrscr;
  writeln('======================================================');
  writeln('                  STRUK RINCIAN BELANJA               ');
  writeln('======================================================');
  writeln('No.    Nama Menu         Harga       Qty   Subtotal   ');
  writeln('------------------------------------------------------');
  
  { Perulangan untuk membaca isi Array }
  for i := 1 to jumlah_jenis_menu do
  begin
    writeln(i, '.   ', daftar_nama[i]:18, '  Rp', daftar_harga[i]:6, '   ', daftar_jumlah[i]:3, '    Rp ', daftar_subtotal[i]);
  end;
  
  writeln('======================================================');
  writeln('TOTAL HARGA YANG HARUS DIBAYAR: Rp ', total_harga);
  writeln('======================================================');
  writeln('           Terima kasih telah berbelanja!           ');
  writeln('           === LOVE YOU BUNDA NAYLA <3 ===           ');
  
  readln;
end.