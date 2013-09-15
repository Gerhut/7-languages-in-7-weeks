-module (two).
-export ([total/1]).

total(List) -> [{Item, Quantity * Price} || {Item, Quantity, Price} <- List].
