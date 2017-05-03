# angou
# 常駐先が女の子だったら～のC問題
a0, a1, a2, a3, a4, a5, a6, a7, a8, a9 = gets.split.map(&:to_i)
s = gets.chop.to_s #chopで改行コードを消さないとifの時にマッチしないので注意
t = gets.chop.split('').map(&:to_i) # chopは改行コードを落すため、この状態で配列を作成すると最後に\nが入って、to_iで数値化した時に最終的に0になる
ary = [a0, a1, a2, a3, a4, a5, a6, a7, a8, a9]

# encode時の処理
if s == "encode"
  x = []
  t.each do |i|
    x << ary[i]
  end
  puts x.join
else
  # decode時の処理
  y = []
  t.each do |i|
    y << ary.index(i)
  end
  puts y.join
end

# p ary.index(0)
# =>7
# puts ary.index(0)
# =>7
# good!
# y = []
# t.each do |i|
#   y << ary[i]
# end
# puts x.join
# 久々に挑戦したけど、やっと方向性が見えた
# とりあえず二つの配列は作成できたので、お互いに好きな数値は取り出せるようになった
# encodeの場合は、例題で言えば
# ary[2]
# ary[5]
# ary[7]
# を繰り替えし処理して、最後に合体させれば良いというわけか
# なんとか処理ができた！
# x = []
# t.each do |i|
#   x << ary[i]
# end
# puts x.join
# こういう感じだね、ary[i]っていう書き方ですでにi=t[i]が代入されるらしい、なるほどね！
#つまり配列を使ってeach処理をすれば、使う変数を制御できるのか！
#単純だけど気付かなかった、これはめちゃくちゃ便利になるぞ！
# あとはdecodeの処理だけだ！
# if s == encode
#   puts t.gsub(/[0-9]/,)
