coluna(0).
coluna(N):- write('X'), N1 is N - 1, coluna(N1).

linhaColuna(0,_).
linhaColuna(L,C):- coluna(C), nl, L1 is L - 1, linhaColuna(L1,C).

espaco(0).
espaco(N):- write(" "), N1 is N - 1, espaco(N1).

quadrado(X):- linhaColuna(X,X).

triangulo1(0).
triangulo1(X):- coluna(X), nl, X1 is X - 1, triangulo1(X1).

triangulo2(0).
triangulo2(X):- X1 is X - 1, triangulo2(X1), coluna(X), nl.

triangulo3(0,_).
triangulo3(X,Y):- X1 is X - 1, triangulo3(X1, Y), 
				E is Y - X, espaco(E), coluna(X), nl.

triangulo4(0,_).
triangulo4(X,Y):- X1 is X - 1, E is Y - X, espaco(E), 
					coluna(X), nl, triangulo4(X1, Y).

?- triangulo4(8,8).