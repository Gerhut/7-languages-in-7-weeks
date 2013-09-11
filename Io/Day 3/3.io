Builder := Object clone
Builder indent := 0
Builder forward := method(
  write("  " repeated(self indent * 2))
  write("<", call message name)
  arguments := call message arguments
  if (arguments first name == "curlyBrackets",
    doMessage(arguments removeFirst)
  )
  writeln(">")
  self indent = self indent + 1
  arguments foreach(argument,
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

curlyBrackets := method(
  call message arguments foreach(argument,
    value := doMessage(argument)
    write("=\"", value, "\"")
  )
)

Sequence : := method(
  write(" ", self)
)

(Builder ul(
  {"size" : "3"},
  li("a"),
  li("b"),
  "c"
))
