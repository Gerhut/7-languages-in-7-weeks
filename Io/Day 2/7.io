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

Matrix read := method(filename,
  file := File clone openForReading(filename)
  newMatrix := Matrix clone
  encodedValues := List fromEncodedList(file readToEnd)
  newMatrix values := list()
  encodedValues foreach(subList,
    newMatrix values append(List fromEncodedList(subList))
  )
  newMatrix xSize := newMatrix values first size
  newMatrix ySize := newMatrix values size
  newMatrix
)

Matrix write := method(filename,
  file := File clone openForUpdating(filename)
  encodedValues := list()
  self values foreach(subList,
    encodedValues append(subList asEncodedList)
  )
  file write(encodedValues asEncodedList)
  file close
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
matrix dim(3, 3) set(2, 1, 9) write("foo")
Matrix read("foo") get(2, 1) println
