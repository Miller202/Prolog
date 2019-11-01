%%%%%%%% Maior de 3 números %%%%%%%%
maior(X, Y, Z):- (X > Y), (X > Z), write(X).
maior(X, Y, Z):- (Y > X), (Y > Z), write(Y).
maior(X, Y, Z):- (Z > X), (Z > Y), write(Z).

?- maior(3, 5, 9).