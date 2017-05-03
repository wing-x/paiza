#n = gets.to_i
n = 247
#p n.round(-0)
#p n.round(-1)
#p n.round(-2)

=begin
l = (n.to_s).length
ary1 = []
l.times do |i|
   p n.round(-i)
   ary1 << n.round(-i)
end
p ary1

ary2 = []
ary1.each do |j|
  l.times do |k|
  ary2 << j.round(-k)
  end
end

p ary2
#=>[247, 250, 200, 250, 250, 300, 200, 200, 200]
=end

l = (n.to_s).length
#ary1 = []
#ary2 = []
def ary(a)
  a = []
end
ans = []
(l-1).times do |h|
  ans << ary(h)
end
p ans
#=>[[], []]#n =247の時、おっけー！
#パニックになってきた、一回落ち着こう
=begin
l.times do |i|
  ans[0] << n.round(-i)
  ans[0].each do |j|
    l.times do |k|
   ans[1] << j.round(-k)
    end
  end
end
p ans[0]
p ans[1]
m = ans[1].max
puts m
=end
#ふむ、こういうことだ
#あとはans[m]っていう感じで変数で置けば良い、変数の値としては(l-1)
#まずこれこのループのさせ方がおかしいのか、ちょっと考え直そう
=begin
l.times do |i|
  ans[0] << n.round(-i)
  ans[0].each do |j|
    l.times do |k|
    ans[1] << j.round(-k)
    end
  end
end
=end
#p ans[0]
#=>[247, 250, 200]、これで一桁目を四捨五入する、でも最大値ではない
#p ans[1]
#=>[247, 250, 200, 250, 250, 300, 200, 200, 200]
#ans[0]から値を取り出して、それを変数kの桁数に合わせて四捨五入、最後にans[1]に格納
#つまり最終的にはこの処理をwhileすれば良いのか
ansl = ans.length
p ansl

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

p ans
# ansl=3,mは0 0 1で終了、つまりm => ansl-2
#やっと出来たー！
=begin
(l-1).times do |i|
  ansf = ans[i]
  l.times do |j|
    ansf << n.round(-j)
     ansf.each do |k|
       l.times do |m|
=end
=begin
l.times do |i|
  ary1 << n.round(-i)
  ary1.each do |j|
    l.times do |k|
   ary2 << j.round(-k)
    end
  end
end
p ary1
p ary2
m = ary2.max
puts m
=end


#3桁まではこれで行ける
#問題はこれを何百桁にまで対応させることだ
=begin
同じＢ問題とは思えないぐらい簡単っぽいけど良いのかこれ
とりあえず動きをテストしていこう。
あーそういう事かこれ！
単純にn.round(-i)していくだけだと駄目だ！
n = 247
p n.round(-0)
#=>247
p n.round(-1)
#=>250
p n.round(-2)
#=>200
i =-2の時、2[47]で四捨五入をするから、200になっちゃうのか！
ってことは繰り返す処理としては
最後の桁まで四捨五入→それを配列に格納して同じ処理を繰り返す
この処理の後、一番値の大きいものを出力させる
って感じかな
とりあえず四捨五入のループ処理を作ろう
=end
=begin
ary1.each do |j|
  ary1 << j.round
end
って書いちゃうと無限ループになって死ぬので注意
=end

=begin
3重ループの構造にしたらなんか出来たっぽい
これ配列2個で足りてるのか……？
あ、駄目だ最大値に到達してない
n = 44445の時に、44500で止まっちゃう
やっぱり配列の作成含めてループさせんと駄目だな
という事はproduct使って配列作成ループ込みで作ってみるか
あ、そうか
必要な配列数は桁数-1で足りる
まずはans配列にループ用配列を作成、ぶち込む
次にans配列からループ用配列を取り出して処理！
これで行けるやん！
=end
