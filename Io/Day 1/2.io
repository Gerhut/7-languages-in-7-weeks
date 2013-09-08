Object executeSlot := method(slotName,
  self getSlot(slotName) call
)

foo := Object clone
foo bar := method("hello world." println)
foo executeSlot("bar")
