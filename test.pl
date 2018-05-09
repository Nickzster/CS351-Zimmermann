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
gender(erika, female).
gender(christine, female).
gender(tori, female).
gender(sydney, female).
gender(maria, female).
gender(nick, male).
gender(clay, male).
gender(bob, male).
gender(zack, male).
gender(will, male).


/* People are compatible if their age is the same., they are not the same person, and they are not the same gender. */

compatible(PersonA, PersonB) :- 
person(PersonA, X),
person(PersonB, X), 
PersonA \= PersonB,
gender(PersonA, X) \= gender(PersonB, X).
 
