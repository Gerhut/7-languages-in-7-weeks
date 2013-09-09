List sumList := method(
  s := 0;
  self foreach(value,
    s = s + if(value getSlot("sumList") != nil,
      value sumList,
      value
    )
  )
  s
)

list(1, 2, 3) sumList println
list(1, 2, list(1, 2, 3)) sumList println
list(1, list(1, 2, 3), list(1, 2, list(1, 2, 3))) sumList println
