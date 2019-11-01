somatorio(11, _).
somatorio(I, S) :- Soma is (1/(2**I)) + S, In is I + 1, 
write(Soma), nl, somatorio(In, Soma).

somatorio1(11, _).
somatorio1(I, S) :- Soma is (((-1)**I)*2) + S, In is I + 1, 
write(Soma), nl, somatorio1(In, Soma).
