n = rand(10)
i = -1
until i == n
  puts "Guess: "
  i = gets.to_i
  puts "Higher." if i > n
  puts "Lower." if i < n
  puts "Right." if i == n
end