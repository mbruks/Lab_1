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
       %3
list_words:-read_str(A,_),append1([32],A,A1),reverse(A1,AR),list_words(AR,[],_,[]).
list_words([],LW,LW,_):-!.
list_words([H|T],LW,LWN,W):-(H=32 -> append([W],LW,LW1),list_words(T,LW1,LWN,[]);append1([H],W,W1),list_words(T,LW,LWN,W1)).

kol_repeat_in_list([H|T],X,K):-kol_repeat_in_list([H|T],X,0,K).
kol_repeat_in_list([],_,Kol,Kol):-!.
kol_repeat_in_list([H|T],X,K,Kol):-(H=X -> K1 is K+1,kol_repeat_in_list(T,X,K1,Kol);kol_repeat_in_list(T,X,K,Kol)).

number_3:-read_str(A,_),append1([32],A,A1),reverse(A1,AR),list_words(AR,[],LW,[]),number_3(LW,_,Word,0,_),write_str(Word).
number_3([],Word,Word,Kol,Kol):-!.
number_3([H|T],W,Word,K,Kol):-kol_repeat_in_list([H|T],H,K1),(K1>K -> Kol1 = K1,W1=H,number_3(T,W1,Word,K1,Kol1);number_3(T,W,Word,K,Kol)).

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
number_8:-read_str(A,_),prov_w(A,0,Indw),prov_x(A,0,Indx),(Indw<Indx->write("w встречается раньше");write("x встречается раньше")).
prov_w([],_,_):-write("Не существует w"),!,fail.
prov_w([Head|Tail],I,Ind):-(Head =:=119 -> Ind is I;I1 is I+1,prov_w(Tail,I1,Ind)).

prov_x([],_,_):-write("Не существует x"),!,fail.
prov_x([Head|Tail],I,Ind):-(Head =:=120 -> Ind is I;I1 is I+1,prov_x(Tail,I1,Ind)).

       %9
number_9:-read_str(St1,N1),read_str(St2,N2),(N1>N2-> N is N1-N2,big_str(St1,N);N is N2-N1,big_str(St2,N)).
big_str(_,0):-!.
big_str(Str,Num):-name(St,Str),write(St),nl,Num1 is Num-1,big_str(Str,Num1).

       %10
number_10:-read_str(St,_),number_10(St,St1),write_str(St1).

number_10([H1,H2,H3|T],List1):-H1=97,H2=98,H3=99,List1 = [119,119,119|T],!.
number_10(List,List1):-append1(List,[122,122,122],List1),!.
      
      %11
number_11:-read_str(Str,Length),(Length>10 -> number_11(Str,N); number_11(Str,Length,12,N)),write_str(N).
number_11(Str,N):-N=[_,_,_,_,_,_],append1(N,_,Str),!.
number_11(N,12,_,N):-!.
number_11(Str,L,Length,N):-L1 is L+1,append1(Str,[111],Str1),number_11(Str1,L1,Length,N).

      %13
number_13:-read_str(St,_),number_13(St,0,[],NSt),reverse(NSt,NStR),write_str(NStR).
number_13([],_,St,St):-!.
number_13([H|T],Counter,NSt,NStr):-Counter1 is Counter+1,0 is Counter1 mod 2,(H\=97,H\=98 -> append1([97],NSt,NSt1),number_13(T,Counter1,NSt1,NStr),!;
                                                                             append1([99],NSt,NSt1),number_13(T,Counter1,NSt1,NStr)),!.
number_13([H|T],Counter,NSt,NStr):-Counter1 is Counter+1,append1([H],NSt,NSt1),number_13(T,Counter1,NSt1,NStr).

      %14
number_14:-read_str(St,_),number_14(St,0,Kol),write(Kol).
number_14([],K,K):-!.
number_14([H|T],K,Kol):-H>47,H<58,K1 is K+1,number_14(T,K1,Kol),!.
number_14([_|T],K,Kol):-number_14(T,K,Kol),!.

      %15
