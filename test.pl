age(erika, 21). /* facts */
age(christine, 22).
age(tori, 20).
age(sydney, 25).
age(maria, 22).
age(nick, 22).
age(clay, 27).
age(bob, 25).
age(zack, 21).
age(will, 20).

/* People are compatible if their age is the same. */

compatible([],0).
compatible(Name, Age) :-
age(X, Y),
age(Z, Y).
 
