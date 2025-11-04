sister(emma, joan).
brother(fred, john).

sibling(X,Y) :- sister(X,Y).
sibling(X,Y) :- brother(X,Y).


