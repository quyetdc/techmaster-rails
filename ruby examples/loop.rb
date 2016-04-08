## Loop statements
## Created by quyetdc, June - 2014

NUM = 5

## WHILE LOOP"#{
var1 = 0
while var1 < NUM do
  ## this block of code will be executed while conditions are true
  puts "#{var1}"
  var1 += 1
end

## UNTIL LOOP
var2 = 0
until var2 == 5 do
  ## this block of code will be executed while conditions are false
  puts "#{var2}"
  var2 += 1
end

## FOR LOOP
for i in (0..5) do
  ## 0..5 == [0, 1, 2, 3, 4, 5]
  puts "#{i}"
end

## EACH LOOP
(0..5).each do |i|
  puts "#{i}"
end

## BREAK
## Kết thúc khối loop
(0..5).each do |i|
  break if i  == 2
  puts "#{i}"
end

## NEXT
## chuyển sang vòng lặp tiếp theo
(0..5).each do |i|
  next if i  == 2
  puts "#{i}"
end

