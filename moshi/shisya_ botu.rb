#入力処理
n = gets.to_i
l = (n.to_s).length
def ary(a)
  a = []
end

ans = []
(l-1).times do |h|
  ans << ary(h)
end

ansl = ans.length

ansl.times do |m|
  if m + 1 == ansl
    break
  end
  l.times do |i|
    ans[m] << n.round(-i)
    ans[m].each do |j|
      l.times do |k|
      ans[m+1] << j.round(-k)
      end
    end
  end
end

m = (ans.flatten).max
puts m

=begin
これでやると1桁、2桁の数字の時に出ない
さらに3桁でも、495みたいな数字がで500で止まる（正解は1000)
ので、shisya2に修正したものを記載
=end
