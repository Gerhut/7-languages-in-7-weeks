class TicTacToe() {
  var board = "         "
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

  var players = List('O', 'X')
  var playerIndex = 0
  def playerChar = players(playerIndex)
  def togglePlayer { playerIndex = 1 - playerIndex }

  def put(i:Int) {
    if (board.charAt(i) == ' ') {
      board = board.substring(0, i) + playerChar + board.substring(i + 1)
      togglePlayer
    }
  }

  def printBoard {
    for (i <- 0 to 8) {
      print(board(i))
      if (i % 3 == 2) {
        println()
      } else {
        print(" ")
      }
    }
  }

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

val ttt = new TicTacToe
ttt.put(4)
ttt.printBoard
ttt.printWinner
ttt.put(0)
ttt.printBoard
ttt.printWinner
ttt.put(1)
ttt.printBoard
ttt.printWinner
ttt.put(7)
ttt.printBoard
ttt.printWinner
ttt.put(2)
ttt.printBoard
ttt.printWinner
ttt.put(6)
ttt.printBoard
ttt.printWinner
ttt.put(3)
ttt.printBoard
ttt.printWinner
ttt.put(5)
ttt.printBoard
ttt.printWinner
