n = gets.to_i
h = {}
n.times do |i|
  h[i+1] = gets.split.map(&:to_i)
end

m = gets.to_i
ary = []
m.times do |j|
  ary[j] = gets.split.map(&:to_i)
end

m.times do |k|
  item = h[ary[k][0]]
  op= item[0] * ary[k][1] #opはoriginal_priceから
  dc = (ary[k][1] / item[1]) * item[2] #dcはdiscountから
  price = op - dc
  puts price
end
