valid([]).
valid([Head|Tail]) :-
  fd_all_different(Head),
  valid(Tail).

sudoku(Puzzle, Solution) :-
  Solution = Puzzle,

  Puzzle = [S11, S12, S13, S14,
            S21, S22, S23, S24,
            S31, S32, S33, S34,
            S41, S42, S43, S44],

  fd_domain(Solution, 1, 4),

  Row1 = [S11, S12, S13, S14],
  Row2 = [S21, S22, S23, S24],
  Row3 = [S31, S32, S33, S34],
  Row4 = [S41, S42, S43, S44],

  Col1 = [S11, S21, S31, S41],
  Col2 = [S12, S22, S32, S42],
  Col3 = [S13, S23, S33, S43],
  Col4 = [S14, S24, S34, S44],

  Squ1 = [S11, S12, S21, S22],
  Squ2 = [S13, S14, S23, S24],
  Squ3 = [S31, S32, S41, S42],
  Squ4 = [S33, S34, S43, S44],

  valid([Row1, Row2, Row3, Row4,
         Col1, Col2, Col3, Col4,
         Squ1, Squ2, Squ3, Squ4]),

  print(S11), print(' '), print(S12), print(' '), print(S13), print(' '), print(S14), print('\n'),
  print(S21), print(' '), print(S22), print(' '), print(S23), print(' '), print(S24), print('\n'),
  print(S31), print(' '), print(S32), print(' '), print(S33), print(' '), print(S34), print('\n'),
  print(S41), print(' '), print(S42), print(' '), print(S43), print(' '), print(S44).
