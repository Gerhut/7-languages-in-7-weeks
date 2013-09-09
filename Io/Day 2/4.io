List myAverage := method(
  s := 0
  self foreach(i, s = s + i)
  s / (self size)
)

list(1, 2, 3) myAverage println
list() myAverage println
list(1, "two", 3) myAverage println
