% Version: SWI-Prolog 8.4.1
% Name: Muhammad irtiza
% Roll Number: 21L-7232

% Call main to print student information
main:-
    write('Name: Muhammad irtiza'),
    nl,
    write('Roll Num: 21L-7232').

/* FACTS */
male(irtiza).
male(john).
male(aali).
male(ahmat).
male(husnut).
male(awss).
male(kash).

female(victoria).

husband(victorialsenior,albert).
husband(sakss,ismeel).
husband(victoria,john).
husband(wass,daniel2).

wife(albert,victorialsenior).
wife(ismeel,sakss).
wife(john,victoria).

father(john,ismeel).
father(aslam,ismeel).
father(daniel,ismeel).
father(victoria,albert).
father(sass,albert).
father(wass,albert).
father(kash,albert).
father(awss,albert).
father(irtiza,john).
father(aali,john).
father(ahmat,john).
father(husnut,john).

mother(john,sakss).
mother(aslam,sakss).
mother(daniel,sakss).
mother(kash,victorialsenior).
mother(awss,victorialsenior).
mother(victoria,victorialsenior).
mother(sass,victorialsenior).
mother(wass,victorialsenior).

sister(victoria,sass).
sister(victoria,wass).
sister(sass,victoria).
sister(sass,wass).
sister(wass,victoria).
sister(wass,sass).

parent(john,ismeel).
parent(aslam,ismeel).
parent(daniel,ismeel).
parent(john,sakss).
parent(aslam,sakss).
parent(daniel,sakss).
parent(victoria,albert).
parent(wass,albert).
parent(sass,albert).
parent(awss,albert).
parent(kash,albert).
parent(victoria,victorialsenior).
parent(wass,victorialsenior).
parent(sass,victorialsenior).
parent(awss,victorialsenior).
parent(kash,victorialsenior).

son(ismeel,john).
son(sakss,john).
son(ismeel,aslam).
son(sakss,aslam).
son(ismeel,daniel).
son(sakss,daniel).
son(albert,awss).
son(victorialsenior,awss).
son(albert,kash).
son(victorialsenior,kash).

daughter(albert,victoria).
daughter(victorialsenior,victoria).
daughter(albert,wass).
daughter(victorialsenior,wass).
daughter(albert,sass).
daughter(victorialsenior,sass).

finlaw(john,albert).
finlaw(daniel2,albert).

minlaw(john,victorialsenior).
minlaw(daniel2,victorialsenior).

/* RULES */
sibling(Person,Sib):-
    father(Person,Father),parent(Sib,Father).

dada(Person,Dada):-
    father(Person,Father),father(Father,Dada).
dadi(Person,Dadi):-
    father(Person,Father),mother(Father,Dadi).

nana(Person,Nana):-
    mother(Person,Mother),father(Mother,Nana).
nani(Person,Nani):-
    mother(Person,Mother),mother(Mother,Nani).

chachu(Person,Chachu):-
    father(Person,Father),youngerBrother(Father,Chachu).
chachi(Person,Chachi):-
    chachu(Person,Chachu),wife(Chachu,Chachi).

taya(Person,Taya):-
    father(Person,Father),elderBrother(Father,Taya).
tayi(Person,Tayi):-
    taya(Person,Taya),wife(Taya,Tayi).

mamu(Person,Mamu):-
    mother(Person,Mother),brother(Mother,Mamu).
mumani(Person,Mumani):-
    mamu(Person,Mamu),wife(Mamu,Mumani).

phupho(Person,Phupho):-
    father(Person,Father),sister(Father,Phupho).
phupha(Person,Phupha):-
    phupho(Person,Phupho),husband(Phupho,Phupha).

khala(Person,Khala):-
    mother(Person,Mother),sister(Mother,Khala).
khalu(Person,Khalu):-
    khala(Person,Khala),husband(Khala,Khalu).

pota(Person,GSon):-
    parent(Child,Person),son(Child,GSon).
poti(Person,GDaughter):-
    parent(Child,Person),daughter(Child,GDaughter).

bhanja(Person,Bhanja):-
    sister(Person,Sister),son(Sister,Bhanja).
bhanji(Person,Bhanji):-
    sister(Person,Sister),daughter(Sister,Bhanji).

bhatija(Person,Bhatija):-
    brother(Person,Brother),son(Brother,Bhatija).
bhatiji(Person,Bhatiji):-
    brother(Person,Brother),daughter(Brother,Bhatiji).

sala(Person,Sala):-
    wife(Person,Wife),brother(Wife,Sala).
saali(Person,Saali):-
    wife(Person,Wife),sister(Wife,Saali).
humzulf(Person,Humzulf):-
    saali(Person,Saali),husband(Saali,Humzulf).

behnoyi(Person,Behnoyi):-
    sister(Person,Sister),husband(Sister,Behnoyi).
bhabhi(Person,Bhabhi):-
    brother(Person,Brother),wife(Brother,Bhabhi).

devar(Person,Devar):-
    husband(Person,Husband),youngerBrother(Husband,Devar).
devrani(Person,Devrani):-
    devar(Person,Devar),wife(Devar,Devrani).

jeth(Person,Jeth):-
    husband(Person,Husband),elderBrother(Husband,Jeth).
jethani(Person,Jethani):-
    jeth(Person,Jeth),wife(Jeth,Jethani).

fatherinlaw(Person,FLaw):-
    finlaw(Person,FLaw).
motherinlaw(Person,MLaw):-
    minlaw(Person,MLaw).


