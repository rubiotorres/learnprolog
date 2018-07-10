linearizar([],[]).
linearizar([L1|T],Ans) :- concatenar(L1,R,Ans), linearizar(T,R).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).
