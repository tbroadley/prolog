islist([]).
islist([Head|Tail]) :- islist(Tail).
