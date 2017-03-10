predicates
nondeterm anak(STRING,STRING)
nondeterm istri(STRING,STRING)
nondeterm pria(STRING)
nondeterm wanita(STRING)
nondeterm ayah(STRING,STRING)
nondeterm ibu(STRING,STRING)
nondeterm cucu(STRING,STRING)
nondeterm kakek(STRING,STRING)
nondeterm adik(STRING,SYMBOL)
nondeterm usia(STRING,SYMBOL)

clauses
anak("Jhon","James").
anak("James","Peter").
anak("Sue","Ann").

istri("Mary","Peter").
istri("Ann","James").

pria("Jhon").
pria("James").
pria("Peter").

wanita("Mary").
wanita("Sue").
wanita("Ann").

usia("Jhon","10").
usia("Sue","13").

ayah(G,R):-
	anak(R,G).
kakek(G,R):-
	ayah(G,T),ayah(T,R).
ibu(G,R):-
	istri(R,T),anak(G,P).
cucu(G,R):-
	anak(G,T),istri(T,P),anak(P,R).
adik(G,R):-
	usia(G,T),usia(R,P), T<P.


Goal
anak(Pertama,Kedua).