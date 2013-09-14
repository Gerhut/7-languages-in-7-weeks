-module (two).
-export ([counter/0]).

counter() -> counter(1, []).
counter(10, List) -> [10|List];
counter(N, List) -> counter(N + 1, [N|List]).
