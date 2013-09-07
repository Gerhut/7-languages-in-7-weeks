require 'enumerator'
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
a[0...4].each {|i| puts i}
a[4...8].each {|i| puts i}
a[8...12].each {|i| puts i}
a[12...16].each {|i| puts i}
a.each_slice(4) {|i| puts i}
