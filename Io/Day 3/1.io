Builder := Object clone
Builder indent := 0
Builder forward := method(
  write("  " repeated(self indent * 2))
  writeln("<", call message name, ">")
  
  self indent = self indent + 1

  call message arguments foreach(argument,
    content := self doMessage(argument)
    if(content type == "Sequence",
      write("  " repeated(self indent * 2))
      writeln(doMessage(argument))
    )
  )

  self indent = self indent - 1
  
  write("  " repeated(self indent * 2))
  writeln("</", call message name, ">")
)

(Builder ul(
  li("a"),
  li("b"),
  "c"
))