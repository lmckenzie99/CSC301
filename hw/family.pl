woman(ann).
woman(pam).
woman(liz).
woman(pat).

man(tom).
man(bob).
man(jim).  

parent(pat,jim).
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).

mother(X,Y) :-
    woman(X),
    parent(X,Y).

sister(X,Y) :-
    woman(X),
    parent(Z,X),
    parent(Z,Y),
    X \= Y.

son(X,Y) :-
    man(X),
    parent(Y,X).

father(X,Y) :-
    man(X),
    parent(X,Y).

grandmother(X,Y) :-
    woman(X),
    parent(X,Z),
    parent(Z,Y).
