splitlist([], [], []).
splitlist([X], [X], []).
splitlist([X, Y | Z], L, R) :-
  splitlist(Z, ZL, ZR),
  L = [X | ZL],
  R = [Y | ZR].

merge([], [], []).
merge(X, [], X).
merge([], Y, Y).
merge([X | Xs], [Y | Ys], Z) :-
 (X >= Y, merge([X | Xs], Ys, Zs), Z = [Y | Zs]);
 (X < Y, merge(Xs, [Y | Ys], Zs), Z = [X | Zs]).

mergesort([], []).
mergesort([X], [X]).
mergesort(A, B) :-
  length(A, Alen),
  Alen > 1,
  splitlist(A, L, R),
  mergesort(L, LSorted),
  mergesort(R, RSorted),
  merge(LSorted, RSorted, B).
