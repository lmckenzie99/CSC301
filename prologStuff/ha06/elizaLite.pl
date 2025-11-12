% dictionary
lookup(you, i).
lookup(i, [why, do, you]).
lookup(are, [am, not]).
lookup(do, ['no,']).
lookup(portuguese, russian).
lookup(A,A).

% translate input to output
% UI is user input
% EO is eliza output
% W is word at head of list
% R is remaining tail of list
% EW is eliza word(s)
% ER is remaining eliza word(s)
translate([], []).
translate(UI, EO):-
    [W|R]=UI,
    lookup(W,EW),
    translate(R,ER),
    EO=[EW|ER].

% output predicate
% A is atom/list at head of list
% L is remaining list
output([]).

% handling atoms only
output([A|L]):-
  atom(A),
  write(A),
  write(' '),
  output(L).

% if output has to smooth a list of words
% example: lookup(i,[why,do,you])
output([A|L]):-
  is_list(A),
  output(A),
  output(L).

% interaction logic
eliza :-
  nl,
  write('Ready > '),
  read(X),
  translate(X, Result),
  output(Result), 
  eliza.