number_15:-read_str(Str,_),number_15(Str).
number_15([]):-!.
number_15([H|_]):-H\=97,H\=98,H\=99,!,fail.
number_15([_|T]):-number_15(T).

      %16
number_16:-read_str(Str,_),number_16(Str,[],NL),write_str(NL).
number_16([],NL,NL):-!.
number_16([119,111,114,100|T],Buffer,NL):-append(Buffer,[108,101,116,116,101,114],BufferN),number_16(T,BufferN,NL),!.
number_16([H|T],Buffer,NL):-append1(Buffer,[H],BufferN),number_16(T,BufferN,NL),!.

      %17
number_17:-read_str(St,_),number_17(St,[],NL),write_str(NL).
number_17([],NL,NL):-!.
number_17([120,97,98,99|T],Buffer,NL):-append1(Buffer,[97,98,99],BufferN),number_17(T,BufferN,NL),!.
number_17([H|T],Buffer,NL):-append1(Buffer,[H],BufferN),number_17(T,BufferN,NL).

      %18
number_18:-read_str(St,_),number_18(St,[],NL),write_str(NL).
number_18([],NL,NL):-!.
number_18([97,98,99,H|T],Buffer,NL):-H>47,H<58,number_18([H|T],Buffer,NL),!.
number_18([H|T],Buffer,NL):-append1(Buffer,[H],BufferN),number_18(T,BufferN,NL).

     %19
number_19:-read_str(St,_),number_19(St,0,Kol),write(Kol).
number_19([],K,K):-!.
number_19([97,98,97|T],K,Kol):-K1 is K+1,number_19(T,K1,Kol),!.
number_19([_|T],K,Kol):-number_19(T,K,Kol).

     %20
number_20:-read_str(St,_),number_20(St,0,[],NSt),number_20(NSt,StStart),reverse(StStart,StEnd),number_20(StEnd,Stroka),reverse(Stroka,StrokaR),write_str(StrokaR).
number_20([],_,NL,NL):-!.
number_20([32|T],0,Buffer,NL):-append1(Buffer,[32],BufferN),number_20(T,1,BufferN,NL),!.
number_20([32|T],KolWS,Buffer,NL):-number_20(T,KolWS,Buffer,NL),!.
number_20([H|T],_,Buffer,NL):-append1(Buffer,[H],BufferN),number_20(T,0,BufferN,NL),!.
number_20([32|T],NSt):-number_20(T,NSt),!.
number_20(Nst,Nst):-!.

     %21
number_21:-read_str([H|T],_),read_str(St2,_),(in_list(St2,H) -> number_21(T,St2,[],[],LW);number_21([H|T],St2,[],[],LW)),write_list_str(LW).
number_21([],_,[],LW,LW):-!.
number_21([],_,LastWord,LW,ListWord):-append1(LW,[LastWord],ListWord),!.
number_21([H|T],List2,BufferWord,LW,ListWord):-not(in_list(List2,H)),append1(BufferWord,[H],BufferWordN),number_21(T,List2,BufferWordN,LW,ListWord),!.
number_21([_|T],List2,BufferWord,LW,ListWord):-append1(LW,[BufferWord],NLW),number_21(T,List2,[],NLW,ListWord).

    %22
number_22:-read_str(St,Length),number_22(St),number_22(St,Length).
number_22([H|T]):-write("First = "),put(H),nl,reverse([H|T],[HR|_]),write("End = "),put(HR),nl.
number_22(List,Length):-not(0 is Length mod 2),L is Length div 2+1,index(List,El,L,0),write("Middle = "),put(El),!.
number_22(_,_):-true.

index([H|T],El,Num):-index([H|T],El,Num,0).
index([H|T],El,Num,Chet):-Chet1 is Chet+1,(H = El,Num = Chet1 -> !;index(T,El,Num,Chet1)).
