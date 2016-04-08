## Array.
## Created by quyetdc, June - 2014

## Khởi tạo
a = Array.new
a = []

1..5 == [1, 2, 3, 4, 5]

a = [1, 2, 3, 4, 5]
a[0]                              ##  => 1
a[1]                              ##  => 2
a[-1]                             ##  => 5
a[-2]                             ##  => 4

a.push(1)                         ## => [1, 2, 3, ,4, 5, 1]
a.index(2)                        ## => 3
a.include? 2                      ## => true

a.each do |i|
  puts "#{i}" if i == 3
end

a.uniq                            ##  => [1, 2, 3, 4, 5]
                                  ##  a => [1, 2, 3, 4, 5, 1]

a.uniq!                           ##  a => [1, 2, 3, 4, 5]

a.map {|i| i += 1}                ## you can use equivalent 'collect' command instead
                                  ## create a copy array of a then do expression in block {}
                                  ## ==> [2, 3, 4, 5, 6]
                                  ## a ==> [1, 2, 3, 4, 5]

a.map! {|i| i += 1}               ## you can use equivalent 'collect!' command instead
                                  ## do expression in block {} on each element of a
                                  ## a ==> [2, 3, 4, 5, 6]

b = [1, 2, 8, 9]
a & b                             ## => [1, 2]
a | b                             ## => [1, 2, 3, 4, 5, 8, 9]

