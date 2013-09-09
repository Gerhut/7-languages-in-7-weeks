Matrix := Object clone
Matrix dim := method(x, y,
  self values := list()
  for(i, 1, y,
    subList := list()
    for(j, 1, x, subList append(nil))
    self values append(subList)
  )
  self
)

Matrix set := method(x, y, value,
  self values at(y) atPut(x, value)
  self
)

Matrix get := method(x, y,
  self values at(y) at(x)
)

matrix := Matrix clone
matrix dim(3, 3) set(2, 1, 9) get(2, 1) println
