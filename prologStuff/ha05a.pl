% Question 1: Count
count([], _, 0).
count([H|T], H, C) :-
    count(T, H, C1),
    C is C1 + 1.
count([H|T], E, C) :-
    H \= E,
    count(T, E, C).


% Question 2: Reverse
reverse([], []).
reverse([H|T], R) :-
    reverse(T, R1),
    append(R1, [H], R).

% Question 3: Query Analysis
% [a,b,c] = [a|[b,c]] returns true because
% [a,b,c] can be rewritten as head 'a' and tail '[b,c]'.
