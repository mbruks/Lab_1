:- dynamic human/2,female/2,hero/2,children/2,magical/2,voyage/2,rich/2,crimes/2,partner/2,wand/2,mask/2,treasure/2,tragic/2,legends/2,fly/2,knight/2,battles/2,story/2,bonaparte/2,
    mustache/2,negative/2.

read_str(A) :-get0(X),r_str(X, A, []).
r_str(10, A, A) :- !.
r_str(X, A, B) :-append(B, [X], B1),get0(X1),r_str(X1, A, B1).

human_r(X,Y):-repeat,(human(X,Y)->(nl,write(X),nl,write(Y),write("."),retract(human(X,Y)));X=nil,Y=nil).
female_r(X,Y):-repeat,(female(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(female(X,Y)));X=nil,Y=nil).
hero_r(X,Y):-repeat,(hero(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(hero(X,Y)));X=nil,Y=nil).
children_r(X,Y):-repeat,(children(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(children(X,Y)));X=nil,Y=nil).
magical_r(X,Y):-repeat,(magical(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(magical(X,Y)));X=nil,Y=nil).
voyage_r(X,Y):-repeat,(voyage(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(voyage(X,Y)));X=nil,Y=nil).
rich_r(X,Y):-repeat,(rich(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(rich(X,Y)));X=nil,Y=nil).
crimes_r(X,Y):-repeat,(crimes(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(crimes(X,Y)));X=nil,Y=nil).
partner_r(X,Y):-repeat,(partner(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(partner(X,Y)));X=nil,Y=nil).
wand_r(X,Y):-repeat,(wand(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(wand(X,Y)));X=nil,Y=nil).
mask_r(X,Y):-repeat,(mask(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(mask(X,Y)));X=nil,Y=nil).
treasure_r(X,Y):-repeat,(treasure(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(treasure(X,Y)));X=nil,Y=nil).
tragic_r(X,Y):-repeat,(tragic(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(tragic(X,Y)));X=nil,Y=nil).
legends_r(X,Y):-repeat,(legends(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(legends(X,Y)));X=nil,Y=nil).
fly_r(X,Y):-repeat,(fly(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(fly(X,Y)));X=nil,Y=nil).
knight_r(X,Y):-repeat,(knight(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(knight(X,Y)));X=nil,Y=nil).
battles_r(X,Y):-repeat,(battles(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(battles(X,Y)));X=nil,Y=nil).
story_r(X,Y):-repeat,(story(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(story(X,Y)));X=nil,Y=nil).
bonaparte_r(X,Y):-repeat,(bonaparte(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(bonaparte(X,Y)));X=nil,Y=nil).
mustache_r(X,Y):-repeat,(mustache(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(mustache(X,Y)));X=nil,Y=nil).
negative_r(X,Y):-repeat,(negative(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(negative(X,Y)));X=nil,Y=nil).




prTell:-tell('C:/Users/Admin/Desktop/Files/1.txt'),human_r(X1,_),X1=nil,told,
     tell('C:/Users/Admin/Desktop/Files/2.txt'),female_r(X2,_),X2=nil,told,
     tell('C:/Users/Admin/Desktop/Files/3.txt'),hero_r(X3,_),X3=nil,told,
     tell('C:/Users/Admin/Desktop/Files/4.txt'),children_r(X4,_),X4=nil,told,
     tell('C:/Users/Admin/Desktop/Files/5.txt'),magical_r(X5,_),X5=nil,told,
     tell('C:/Users/Admin/Desktop/Files/6.txt'),voyage_r(X6,_),X6=nil,told,
     tell('C:/Users/Admin/Desktop/Files/7.txt'),rich_r(X7,_),X7=nil,told,
     tell('C:/Users/Admin/Desktop/Files/8.txt'),crimes_r(X8,_),X8=nil,told,
     tell('C:/Users/Admin/Desktop/Files/9.txt'),partner_r(X9,_),X9=nil,told,
     tell('C:/Users/Admin/Desktop/Files/10.txt'),wand_r(X10,_),X10=nil,told,
     tell('C:/Users/Admin/Desktop/Files/11.txt'),mask_r(X11,_),X11=nil,told,
     tell('C:/Users/Admin/Desktop/Files/12.txt'),treasure_r(X12,_),X12=nil,told,
     tell('C:/Users/Admin/Desktop/Files/13.txt'),tragic_r(X13,_),X13=nil,told,
     tell('C:/Users/Admin/Desktop/Files/14.txt'),legends_r(X14,_),X14=nil,told,
     tell('C:/Users/Admin/Desktop/Files/15.txt'),fly_r(X15,_),X15=nil,told,
     tell('C:/Users/Admin/Desktop/Files/16.txt'),knight_r(X16,_),X16=nil,told,
     tell('C:/Users/Admin/Desktop/Files/17.txt'),battles_r(X17,_),X17=nil,told,
     tell('C:/Users/Admin/Desktop/Files/18.txt'),story_r(X18,_),X18=nil,told,
     tell('C:/Users/Admin/Desktop/Files/19.txt'),bonaparte_r(X19,_),X19=nil,told,
     tell('C:/Users/Admin/Desktop/Files/20.txt'),mustache_r(X20,_),X20=nil,told,
     tell('C:/Users/Admin/Desktop/Files/21.txt'),negative_r(X21,_),X21=nil,told.

