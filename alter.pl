member(X, [X|_]).
member(X, [_|Y]) :- member(X, Y).

change(X, Y) :- member([X, Y], [
  [are, [am, not]],
  [do, no],
  [you, i],
  [french, german]
]).

alter([], []).
alter([X|Tail1], [Y|Tail2]) :-
  (change(X, Y); (X = Y, \+(change(X, Z)))),
  alter(Tail1, Tail2).
