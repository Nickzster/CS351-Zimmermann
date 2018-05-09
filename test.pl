/* Knowledge base */

person(erika, 21). /* fact */
person(christine, 22).
person(tori, 20).
person(sydney, 25).
person(maria, 22).
person(nick, 22).
person(clay, 27).
person(bob, 25).
person(zack, 21).
person(will, 20).
female(erika, christine, tori, sydney, maria).
male(nick, clay, bob, zack, will).

/* People are compatible if their age is the same., and they are not the same person. */

compatible(PersonA, PersonB) :- 
person(PersonA,X),
person(PersonB, X), 
PersonA \= PersonB,
male(PersonA) \= male(PersonB),
female(PersonA) \= female(PersonB).
 
