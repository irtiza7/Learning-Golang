% Version: SWI-Prolog 8.4.1
% Name: Muhammad Irtaza
% Roll Number: 21L-7232

/* FACTS */
male(irtaza).
male(muslim).
male(ali).
male(ahmed).
male(hassaan).
male(awais).
male(kashif).

female(raheela).
female(shahida).

husband(raheela,muslim).
husband(naeema,akram).
husband(taiJee,aslam).
husband(shahida,kashif).

wife(mushtaak,saeeda).
wife(ismail,sakeena).
wife(muslim,raheela).
wife(aslam,taiJee).
wife(akram,naeema).
wife(kashif,shahida).

wife(mujahid,saima).
wife(akram,waseema).
wife(ali,mehar).

father(irtaza,muslim).
father(ali,muslim).
father(ahmed,muslim).
father(hassaan,muslim).
father(muslim,ismail).
father(aslam,ismail).
father(akram,ismail).
father(haroon,aslam).

father(raheela,mushtaak).
father(saima,mushtaak).
father(waseema,mushtaak).
father(kashif,mushtaak).
father(awais,mushtaak).
father(hafsa,akram).
father(hajra,akram).
father(sadia,aslam).
father(hassan,akram).
father(zareen,akram).



mother(irtaza,raheela).
mother(muslim,sakeena).
mother(raheela,saeeda).

brother(irtaza,ahmed).
brother(irtaza,ali).
brother(irtaza,hassaan).
brother(raheela,awais).
brother(raheela,kashif).

elderBrother(muslim,aslam).
youngerBrother(muslim,aleem).
youngerBrother(muslim,akram).

sister(raheela,saima).
sister(raheela,waseema).

parent(irtaza,muslim).
parent(ali,muslim).
parent(ahmed,muslim).
parent(hassaan,muslim).
parent(irtaza,raheela).
parent(ali,raheela).
parent(ahmed,raheela).
parent(hassaan,raheela).


/* RULES */
sibling(Person,Sib):-
    brother(Person,Sib),sister(Person,Sib).

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
    child(Person,Child),son(Child,GSon).
poti(Person,GDaughter):-
    child(Person,Child),daughter(Child,GDaughter).

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
sali(Person,Sali):-
    wife(Person,Wife),sister(Wife,Sali).

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











