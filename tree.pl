not_in_tree(N, nil).
not_in_tree(N, tree(Val, Left, Right)) :-
  dif(N, Val),
  (N >= Val; not_in_tree(N, Left)),
  (N =< Val; not_in_tree(N, Right)).

in_tree(N, T) :- \+(not_in_tree(N, T)).

depth(0, nil).
depth(D, tree(_, Left, Right)) :-
  depth(LeftDepth, Left),
  depth(RightDepth, Right),
  D is max(LeftDepth, RightDepth) + 1.
