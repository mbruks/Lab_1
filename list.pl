writeList([]):-!.
writeList([H|T]):-write(H),writeList(T).

