female(pam).
female(liz).
female(pat).
female(ann).

male(jim).
male(bob).
male(tom).
male(pete).

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
parent(pete, jim).

mother(X, Y):- parent(X, Y), female(X).
father(X, Y):- parent(X, Y), male(X).
haschild(X):- parent(X,_).
sister(X, Y):- parent(Z,X), parent(Z,Y), female(X), X\==Y.
brother(X, Y):- parent(Z, X), parent(Z, Y), male(X), X\==Y.
grandparent(X, Z):- parent(X, Y), parent(Y, Z).
grandmother(X, Z):- mother(X, Y), parent(Y, Z).
grandfather(X, Z):- father(X, Y), parent(Y, Z).
wife(X, Y) :- parent(X, Z), parent(Y, Z), female(X), male(Y).
uncle(X, Z) :- brother(X, Y), parent(Y, Z).