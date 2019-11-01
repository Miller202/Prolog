/* CASINHA */

espaco(0).
espaco(E):- write(" "), E1 is E-1, espaco(E1).

coluna(0):- nl.
coluna(C):- write("X"), C1 is C-1, coluna(C1).

coluna1(0).
coluna1(C):- write("X"), C1 is C-1, coluna1(C1).

triangulo(0,_).
triangulo(C,D):- E is D - C, C1 is C - 1, 
				triangulo(C1,D), espaco(E), 
				coluna1(C), coluna(C).

janela(0,_).
janela(L,C):- C1 is C // 3, 
			(L > C1),(2 * C1 >= L),
          	coluna1(C1), espaco(C1), 
			coluna(C - 2 * C1), 
			L1 is L - 1, janela(L1,C). 
 
janela(L,C):-coluna(C), L1 is L - 1, janela(L1,C). 

%?-triangulo(6,6), janela(8,12).

/* BARQUINHO */

vela(D,D):- vela1(0,D).
vela(C,D):- espaco(3 * D // 2), C1 is C + 1, coluna(C1), vela(C1,D).

vela1(D,D).
vela1(C,D):- C1 is C + 1, vela1(C1,D), espaco(3 * D // 2), coluna(C1).

corpo(D,D).
corpo(C,D):- espaco(C), E1 is D - C, 
			coluna1(E1), coluna1(D), 
			coluna(E1), C1 is C + 1,
			corpo(C1,D).

%?-vela(0,5), corpo(0,5).

