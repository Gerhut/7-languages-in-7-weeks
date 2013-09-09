List myAverage := method(
  s := 0
  for (i, 0, (self size) - 1, s = s + self at(i))
  s / (self size)
)

list(1, 2, 3) myAverage println
list() myAverage println
list(1, "two", 3) myAverage println
