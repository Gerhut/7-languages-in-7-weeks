n = rand(10)
begin
  print "Guess: "
  i = gets.to_i
  puts "Higher." if i > n
  puts "Lower." if i < n
end until i == n
puts "Right."