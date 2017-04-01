DOMAINS
benda = buku(judul, pengarang);
%Ini akan mendeklarasikan data objek jamak dengan isi parameter pertama judul dan kedua pengarang%
kuda(nama);
kapal;
bukubank(saldo)
judul, pengarang, nama = symbol
%Judul, pengarang, dan nama diatas tipe datanya adalah symbol%
saldo = real
%Variabel diatas (saldo) diatur sama dengan variabel real%
PREDICATES
nondeterm milik(nama,benda)
%Deklarasi predikat diatur dengan nondeterm%
CLAUSES
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).
%Erwin memiliki buku markesot bertutur dengan pengarang Emha yaitu ainun najib%
milik(erwin, kuda(buraq)).
%Erwin memiliki kuda buraq%
milik(erwin, kapal).
%Erwin memiliki kapal%
milik(erwin, bukubank(1000)).
%Erwin memiliki buku bank dengan saldo senilai 1000%
GOAL
milik(erwin, Benda).
%Erwin memiliki benda berupa buku, kuda, kapal dan bukubank%