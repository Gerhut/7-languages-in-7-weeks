Object executeSlot := method(slotName,
  self perform(slotName)
)

foo := Object clone
foo bar := method("hello world." println)
foo executeSlot("bar")
