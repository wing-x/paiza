#使えそうな動き色々
=begin
n = 5
ary1 = [8,7,6,5,4]
ary2 = [1,2,3,4,5]
=end
n = 3
ary1 = [1,2,3]
ary2 = [4,6,8]

aryc = ary1.slice(0,n)
aryr = ary2.slice(0,n)

aryf = []
aryr.product(aryc) do |i,j|
  aryf << i + j
end

p aryf
arys = aryf.each_slice(n).to_a
p arys
=begin
ary1 = [1,2,3]
ary2 = [4,6,8]
ary3 = [ary1,ary2]
puts ary1.join(" ")
puts ary2.join(" ")
puts ary3.join(" ")
p ary3
#=>[[1, 2, 3], [4, 5, 6]]

ary3.each do |n|
  puts n.join(" ")
end
#=>1 2 3
#=>4 5 6


=begin
うん、下準備の段階はかなり良いね
とりあえずこれで目標が出来る
入力
3
1 2 3
4 6 8

aryc = [1,2,3]
aryr = [4,6,8]
とした時に
arys = [[5 6,7],[7,8,9],[9,10,11]]
というarysを作成し
arys.each do |n|
  puts n.join(" ")
end

という形に持って来れば答えになる
次はarysの作成方法だな
入力回数に対応して配列の作成を繰り返す（上記の例なら3回）
その3回の間に
aryc[0]+aryr[0],aryc[0]+aryr[1],aryc[0][2]（ここまでで一つの配列）
aryc[2]+aryr[0],aryc[2]+aryr[1],aryc[2][2]
aryc[1]+aryr[2],aryc[1]+aryr[1],aryc[1][2]

つまり2重ループの計算を3回に分けて行い
それを配列をして格納するって感じかな

あるいは2重ループの計算を先にやってから
Ｎ個分の数値に配列を分けるって形でも良いな
→ぐぐったら一瞬で見つかった
array = (0..10).to_a #=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each_slice(3).to_a #=> [[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10]]
さすがQitaだ、何でもあるね！
じゃあこれならもっと楽になるわ
2重ループで答えだしてそれを全部arysに格納
その後にslice(N)で分解して、後はputsでおｋ
じゃあ次2重ループだね
やり方は2種類、eachを繰り返す方法

arys = []
ary1.each do |row|
  ary2.each do |col|
    arys << row + col
  end
end
p arys
#=>[5, 7, 9, 6, 8, 10, 7, 9, 11]
arys.sort!
p arys
#=>[5, 6, 7, 7, 8, 9, 9, 10, 11]
p arys.each_slice(3).to_a
#=>[[5, 6, 7], [7, 8, 9], [9, 10, 11]]
#はいオッケー、完璧完璧

#ただこれで満足してたらrubylist失格だよ
#eachを2回書くなんて美しくない！
#なので次はproductを使った方法を試行
aryf = []
ary1.product(ary2) do |i,j|
  aryf << i + j
end
p aryf
aryf.sort!
p aryf
p aryf.each_slice(3).to_a
#うおおおおおおおおおおおお
#これめっちゃくちゃ綺麗だな、カッコいいいいいいいいいいいいいい！
#eachからのeachより全然カッコいい
#やったぜ
#えーこのデータだけで90行行ったから、本番用に新しくファイル起こそう
#残る問題はスライスだけだし、これはAOJで似たような問題解いたからそこだけ引っ張ろう

=end
