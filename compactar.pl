compactar([],[]).
compactar([E|L],[[Q,E]|Re]) :- prox(E,L, QP, R), compactar(R,Re), Q is QP + 1.

prox(_,[],0,[]).
prox(X, [E|L], 0, [E|L]) :- X \== E.
prox(X, [X|L], Q, R) :- prox(X, L, QP, R), Q is QP + 1.
