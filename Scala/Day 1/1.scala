class TicTacToe(val board:String) {
  val lines = List(
    (0 to 2),
    (3 to 5),
    (6 to 8),
    (0 to 6) by 3,
    (1 to 7) by 3,
    (2 to 8) by 3,
    (2 to 6) by 2,
    (0 to 8) by 4
  )

  def printWinner {
    var winnerChar = '\0'
    var drawGame = true
    for (line <- lines) {
      if (winnerChar == '\0') {
        winnerChar = board.charAt(line.start)
        for (i <- line) {
          if (winnerChar != board.charAt(i)) {
            winnerChar = '\0'
          }
        }
        if (winnerChar == ' ') {
          drawGame = false
          winnerChar = '\0'
        }
      }
    }
    if (winnerChar == ' ' || winnerChar == '\0') {
      if (drawGame) {
        println("Draw game.")
      } else {
        println("No winner yet.")
      }
    } else {
      println(winnerChar + " wins.")
    }
  }
}

new TicTacToe("XO  O X  ").printWinner
