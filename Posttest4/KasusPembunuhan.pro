DOMAINS
nama, gender, pekerjaan, benda, alasan = symbol 
umur = integer

PREDICATES
nondeterm orang(nama,umur,gender,pekerjaan)
istri(nama,nama)
terbunuh_dengan(nama,benda)
terbunuh(nama)
nondeterm pembunuh(nama)
motif(alasan)
milik(nama,benda)
nondeterm cara_kerja_dengan(benda, benda)
nondeterm kemungkinan_milik(nama, benda)
nondeterm dicurigai(nama)

/***Orang Yang Di Curigai Pembunuhan Berencana***/
CLAUSES
orang(rtz,21,pria,pegawai).
orang(sumail,19,perempuan,pedagang).
orang(zai,24,perempuan,petani).
orang(jakiro,33,pria,guru).
%orang2 diatas adalah orang yang dicurigai sebagai tersangka%

istri (sumaail,yugioh).
%sumarni adalah istri korban pembunuhan%

terbunuh_dengan(yugioh,diracun).
terbunuh(yugioh).
%diatas merupakan keterangan bahwa yanto korban pembunuhan

motif(karenaekonomitidaktercukupi).
%ini adalah sebuah motif dari pembunuhannya%

milik(zai,obatserangga).
milik(sumaail,air).
%sedangkan di atas ini adalah barang dan tersangka2 yang digunakan untuk membunuh yanto

%Cara-Cara Melakukan Pembunuhan Berencana%
cara_kerja_dengan(obatserangga, diracun).
kemungkinan_milik(Tersangka, Benda):-
milik(Tersangka, Benda).
%diatas merupakan benda apa yang digunakan tersangka untuk menghabisi korbannya dan benda yang dicurigai milik tersangka%

dicurigai(Tersangkan):-
terbunuh_dengan(benda,Benda),
cara_kerja_dengan(Benda,Benda),
kemungkinan_milik(Tersangkan,Benda),

%Asal-Usul Membunuh Karena Ekonomi Tidak Tercukupi%
dicurigai(Tersangkan);
motif(karenaekonomitidaktercukupi),
orang(Tersangkan,_,_,petani).

pembunuh(Pembunuh):-
orang(Pembunuh,_,_,_),
dicurigai(Pembunuh).

GOAL
write("Kasus Pembunuhan Petani"),nl,
pembunuh(Tersangka).
%pada goal, disini akan diketahui siapa akan menjadi tersangka pada pembunuhan seorang petani. pada saat di run goal akan menunjukkan bahwa sukaesih yaitu istri dari yanto lah yang menjadi tersangkanya%