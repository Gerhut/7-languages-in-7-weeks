fib := method(n,
  if(n == 1 or n == 2,
    1,
    fib(n - 1) + fib(n - 2)
  )
)

fib(4) println

fib = method(n,
  v := list(1, 1)
  while(v at(n - 1) == nil,
    v append((v last) + (v last 1))
  )
  v at(n - 1)
)

fib(4) println
