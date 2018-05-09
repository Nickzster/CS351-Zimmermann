% NICK ZIMMERMANN

/* Departments - Not used in this version of the "prototype". */

cs(cs111, cs211, cs311, cs315,cs343,cs436).
math(math270,math242,math372,math480).
physics(physics202, physics301).

/* Students */

students([troy,homer,ada,marty,gina]).

enrolled(troy, [cs311, cs436, math372]).
enrolled(homer, [math480, cs343, physics301]).
enrolled(ada, [cs436,cs343]).
enrolled(marty,[math480]).
enrolled(gina,[physics301,math372]).

passed(troy, [cs111,cs211]).
passed(homer,[cs111,cs211,cs311,math270,physics201,math242,cs436]).
passed(ada,[cs111,cs211,cs311,math270,physics201,physics301,math372]).
passed(marty,[cs111,cs211,cs311,math270,physics201]).
passed(gina,[cs111,cs211]).
passed(bob,[cs111,cs211]).


/* Requirements - Not used in this version of the "prototype".*/

core([cs111,cs211,cs311,math270,physics201]).
elective([cs315,cs436,math242,math372,physics301]).

/*  Do the students have the required courses, 
from both core and elective,
to graduate this semester? */

graduate(Name) :- coreSat(Name), electiveSat(Name), write(Name), write( ' is able to graduate!'). % In order to graduate, the student must fullfill the core requirements, and the elective requirements. 

/*
Checkboth is a utility function that checks whether the student is enrolled or has passed the course.
*/

checkboth(Item,Passed,Enrolled) :- member(Item,Passed) ; member(Item,Enrolled).

/*
checkdept is specifically for electives, as the student only needs to pass 1 course from each department
to satisfy the elective reqmt.
*/

checkdept(Item,Item2,Passed,Enrolled) :- checkboth(Item,Passed,Enrolled) ; checkboth(Item2,Passed,Enrolled).

/* coreSat is short for Core Satisfied? */

coreSat(Name) :- 
passed(Name,X),
enrolled(Name,Y),
checkboth(cs111,X,Y),
write(Name),write(' has passed cs111.'), nl,
checkboth(cs211,X,Y),
write(Name),write(' has passed cs211.'), nl,
checkboth(cs311,X,Y),
write(Name),write(' has passed cs311.'), nl,
checkboth(math270,X,Y),
write(Name),write(' has passed cs270.'), nl,
checkboth(physics201,X,Y),
write(Name),write(' has passed physics201.'), nl.

/* electiveSat is short for Elective Satisfied? */

electiveSat(Name) :-
passed(Name,X),
enrolled(Name,Y),
checkdept(cs315,cs436,X,Y), /* if the student has passed either cs315 or cs436, then the cs requirement is met.*/
write(Name),write(' has fullfilled the cs requirement.'), nl,
checkdept(math242,math372,X,Y), /* if the student has passed either math242 or math372, then the math requirement is met.*/
write(Name),write(' has fullfilled the math requirement.'), nl,
checkboth(physics301,X,Y), /* if the student has passed physics301, then the physics requirement is met.*/
write(Name),write(' has fullfilled the physics requirement.'), nl.











 
