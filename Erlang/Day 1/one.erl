-module (one).
-export ([word_count/1]).

word_count([]) -> 1;
word_count([32|Rest]) -> word_count(Rest) + 1;
word_count([_|Rest]) -> word_count(Rest).
