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
