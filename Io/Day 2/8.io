value := Random value(100) ceil
sin := File clone standardInput
for(i, 1, 10,
  n := sin readLine() asNumber
  if(n == value, "Right." println; break)
  if(n < value, "Lower.", "Higher.") println
)
