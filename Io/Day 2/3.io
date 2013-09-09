List sumList := method(
  s := 0;
  for(i, 0, (self size) - 1,
    s = s + if(self at(i) getSlot("sumList") != nil,
      self at(i) sumList,
      self at(i))
  )
)

list(1, 2, 3) sumList println
list(1, 2, list(1, 2, 3)) sumList println
list(1, list(1, 2, 3), list(1, 2, list(1, 2, 3))) sumList println