prSee:-see('C:/Users/Admin/Desktop/Files/1.txt'), get0(Sym1), read_data(Sym1,1), seen,
     see('C:/Users/Admin/Desktop/Files/2.txt'), get0(Sym2), read_data(Sym2,2), seen,
     see('C:/Users/Admin/Desktop/Files/3.txt'), get0(Sym3), read_data(Sym3,3), seen,
     see('C:/Users/Admin/Desktop/Files/4.txt'), get0(Sym4), read_data(Sym4,4), seen,
     see('C:/Users/Admin/Desktop/Files/5.txt'), get0(Sym5), read_data(Sym5,5), seen,
     see('C:/Users/Admin/Desktop/Files/6.txt'), get0(Sym6), read_data(Sym6,6), seen,
     see('C:/Users/Admin/Desktop/Files/7.txt'), get0(Sym7), read_data(Sym7,7), seen,
     see('C:/Users/Admin/Desktop/Files/8.txt'), get0(Sym8), read_data(Sym8,8), seen,
     see('C:/Users/Admin/Desktop/Files/9.txt'), get0(Sym9), read_data(Sym9,9), seen,
     see('C:/Users/Admin/Desktop/Files/10.txt'), get0(Sym10), read_data(Sym10,10), seen,
     see('C:/Users/Admin/Desktop/Files/11.txt'), get0(Sym11), read_data(Sym11,11), seen,
     see('C:/Users/Admin/Desktop/Files/12.txt'), get0(Sym12), read_data(Sym12,12), seen,
     see('C:/Users/Admin/Desktop/Files/13.txt'), get0(Sym13), read_data(Sym13,13), seen,
     see('C:/Users/Admin/Desktop/Files/14.txt'), get0(Sym14), read_data(Sym14,14), seen,
     see('C:/Users/Admin/Desktop/Files/15.txt'), get0(Sym15), read_data(Sym15,15), seen,
     see('C:/Users/Admin/Desktop/Files/16.txt'), get0(Sym16), read_data(Sym16,16), seen,
     see('C:/Users/Admin/Desktop/Files/17.txt'), get0(Sym17), read_data(Sym17,17), seen,
     see('C:/Users/Admin/Desktop/Files/18.txt'), get0(Sym18), read_data(Sym18,18), seen,
     see('C:/Users/Admin/Desktop/Files/19.txt'), get0(Sym19), read_data(Sym19,19), seen,
     see('C:/Users/Admin/Desktop/Files/20.txt'), get0(Sym20), read_data(Sym20,20), seen,
     see('C:/Users/Admin/Desktop/Files/21.txt'), get0(Sym21), read_data(Sym21,21), seen.


