def to_hash(cs)
  cs.chars.each_with_object(Hash.new(0)){|c, h| h[c] += 1}
end

gets
before = to_hash(gets.chomp)
after = to_hash(gets.chomp)
count = 0
after.keys.each do |k|
  c = after[k] - before[k]
  count += c if c > 0
end
puts count
