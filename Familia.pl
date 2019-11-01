/*
pai(antonio, julio).
pai(antonio, livia).
mae(maria, livia).
mae(zefa, andressa).
pai(julio, carlos).
mae(livia, joana).

avoM(X,Y):- pai(X,Z), pai(Z,Y); pai(X, Z), mãe(Z, Y).
avoF(X,Y):- mae(X,Z), mae(Z,Y); mãe(X, Z), pai(Z, Y).

?- avoM(X,Y), write(X), nl, write(Y).
%?- avoF(X,Y), write(X), nl, write(Y).
*/

%%%%%%%% Relações de parentesco %%%%%%%%
igual(X, X).

pai(antonio, jose).
pai(antonio, andre).
pai(andre, andrea).
pai(andre, laura).


avo_p_pai(X, Y):- pai(X, Z), pai(Z, Y).


mae(andrea, laura).
mae(andrea, vitoria).
mae(laura, maria).
mae(vitoria, clara).

irmao_p_pai(X, Y):- pai(Z,X), pai(Z, Y), not(igual(X, Y)).

tio_p_pai(X, Y):- pai(Z,Y), irmao_p_pai(Z, X).

primo_p_pai(X, Y):- pai(Z, X), tio_p_pai(Z, Y).


irmao_p_mae(X, Y):- mae(Z,X), mae(Z, Y), not(igual(X, Y)).

tio_p_mae(X, Y):- mae(Z,Y), irmao_p_mae(Z, X).

primo_p_mae(X, Y):- mae(Z, X), tio_p_mae(Z, Y).


?- primo_p_mae(X, Y), write(X), write(" - "),write(Y), nl, fail.
