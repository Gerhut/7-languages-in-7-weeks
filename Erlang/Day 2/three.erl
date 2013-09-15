-module (three).
-export ([winner/1]).

lines([S11, S12, S13, S21, S22, S23, S31, S32, S33]) ->
  Row1 = [S11, S12, S13],
  Row2 = [S21, S22, S23],
  Row3 = [S31, S32, S33],
  Col1 = [S11, S21, S31],
  Col2 = [S12, S22, S32],
  Col3 = [S13, S23, S33],
  Diag1 = [S11, S22, S33],
  Diag2 = [S13, S22, S31],
  [Row1, Row2, Row3, Col1, Col2, Col3, Diag1, Diag2].

winner(Board) ->
  Lines = lines(Board),
  AllX = lists:any(fun(Line) -> lists:all(fun(X) -> X == 88 end, Line) end, Lines),
  AllO = lists:any(fun(Line) -> lists:all(fun(X) -> X == 79 end, Line) end, Lines),
  AllOccupied = lists:all(fun(X) -> X /= 32 end, Board),
  if
    AllX ->
      "x";
    AllO ->
      "o";
    AllOccupied ->
      "cat";
    true ->
      "no_winner"
  end.
