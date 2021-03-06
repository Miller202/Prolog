/* PA */

pa(_,_,0).
pa(X,Y,C):- write(X), nl, 
		X1 is X + Y,
		C1 is C - 1,
	 	pa(X1,Y,C1).

%?- pa(1,3,9).


/* SOMA PA */

sumpa(_,_,0,S):- write("Soma PA: "), write(S), nl.
sumpa(X,Y,C,S):- write(X), nl, 
		X1 is X + Y,
		C1 is C - 1,
		S1 is S + X, 
		sumpa(X1,Y,C1,S1).

%?- sumpa(1,3,3,0).



/* PG */

pg(_,_,0).
pg(X,Y,C):- write(X), nl, 
		X1 is X * Y, 
		C1 is C - 1, 
		pg(X1,Y,C1).

%?- pg(1,3,9).



/* SOMA PG */

sumpg(_,_,0,S):- write("Soma PG: "), write(S), nl.
sumpg(X,Y,C,S):- write(X), nl, 
		X1 is X * Y, 
		C1 is C - 1,
		S1 is S + X, 
		sumpg(X1,Y,C1,S1).

%?- sumpg(1,3,3,0).



/* Fibonacci */

fib(_,_,0).
fib(X,Y,1):- write(X).
fib(X,Y,C):- write(X), nl, 
		X1 is Y, 
		Y1 is X + Y, 
		C1 is C - 1, 
		fib(X1,Y1,C1).
%?- fib(1,1,9).



/* Soma FIB */

sumfib1(_,_,0,S):- write("Soma FIB: "), write(S), nl.
sumfib1(X,Y,C,S):- write(Y), nl,
			X1 is Y, 
			Y1 is X + Y, 
			C1 is C - 1,
			S1 is S + Y,
			sumfib1(X1,Y1,C1,S1).

sumfib(_,_,0,S).
sumfib(X,Y,C,S):- write(X), nl, 
			write(Y), nl,
			X1 is X, 
			Y1 is Y, 
			C1 is C - 2,
			S1 is S + X + Y,
			sumfib1(X1,Y1,C1,S1).

?- sumfib(1,1,9,0).





