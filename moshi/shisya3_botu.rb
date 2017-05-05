#色々失敗した残骸その３
n = gets.to_i
l = n.to_s.length
ans = []

(0..l).each do |i|
  if n <= n.round(-i)
    ans << n.round(-i)
  else
    ans << n.round(-i)
    ans.pop
  end
end

(0..l).each do |j|
  if ans[0] <= ans[0].round(-j)
    ans << ans[0].round(-j)
  else
    ans << ans[0].round(-j)
    ans.pop
  end
end

m = ans.max
k =l-1
if m > m.round(-k)
  puts m
else
  puts m.round(-k)
end
=begin
そもそもこれあれじゃね？
ans[0]にn置いたらそれを繰り返すだけでいけるだろこれ
=end
=begin
#=>2450,(2447を入力した場合に
#つまりここまでで、n.round(-1)の処理をしたのと同義になる
後はこれを繰り返す
あーそうか、ansが一つに固定出来たから
ans[0]で繰り返すことが可能になるのか
ちょっと書いてみよう
=end

# 発想を転換してもうちょっとスッキリさせたい
#
# とりあえずif文で場合訳して
# 大きかったら
# array.pop
# []<<新しい値
# っていう感じにすれば、もっと楽になる気がするぞ
# これなら配列を大量に生成する必要もなくなるし
# これで一回書いてみよう。
# n = gets.to_i
=begin
p n.round(-0)
#=>247
p n.round(-1)
#=>250
p n.round(-2)
#=>200
p n.round(-3)
#=>0
次にこれを繰り返す
=end
=begin
ans =[]
(0..l).each do |i|
  ans << n.round(-i)
end
p ans
#=>[247, 250, 200, 0]
さらにこの処理にif文を加えて、250だけ残すようにする
=end
