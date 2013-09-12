member_domain([], _).
member_domain([Head|Tail], Domain) :-
  member_domain(Tail, Domain),
  member(Head, Domain).

diags1([], []).
diags1([Queen|QueensTail], [Value|ValuesTail]) :-
  length(QueensTail, Count),
  Value is Queen - Count,
  diags1(QueensTail, ValuesTail).

diags2([], []).
diags2([Queen|QueensTail], [Value|ValuesTail]) :-
  length(QueensTail, Count),
  Value is Queen + Count,
  diags2(QueensTail, ValuesTail).

eight_queen(Queens) :-
  length(Queens, 8),
  member_domain(Queens, [1, 2, 3, 4, 5, 6, 7, 8]),

  diags1(Queens, Diags1),
  diags2(Queens, Diags2),

  fd_all_different(Queens),
  fd_all_different(Diags1),
  fd_all_different(Diags2).
