%ìàêñèìàëüíîå ñðåäè äâóõ ÷èñåë
max(X,Y,X):-X>Y,!.
max(_,Y,Y).

maxi(X,Y,X,Z):-X>=Y,X>=Z,!.
maxi(_,Y,Y,Z):-Y>=Z,!.
maxi(_,_,Z,Z):-!.

%X-fact первого аргумента
%рекурсия вверх
fact_up(0,1):-!.
fact_up(N,X):-N1 is N-1,fact_up(N1,X1),X is N*X1.
