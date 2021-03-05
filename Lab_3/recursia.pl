%максимальное среди двух чисел
max(X,Y,X):-X>Y,!.
max(_,Y,Y).

maxi(X,Y,X,Z):-X>=Y,X>=Z,!.
maxi(_,Y,Y,Z):-Y>=Z,!.
maxi(_,_,Z,Z):-!.

%X-fact первого аргумента
%рекурсия вверх
fact_up(0,1):-!.
fact_up(N,X):-N1 is N-1,fact_up(N1,X1),X is N*X1.

%X-fact первого аргумента
%рекурсия вниз
fact_down(1,CurX,CurX):-!.
fact_down(N,CurX,X):-N1 is N-1,CurX1 is CurX*N,fact_down(N1,CurX1,X).
factorial(N,X):-fact_down(N,1,X).

fib_up(1,1):-!.
fib_up(2,1):-!.
fib_up(N,X):-N1 is N-1,fib_up(N1,X1),N2 is N-2,fib_up(N2,X2),X is X1+X2.

fib_down(1,CurX2,_,CurX2):-!.
fib_down(N,CurX1,CurX2,X):-N1 is N-1,CurX3 is CurX1 + CurX2,fib_down(N1,CurX2,CurX3,X).
fib_down(N,X):-fib_down(N,1,1,X).

sum_up(0,0):-!.
sum_up(N,X):-N1 is N div 10,sum_up(N1,X1),X is X1 + N mod 10.

sum_down(N,X):-sum_down(N,0,X).
sum_down(0,X,X):-!.
sum_down(N,X,Sum):- N2 is N mod 10,N1 is N div 10,X1 is X+N2,sum_down(N1,X1,Sum).

max_up(0,0):-!.
max_up(N,X):-N1 is N div 10, max_up(N1,X2), CurX1 is N mod 10, max(CurX1,X2,X) .

max_down(N,X):-max_down(N,0,X).
max_down(0,X,X):-!. %когда нет цифр, остановка
max_down(CurX,Max,X):-CurX1 is CurX mod 10,CurY is CurX div 10, CurY1 is CurY mod 10,max(CurX1,CurY1,C),max(C,Max,U),max_down(CurY,U,X).

sum_up_del3(0,0):-!.
sum_up_del3(N,X):-N1 is N div 10,sum_up(N1,X1),del3(N,Y),X is X1 + Y.

del3(X,Y):- X mod 10 mod 3 =:= 0 , Y is X mod 10,!.
del3(_,Y):-Y is 0,!.

sum_down_del3(N,X):-sum_down_del3(N,0,X).
sum_down_del3(0,X,X):-!.
sum_down_del3(A,Sum,X):- A1 is A div 10,del3(A,Y), Sum1 is Sum+Y, sum_down_del3(A1,Sum1,X).

% Найти НОД двух чисел.
nod(A,A,A):-A=\=0,!. % остановка, A !=0
nod(0,B,B):-!.
nod(A,0,A):-!.
nod(A,B,Nod):-A>B,C is A mod B, nod(C,B,Nod),!.
nod(A,B,Nod):-A<B,C is B mod A, nod(A,C,Nod),!.

%Проверить число на простоту
prime(N,X):- N mod X =:= 0,!. % делится без остатка, выходим
prime(N,X):- X*X=<N,X1 is X+1,prime(N,X1).

prime(1):-!.
prime(N):-not(prime(N,2)).

%Найти количество делителей числа
kol_del(_,0,0):-!.
kol_del(N,CurX,X):-N mod CurX =:= 0,CurX1 is CurX-1,kol_del(N,CurX1,X1), X is X1+1;
N mod CurX=\= 0, CurX1 is CurX-1, kol_del(N,CurX1,X1), X is X1.
kol_del(N,X):-kol_del(N,N,X),!.

% Найти количество чисел, взаимно простых с заданным
kol_mutually_prime_up(_,0,0):-!.
kol_mutually_prime_up(N,CurX,X):-nod(N,CurX,Nod),Nod =:= 1,CurX1 is CurX-1,kol_mutually_prime_up(N,CurX1,X1),X is X1+1;
nod(N,CurX,Nod),Nod =\= 1, CurX1 is CurX-1,kol_mutually_prime_up(N,CurX1,X1), X is X1.
kol_mutually_prime_up(N,X):-kol_mutually_prime_up(N,N,X).

mutually_prime(X,Y,Z):-nod(X,Y,Nod),Nod =:= 1, Z is 1,!.
mutually_prime(_,_,Z):- Z is 0,!.

kol_mutually_prime_down(N,N,X,X):-!.
kol_mutually_prime_down(N,CurX,Kol,X):- mutually_prime(N,CurX,Nod),CurX1 is CurX+1, Kol1 is Kol+Nod,kol_mutually_prime_down(N,CurX1,Kol1,X).

kol_mutually_prime_down(N,X):-kol_mutually_prime_down(N,1,0,X).
