coluna(0):- nl.
coluna(C):- write("X"), C1 is C - 1, coluna(C1).
coluna1(0).
coluna1(C):- write("X"), C1 is C - 1, coluna1(C1).

espaco(0).
espaco(C):- write(" "), C1 is C - 1, espaco(C1).

/* Metade de um losango */

tri(0).
tri(C):- coluna(C), C1 is C - 1, tri(C1).

tria(8).
tria(C):- coluna(C), C1 is C + 1, tria(C1).

%?- tria(0), tri(8). 

/* Losango completo */

trin(0,_).
trin(C,D):- E is D - C, C1 is C - 1, trin(C1,D), espaco(E), coluna1(C), coluna(C).

trio(0,_).
trio(C,D):- E is D - C, C1 is C - 1,espaco(E), coluna1(C), coluna(C), trio(C1,D).

?-trin(8,8), trio(8,8).

/* Quadrado torto */

tri1(0):- quadrado(8,8).
tri1(C):- coluna(C), C1 is C - 1, tri(C1).
 
trig1(0,_).
trig1(C,D):- E is D - C, C1 is C - 1, trig1(C1,D), espaco(E), coluna1(C), coluna1(D), coluna(E).

%?- trig1(4,4).
 