read_data(-1, _) :- !.
read_data(_, Flag) :-read_str(Lang),name(X, Lang),read(Y),
            (
              Flag = 1 ->asserta(human(X, Y));
            (
              Flag = 2 ->asserta(female(X, Y));
            (
              Flag = 3 ->asserta(hero(X, Y));
            (
              Flag = 4 ->asserta(children(X, Y));
            (
              Flag = 5 ->asserta(magical(X, Y));
            (
              Flag = 6 ->asserta(voyage(X, Y));
            (
              Flag = 7 ->asserta(rich(X, Y));
            (
              Flag = 8 ->asserta(crimes(X, Y));
            (
              Flag = 9 ->asserta(partner(X, Y));
            (
              Flag = 10 ->asserta(wand(X, Y));
            (
              Flag = 11 ->asserta(mask(X, Y));
            (
              Flag = 12 ->asserta(treasure(X, Y));
            (
              Flag = 13 ->asserta(tragic(X, Y));
            (
              Flag = 14 ->asserta(legends(X, Y));
            (
              Flag = 15 ->asserta(fly(X, Y));
            (
              Flag = 16 ->asserta(knight(X, Y));
            (
              Flag = 17 ->asserta(battles(X, Y));
            (
              Flag = 18 ->asserta(story(X, Y));
            (
              Flag = 19 ->asserta(bonaparte(X, Y));
            (
              Flag = 20 ->asserta(mustache(X, Y));asserta(negative(X, Y)) )))))))))))))))))))),
         get0(Sym),
         read_data(Sym, Flag).


question1(X1):-	write("Is your character human?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X1).

question2(X2):-	write("Is your character female?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X2).

question3(X3):-	write("Was your character a hero to the people?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X3).

question4(X4):-	write("Did your character have children?"),nl,
				write("1. Yes"),nl,
                                write("0. No"),nl,
                                read(X4).

question5(X5):-	write("Is your character connected to the magical world?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X5).

question6(X6):- write("Has your character ever gone on a long voyage?"),nl,
                                write("1. Yes"),nl,
				write("0. NO"),nl,
                                read(X6).

question7(X7):-	write("Whether your character is rich?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X7).

question8(X8):-	write("Did your character solve crimes?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
				read(X8).

question9(X9):-	write("Did your character have a partner?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
				read(X9).

question10(X10):- write("Did your character have a magic wand?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
				read(X10).

question11(X11):- write("Did your character wear a mask?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
				read(X11).

question12(X12):- write("Was your character looking for treasure?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X12).

question13(X13):- write("Did your character have a tragic fate?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X13).

question14(X14):- write("Do they tell you about your character in legends?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X14).

question15(X15):- write("Can your character fly?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X15).

question16(X16):- write("Was your character a knight?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X16).

question17(X17):- write("Your character was the hero of the battles?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X17).

question18(X18):- write("Did your character's story end in death?"),nl,
				write("1. Yes"),nl,
                                write("0. No"),nl,
                                read(X18).

question19(X19):- write("Is your character connected to the time of Bonaparte's reign?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X19).

question20(X20):- write("Did your character have a mustache?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X20).
question21(X21):- write("Is your character negative?"),nl,
				write("1. Yes"),nl,
				write("0. No"),nl,
                                read(X21).

pr :-prSee,question1(X1),question2(X2),question3(X3),question4(X4),question5(X5),
        question6(X6),question7(X7),question8(X8),question9(X9),question10(X10),
        question11(X11),question12(X12),question13(X13),question14(X14),
        question15(X15),question16(X16),question17(X17),question18(X18),
        question19(X19),question20(X20),question21(X21),
         (human(X,X1),female(X,X2),hero(X,X3),children(X,X4),magical(X,X5),
         voyage(X,X6),rich(X,X7),crimes(X,X8),partner(X,X9),wand(X,X10),
         mask(X,X11),treasure(X,X12),tragic(X,X13),legends(X,X14),
         fly(X,X15),knight(X,X16),battles(X,X17),story(X,X18),
         bonaparte(X,X19),mustache(X,X20),negative(X,X21),write(X);
         (write("Character -> "),
          read(Character),
          asserta(human(Character, X1)),
          asserta(female(Character, X2)),
          asserta(hero(Character, X3)),
          asserta(children(Character, X4)),
          asserta(magical(Character, X5)),
          asserta(voyage(Character, X1)),
          asserta(rich(Character, X1)),
          asserta(crimes(Character, X1)),
          asserta(partner(Character, X1)),
          asserta(wand(Character, X1)),
          asserta(mask(Character, X1)),
          asserta(treasure(Character, X1)),
          asserta(tragic(Character, X1)),
          asserta(legends(Character, X1)),
          asserta(fly(Character, X1)),
          asserta(knight(Character, X1)),
          asserta(battles(Character, X1)),
          asserta(story(Character, X1)),
          asserta(bonaparte(Character, X1)),
          asserta(mustache(Character, X1)),
          asserta(negative(Character, X1)),
          prTell,nl,
          write("Character was added!"))).


































