-module (one).
-export ([value/2]).

value(List, Key) -> [LValue || {LKey, LValue} <- List, LKey = Key].
