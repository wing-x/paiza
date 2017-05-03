p = gets.to_i

a = p / 100
b = p / 100 + 10

if  p < 1000
  puts a.floor
else
  puts b.floor
end
