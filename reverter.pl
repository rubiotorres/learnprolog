reverter([],[]).
reverter([H|T],H):- reverter(T,X).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3)
