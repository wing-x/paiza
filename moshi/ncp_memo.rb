=begin
#入力処理の所
n = 2
h = {}
n.times do |i|
  h[i+1] = gets.split.map(&:to_i)
end
=end
h = {1=>[20, 5, 10], 2=>[45, 6, 40]}
ary = [[1,6],[2,12]]
=begin
item = h[ary[0][0]] #productだとメソッドと被るし、itemなら短いのでそのまま適応
item2 = h[ary[1][0]]
p item
#=>[20, 5, 10] 行ける
p item2
#=>[45, 6, 40] 行ける

op= item[0] * ary[0][1] #opはoriginal_pricekaから
dc = (ary[0][1] / item[1]) * item[2] #dcはdiscountから
price = op - dc

op2= item2[0] * ary[1][1] #opはoriginal_pricekaから
dc2 = (ary[1][1] / item2[1]) * item2[2] #dcはdiscountから
price2 = op2 - dc2

p price
p price2
=end
#これが基本形、これを繰り返しの構文に落していく
#これ2重ループじゃないと表現できなくね？そらおかしくなる
#いや、そもそもitemに変換せずに直接変数打ち込めば解決するやん
m =2
m.times do |i|
  item = h[ary[i][0]]
  op= item[0] * ary[i][1] #opはoriginal_pricekaから
  dc = (ary[i][1] / item[1]) * item[2] #dcはdiscountから
  price = op - dc
  puts price
end
#=>110
#=>460
#パーフェクト
=begin
op = 0
dc = 0
price =
ary.each do |item|
  #op = item[0] * ary[0][1]
  #dc =  (ary[0][1] / item[1]) * item[2]
  dc =  (ary[0][1] / item[1])
  #price = op - dc
  #puts price
end
#p item[0] =>1,2
#p item[1] =>6,12
#p item[2]=>nil,nilになるから使っちゃ駄目
#うがああああああああああああああ！面倒くせえええええええええ
#一回落ち着こう
=end
=begin
問題を見た瞬間に「あ、面倒なやつだこれ！」ってなるやつ
うん、大変だなこれ
そもそも入力部から大変じゃないこれ
まあとりあえず試し書きしていこう
n =gets.to_i
ary = []
n.times do |i|
  ary[i] = gets.split.map(&:to_i)
end
p ary
多分これしか無いよなー
分からんでも無いけど、後が大変な気がする
あ、そうでもないか
ary[0][0],ary[0][1],ary[0][2]の順番が、値段、（割引までの）条件個数、値引き値だし
そしてここで気付く
配列で受け取ると、後の商品購入処理で数字で管理できんやん！
最低でもハッシュでかかないと後で処理できん
（ハッシュならキーとの対応でいける)
n = 2
h = {}
n.times do |i|
  h[i+1] = gets.split.map(&:to_i)
end
p ary

20 5 10
45 6 40
{1=>[20, 5, 10], 2=>[45, 6, 40]}
グッド！
これで良い
次、この値を取り出す作業
p h[1]
#=>[20, 5, 10]
p h[1][0]
#=>20
p h[1][1]
#=>5
p h[1][2]
#=>10
おｋ、計算の所は再度変数を設定して、繰り返しの処理設定すりゃいいや

ああ、これ別に二つ目もなんとでもなるか

こっちは前の問題みたいに、配列で同じように受け取る
m = 2
ary = []
n.times do |j|
  ary[j] = gets.split.map(&:to_i)
end
んで
[[1,2],[2,5]]としたら
ary[0][0]がハッシュのナンバー
つまりh[ary[0][0]]で必要な配列を呼び出す

P = h[ary[0][0]][0](これが商品の値段) * ary[0][1](買う商品の個数) - (ary[0][1]/ary[0][2])*ary[0][3]
ってことかな
面倒くせええええええ
これ繰り返すのかよ！
どう書くとスマートかな
=end
