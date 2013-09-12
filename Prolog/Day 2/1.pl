reverse([], []).
reverse([Head|[]], [Head|[]]).
reverse([Head|Tail], [RHead|RTail]) :-
  my_reverse(Tail, [RHead|RCenter]),
  append(RCenter, [Head], RTail).