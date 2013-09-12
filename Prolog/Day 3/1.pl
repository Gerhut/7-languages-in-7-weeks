valid([]).
valid([Head|Tail]) :-
  fd_all_different(Head),
  valid(Tail).

sudoku(Puzzle, Solution) :-
  Solution = Puzzle,

  Puzzle = [S11, S12, S13, S14,
            S21, S22, S23, S24,
            S31, S32, S33, S34,
            S41, S42, S43, S44,
            S51, S52, S53, S54,
            S61, S62, S63, S64],

  fd_domain(Solution, 1, 6),

  Row1 = [S11, S12, S13, S14],
  Row2 = [S21, S22, S23, S24],
  Row3 = [S31, S32, S33, S34],
  Row4 = [S41, S42, S43, S44],
  Row5 = [S51, S52, S53, S54],
  Row6 = [S61, S62, S63, S64],

  Col1 = [S11, S21, S31, S41, S51, S61],
  Col2 = [S12, S22, S32, S42, S52, S62],
  Col3 = [S13, S23, S33, S43, S53, S63],
  Col4 = [S14, S24, S34, S44, S54, S64],

  Squ1 = [S11, S12, S21, S22, S31, S32],
  Squ2 = [S13, S14, S23, S24, S33, S34],
  Squ3 = [S41, S42, S51, S52, S61, S62],
  Squ4 = [S43, S44, S53, S54, S63, S64],

  valid([Row1, Row2, Row3, Row4, Row5, Row6,
         Col1, Col2, Col3, Col4,
         Squ1, Squ2, Squ3, Squ4]).
