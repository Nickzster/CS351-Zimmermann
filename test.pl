cost(cornflakes, 2).
cost(coffee, 3).
cost(chocolate, 5).
cost(crisps, 12).
total_cost([Item|Rest], Cost) :-
 cost(Item, ItemCost),
 total_cost(Rest, CostOfRest),
 Cost is ItemCost + CostOfRest.