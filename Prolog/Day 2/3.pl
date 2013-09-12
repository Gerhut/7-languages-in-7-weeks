my_min([Value], Value).
my_min([Head|Tail], TValue) :- my_min(Tail, TValue), TValue @=< Head.
my_min([Head|Tail], Head) :- my_min(Tail, TValue), TValue @> Head.

my_rest(List, Value, Rest) :-
  append(Forward, [Value|Backward], List),
  append(Forward, Backward, Rest).

my_sort([], []).
my_sort([Value], [Value]).
my_sort(List, [Least|Sorted]) :-
  my_min(List, Least),
  my_rest(List, Least, Rest),
  my_sort(Rest, Sorted).
