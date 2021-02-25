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
