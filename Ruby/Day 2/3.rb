File.read(ARGV[0]).each_with_index do |line, index|
  puts "#{index}: #{line}" if line.include?(ARGV[1])
end