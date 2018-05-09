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
likes(will, cars).
likes(nick, videogames).
likes(christine, work).
likes(erika, clubs).
likes(tori, drinking).
likes(sydney, drinking).
likes(clay, videogames).
likes(maria, videogames).
likes(bob, golfing).
likes(zack, videogames).
likes(will, videogames).


/* People are compatible if their age is the same, they are not the same person, and they like the same thing */

compatible(PersonA, PersonB) :- 
person(PersonA, X),
person(PersonB, X), 
likes(personA, Y),
likes(personB, Y),
PersonA \= PersonB.

 
