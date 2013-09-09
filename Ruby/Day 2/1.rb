require 'enumerator'
a = (1..16).to_a
(0..12).step(4) do |i|
  a[i...i + 4].each {|i| print i}
  puts
end
a.each_slice(4) do |i|
  print i
  puts
end
