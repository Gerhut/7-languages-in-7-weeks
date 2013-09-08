executeSlot := method(obj, slotName,
  obj getSlot(slotName) call
)

foo := Object clone
foo bar := method("hello world." println)
executeSlot(foo, "bar")
