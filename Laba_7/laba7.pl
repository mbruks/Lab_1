read_str(A,N):-get0(X),r_str(X,A,[],N,0).
r_str(10,A,A,N,N):-!.
r_str(X,A,B,N,K):-K1 is K+1,append(B,[X],B1),get0(X1),r_str(X1,A,B1,N,K1).

write_str([]):-!.
write_str([H|Tail]):-put(H),write_str(Tail).

write_list_str([]):-!.
write_list_str([H|Tail]):-write_str(H),write(" "),write_list_str(Tail).

append1([],List,List):-!.
append1([H1|T1],List,[H1|T3]):-append(T1,List,T3).

reverse_list(List,ListR):-reverse_list(List,[],ListR).
reverse_list([],Buffer,Buffer):-!.
reverse_list([H|T],Buffer,ListR):-reverse_list(T,[H|Buffer],ListR).

reverse(A, Z):- reverse(A,Z,[]).
reverse([],Z,Z).
reverse([H|T],Z,Acc):- reverse(T,Z,[H|Acc]).

       %1
wr_str:-read_str(A,Length),write_str(A),write(","),write_str(A),write(","),write_str(A),write(","),write(Length).
       %2
kol_w:-read_str(A,_),append1([32],A,A1),kol_words(A1,0,Kol),write(Kol).
kol_words([_|[]],Kol,Kol):-!.
kol_words([H1|[H2|T]],K,Kol):-(H1=32,H2\=32 -> K1 is K+1,kol_words([H2|T],K1,Kol);kol_words([H2|T],K,Kol)).
       %4
prov:-read_str(A,Length),(Length>5 -> prov(A),reverse(A,AR),provL(AR);prov(A,Length)).
prov([H1|[H2|[H3|_]]]):-put(H1),put(H2),put(H3),!.
prov([_|_],0):-!.
prov([H|T],Length):-put(H),L1 is Length-1,prov([H|T],L1).
provL([H1|[H2|[H3|_]]]):-put(H3),put(H2),put(H1),!.

length_list([],0):-!.
length_list([_|T],L):-length_list(T,L1),L is L1+1.

       %5
index_end_all:-read_str(Sr,_),reverse(Sr,[H|_],_),EndS = H,list_entry_el(Sr,EndS,_).

list_entry_el([H|T],El,Num):-list_entry_el([H|T],El,Num,0).
list_entry_el([],_,_,_):-!.
list_entry_el([H|T],El,Num,Chet):-Chet1 is Chet+1,(H = El,Num1 = Chet1 -> write(Chet1),write(" "),list_entry_el(T,El,Num1,Chet1);list_entry_el(T,El,Num,Chet1)).

       %6
index_3:-read_str(St,_),index_3(St,0).
index_3([],_):-!.
index_3([H|T],Counter):-Counter1 is Counter+1,(0 is Counter1 mod 3 -> put(H),index_3(T,Counter1);index_3(T,Counter1)).

       %7
kol_cpez_sim([_|[]],KZ,KZ):-!.
kol_cpez_sim([H1|[H2|T3]],KZero,KolZero):-((H1=43;H1=45),H2=48 -> KZero1 is KZero+1,kol_cpez_sim([H2|T3],KZero1,KolZero);kol_cpez_sim([H2|T3],KZero,KolZero)).
kol_plus_minus:-read_str(St,_),kol_plus_minus(St,0,KP,0,KM),kol_cpez_sim(St,0,KZ),write("Plus = "),write(KP),nl,write("Minus = "),write(KM),nl,write("Zero = "),write(KZ),!.
kol_plus_minus([],KP,KP,KM,KM):-!.
kol_plus_minus([43|T],KP,KolP,KM,KolM):-KP1 is KP+1,kol_plus_minus(T,KP1,KolP,KM,KolM).
kol_plus_minus([45|T],KP,KolP,KM,KolM):-KM1 is KM+1,kol_plus_minus(T,KP,KolP,KM1,KolM).
kol_plus_minus([_|T],KP,KolP,KM,KolM):-kol_plus_minus(T,KP,KolP,KM,KolM).
       
       %8
list_el_num([H|T],El,Num):-list_el_num([H|T],El,Num,0).
list_el_num([],119,0,_):-write("w Не существует"),nl,!.
list_el_num([],120,0,_):-write("x Не существует"),nl,!.
list_el_num([],_,0,_):-!.
list_el_num([H|T],El,Num,Count):-Count1 is Count+1,(H = El,Num = Count1 -> !;list_el_num(T,El,Num,Count1)).

number_8:-read_str(St,_),number_8(St).
number_8(St):-list_el_num(St,119,N1),list_el_num(St,120,N2),N1\=N2,(N1<N2 -> (write("Раньше: "),put(119),nl;write("Раньше: "),put(120))).
