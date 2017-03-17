PREDICATES
nondeterm dapat_membeli(symbol, symbol)
nondeterm orang(symbol)
nondeterm mobil(symbol)
nondeterm suka(symbol, symbol)
dijual(symbol)

CLAUSES
dapat_membeli(X,Y):-
orang(X), mobil(Y), suka(X,Y), dijual(Y).
%ini menjelaskan bahwa X bisa membeli Y, jika X adalah orang, Y adalah mobil, X menyukai Y, dan Y dijual

orang(nur).	orang(yudi).	orang(dian).	orang(heni).
%bagian ini adalah orang

mobil(atoz).	mobil(kijang).
%bagian ini adalah mobil

suka(dian, atoz).	suka(yudi, pecel).
suka(heri, buku).	suka(nur, komputer).
%bagian ini adalah kesukaan orang2

dijual(kijang).		dijual(atoz).	dijual(buku).
%bagian ini adalah barang yang dijual(2 mobil dan 1 buku)

GOAL
%dapat_membeli(Siapa,Apa).
%goal pertama, akan memanggil fakta dapat_membeli, karena yang menyukai mobil hanya 1 yaitu dian, dan kebetulan mobil yang disukai dian yaitu atoz dijual, maka dian bisa membeli mobil itu

%suka(_,Apa).
%goal kedua, ini bertujuan untuk melihat apa saja yang disukai  orang2

%suka(Siapa,_).
%goal kedua, ini bertujuan untuk melihat siapa saja yang menyukai sesuatu

%dapat_membeli(_,Apa).
%goal ini sama seperti goal pertama, bedanya adalah siapa yang dapat membelinya tidak ditampilkan

dapat_membeli(Siapa,_).
%goal ini sama seperti goal pertama, tetapi apa yang dapat dibeli tidak ditampilkan