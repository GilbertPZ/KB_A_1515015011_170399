DOMAINS
kali,jumlah = integer
%bagian ini bertujuan untuk menetapkan jenis data pada parameter

PREDICATES
tambahkan(jumlah,jumlah,jumlah)
%bagian ini menjelaskan bahwa jumlah sudah dalam bentuk data integer
kalikan(kali,kali,kali)
%perkalian sudah termasuk dalam bentuk data integer

CLAUSES
tambahkan(X,Y,Jumlah):-Jumlah=X+Y.
%klausa ini menyatakan fakta tambahkan, variabel X dan Y merupakan input, sedangkan jumlah merupakan outputnya, tambahkan dapat berjalan jika jumlahnya sama dengan X ditambah Y
kalikan(X,Y,Kali):-Kali=X*Y.
%klausa ini menyatakan fakta tambahkan, variabel X dan Y merupakan input, dan jumlah merupakan output, tambahkan dapat berjalan jika jumlahnya sama dengan X dikali Y

GOAL
tambahkan(32,54,Jumlah).
%goalnya adalah hasil dari fakta tambah, dimana variabel X di isi dengan 32, dan Y di isi dengan 54, dan sedangkan jumlah adalah hasilnya