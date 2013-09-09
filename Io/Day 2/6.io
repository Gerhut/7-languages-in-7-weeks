Matrix := Object clone
Matrix dim := method(x, y,
  self xSize := x
  self ySize := y
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

Matrix transport := method(
  newMatrix := Matrix clone
  newMatrix dim(self ySize, self xSize)
  self values foreach(i, subList,
    subList foreach(j, value,
      newMatrix values at(j) atPut(i, value)
    )
  )
  newMatrix
)

matrix := Matrix clone
matrix dim(3, 3) set(2, 1, 9) transport get(1, 2) println
