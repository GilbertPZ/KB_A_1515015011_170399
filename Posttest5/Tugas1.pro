DOMAINS
orang = orang(nama,alamat)
%Diatas merupakan pendeklarasi data objek orang nama dan alamat%
nama = nama(pertama,kedua)
%Nama merupakan data objek jamak yang mememiliki argumen pertama dan kedua%
alamat = alamat(jalan,kota_kab,propinsi)
%Alamat merupakan data objek jamak yang memiliki argumen jalan, kota kabupaten, dan provinsi% 
jalan = jalan(nama_jalan,nomor)
%Jalan merupakan data objek jama yang memiliki argumen pertama yaitu nama jalan, dan yang kedua nomor%
kota_kab,propinsi,nama_jalan = string 
%Kota kabupaten, provisinsi dan nama jalan sama dengan tipe data string%
pertama,kedua = symbol
%Pertama dan kedua merupakan isi data objek jamak% 
nomor = integer
%Nomor bertype data integer%
GOAL
P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),
%P1 merupakan goal yang pertama%
P1 = orang(nama(_,fatihah),Alamat),
%P1 akan mengambil data yang diatur pada goal pertama dan menampilkan nama diena dan alamat wijaya kusuma%
P2 = orang(nama(nur,fatihah),Alamat),
%P2 akan menampilkan alamat yang diatur di P1%
write("P1=",P1),nl,
write("P2=",P2),nl.
%Write akan dieksukusi pertama kali%