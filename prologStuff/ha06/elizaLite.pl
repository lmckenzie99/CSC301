lookup(you, i).
lookup(i, [why, do, you]).
lookup(are, [am, not]).
lookup(do, ['no,']).
lookup(portuguese, russian).
lookup(A,A).

translate([], []).
translate(UI, EO):-
    [W|R]=UI,
    lookup(W,EW),
    translate(R,ER),
    EO=[EW|ER].

output([]).
output([A|L]):-
  atom(A),
  write(A),
  write(' '),
  output(L).
output([A|L]):-
  is_list(A),
  output(A),
  output(L).

eliza :-
  nl,
  write('Ready > '),
  read(X),
  translate(X, Result),
  output(Result), 
  eliza.
