n,m = gets.split.map(&:to_i)

if m % n == 0
  puts "ok"
else
  puts "ng"
end
