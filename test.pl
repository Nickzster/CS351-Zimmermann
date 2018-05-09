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

/* People are compatible if their age is the same. */

compatible(PersonA, PersonB) :- person(PersonA,X),person(PersonB, X).
 
