%%%%%%%% Ordem de N - 0 %%%%%%%%
num(0):- write(0), nl. %n�vel m�nimo

num(N):- write(N), nl, N1 is N - 1, num(N1). %ordem decrescente
num(N):- N1 is N - 1, num(N1), write(N), nl.	%ordem crescente

%?- num(3).


%%%%%%%% Fatorial %%%%%%%%
fat(0, 1). %n�vel m�nimo
fat(N, M):- N1 is N - 1, fat(N1, M1), M is N * M1.

%?- fat(4, M), write(M), nl.
