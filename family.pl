man(sam).
man(pavel).
man(mason).
man(liam).
man(jacob).
man(alexander).
man(william).
man(denis).
man(bob).
man(michael).
man(evgeniy).

woman(samantha).
woman(jenny).
woman(elena).
woman(jessica).
woman(julia).
woman(jennifer).
woman(abby).
woman(megan).
woman(casey).
woman(ksenia).
woman(anna).

parent(sam,pavel).
parent(sam,elena).
parent(sam,liam).
parent(sam,julia).

parent(samantha,pavel).
parent(samantha,elena).
parent(samantha,liam).
parent(samantha,julia).

parent(pavel,alexander).
parent(pavel,william).
parent(jenny,alexander).
parent(jenny,william).

parent(mason,denis).
parent(mason,jennifer).
parent(elena,denis).
parent(elena,jennifer).

parent(liam,abby).
parent(liam,megan).
parent(jessica,abby).
parent(jessica,megan).

parent(jacob,casey).
parent(jacob,bob).
parent(julia,casey).
parent(julia,bob).

parent(anna,jenny).
parent(anna,mason).
parent(michael,jenny).
parent(michael,mason).

parent(ksenia,jessica).
parent(ksenia,jacob).
parent(evgeniy,jessica).
parent(evgeniy,jacob).

mans(X):-man(X),write(X),write(","),fail.
womans(X):-woman(X),write(X),write(","),fail.

children(X,Y):-parent(Y,X),!.
allChildren(Y):-parent(Y,X),write(X),nl,fail.

mother(X,Y):-parent(X,Y),woman(X),!.
mother(X):-mother(Y,X),write(Y),!.

son(X,Y):-parent(Y,X),man(X),!.
son(X):-son(Y,X),write(Y),!.

brother(X,Y):-parent(Z,X),parent(Z,Y),man(X),man(Z),not(X=Y),!.
all_brothers(X,Y):-parent(Z,X),parent(Z,Y),man(Z),man(X),not(X=Y).
brothers(X):-all_brothers(Y,X),write(Y),nl,fail.

sister(X,Y):-parent(Z,X),parent(Z,Y),woman(X),woman(Z),not(X=Y),!.
all_sisters(X,Y):-parent(Z,X),parent(Z,Y),woman(Z),woman(X),not(X=Y).
sisters(X):-all_sisters(Y,X),write(Y),nl,fail.

b_s(X,Y):-parent(Z,X),parent(Z,Y),woman(Z),not(X=Y),!.
b_s(X):-parent(Z,X),parent(Z,Y),woman(Z),not(X=Y),write(Y),nl,fail.

grand_pa(X,Y):- parent(X,Z),parent(Z,Y),man(X),!.
grand_pas(X):-parent(Y,Z),parent(Z,X),man(Y),write(Y),nl,fail.

grand_ma(X,Y):- parent(X,Z),parent(Z,Y),woman(X),!.
grand_mas(X):-parent(Y,Z),parent(Z,X),woman(Y),write(Y),nl,fail.

grand_pa_and_son(X,Y):-(grand_pa(X,Y),man(Y),!);grand_pa(Y,X),man(X),!.

grand_pa_and_da(X,Y):-(grand_pa(X,Y),woman(Y),!);grand_pa(Y,X),woman(X),!.
