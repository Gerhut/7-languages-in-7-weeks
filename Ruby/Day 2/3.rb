File.read(ARGV[0]).each_with_index do |line, index|
  puts "#{index}: #{line}" if line =~ /#{ARGV[1]}/io
end