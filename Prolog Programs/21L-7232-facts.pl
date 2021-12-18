% Version: SWI-Prolog 8.4.1
% Name: Muhammad Irtaza
% Roll Number: 21L-7232

male(irtaza).
male(muslim).
male(ali).
male(ahmed).
male(hassaan).
female(raheela).

father(irtaza,muslim).
mother(irtaza,raheela).
brother(irtaza,ahmed).
brother(irtaza,ali).
brother(irtaza,hassaan).

parent(irtaza,muslim).
parent(ali,muslim).
parent(ahmed,muslim).
parent(hassaan,muslim).
parent(irtaza,raheela).
parent(ali,raheela).
parent(ahmed,raheela).
parent(hassaan,raheela).


/*
sibling(Person,Sib):-
    Brother = brother(Person,Brother),
    Sister = sister(Person,Sister),
    Sib = Brother,
    Sib = Sister.
*/
