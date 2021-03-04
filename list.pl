%Вывод списка
writeList([]):-!.
writeList([H|T]):-write(H),writeList(T).

%Чтение списка
readList(0,[]):-!.
readList(N,[H|T]):-read(H),N1 is N-1,readList(N1,T).

%Сумма элементов списка
sum_list_down(List,Sum):-sum_list_down(List,0,Sum).
sum_list_down([],Sum,Sum):-!.
sum_list_down([H|T],S,Sum):-S1 is H + S,sum_list_down(T,S1,Sum).

sum_list:-write("Введите количество элементов"),nl,read(N),write("Введите элементы списка:"),nl,readList(N,List),sum_list_down(List,Sum),write("Сумма = "),write(Sum).

sum_list_up([],0):-!.
sum_list_up([H|T],S):-sum_list_up(T,S1),S is S1+H.

list_el_numb([H|T],Elem,Number):-list_el_numb([H|T],Elem,Number,0).
list_el_numb([H|T],Elem,Number,Count):-Count1 is Count+1,(H = Elem,Number = Count1 -> !;list_el_numb(T,Elem,Number,Count1)).

proverka:-write("Количество элементов в списке: "),read(N),nl,write("Введите элементы списка"),readList(N,[H|T]),nl,write("Введите элемент: "),read(Elem),nl,list_el_numb([H|T],Elem,Number),write(Number),!.

proverka:-write("Нет элемента").

proverka_elem:-write("Количество элементов в списке: "),nl,read(N),write("Введите элементы списка"),nl,readList(N,List),write("Введите номер элемента: "),nl,read(Number),list_el_numb(List,Elem,Number),write(Elem),!.

proverka_elem:-write("Нет элемента с таким номером").

min_list_up([H],H):-!.
min_list_up([H|T], Min):-min_list_up(T,Min1),(H<Min1 -> Min is H;Min is Min1).


min_list_down([],Min,Min):-!.
min_list_down([H|T],M,Min):-(H<M -> M1 is H;M1 is M),min_list_down(T,M1,Min).
min_list_down([H|T],Min):- min_list_down(T,H,Min).


proverka_min:-write("Количество элементов в списке: "),nl,read(N),write("Введите элементы списка"),nl,readList(N,List),min_list_down(List,Min),write("Минимальный элемент списка: "),write(Min),!.

member([H|T],X):-(X=H -> !;member(T,X)).

reverse(L,X):-rev(L,[],X).
rev([],X,X):-!.
rev([H|T],CurL,X):-rev(T,[H|CurL],X).

sublist([],_):-!.
sublist([H|TailSub],[H|TailList]):-sublist(TailSub,TailList).

p(SubList,List):-sublist(SubList,List),!.
p(SubList,[_|T]):-p(SubList,T).

repeat([]).
repeat([H|T]):-elem_in_list(T,H) -> fail,!;repeat(T).


unique_list(List,UList):-reverse(List,ListR),unique_list(ListR,[],UList).
unique_list([],UList,UList):-!.
unique_list([H|T],Buffer,UList):-(member(T,H) -> unique_list(T,Buffer,UList); unique_list(T,[H|Buffer],UList)).

counter([],_,Kolvo,Kolvo):-!.
counter([H|T],Elem,Num,Kolvo):-(H =:= Elem -> Num1 is Num+1;Num1 is Num), counter(T,Elem,Num1,Kolvo).
counter(List,Elem,Kolvo):-counter(List,Elem,0,Kolvo).

lenght([],L,L):-!.

