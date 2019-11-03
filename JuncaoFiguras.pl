espaco(0).
espaco(E):- write(" "), E1 is E - 1, espaco(E1).

coluna(0):- nl.
coluna(C):- write("X"), C1 is C - 1, coluna(C1).

coluna1(0).
coluna1(C):- write("X"), C1 is C - 1, coluna1(C1).


triquadtri(D,D).
triquadtri(C,D):- espaco(C), E1 is D - C, 
			coluna1(E1), coluna1(D), 
			coluna(E1), C1 is C + 1,
			triquadtri(C1,D).


quadtriang(D,D).
quadtriang(C,D):- E1 is D - C, coluna1(D), 
			coluna(E1), C1 is C + 1,
			quadtriang(C1,D).

triangquad(D,D).
triangquad(C,D):- espaco(C), E1 is D - C, coluna1(E1),
			coluna(D), C1 is C + 1, triangquad(C1,D).

%?- triquadtri(0,9).
%?- quadtriang(0,9).
%?- triangquad(0,9).

