ordenar([],[]).
ordenar([E|L],R) :- lesseq(E,L,Esq), big(E,L,Dir), ordenar(Esq, ES), ordenar(Dir, DS), concatenar(ES, [E], P), concatenar(P, DS, R).

lesseq(_,[],[]).
lesseq(X, [E|L], [E|R]) :- X >= E, lesseq(X, L, R).
lesseq(X, [E|L], R) :- X < E, lesseq(X, L, R).

big(_,[],[]).
big(X, [E|L], [E|R]) :- X < E, big(X, L, R).
big(X, [E|L], R) :- X >= E, big(X, L, R).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).
