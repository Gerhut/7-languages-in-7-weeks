-module (three).
-export ([status/1]).

status({error, Message}) -> "error: " ++ Message;
status(success) -> "success".
