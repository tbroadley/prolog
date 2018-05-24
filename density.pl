population(usa, 203).
population(india, 548).
population(china, 800).
population(brazil, 108).

area(usa, 3).
area(india, 1).
area(china, 4).
area(brazil, 3).

density(X, Y) :-
  population(X, P),
  area(X, A),
  Y is P / A.
