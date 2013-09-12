min([Value], Value).
min([Head|Tail], TValue) :- min(Tail, TValue), TValue @=< Head.
min([Head|Tail], Head) :- min(Tail, TValue), TValue @> Head.
