Number div := Number getSlot("/")
Number / = method(n,
  if (n == 0, 0, self div(n))
)

(3 / 3) println
(3 / 0) println
