#一行目の入力処理
n,m,k = gets.split.map(&:to_i)

#二行目の入力処理
ary = gets.split.map(&:to_f)#to_fでフロート化
aryn =ary.slice(0,n)

#三行目の入力処理
arym = []
m.times do |i|
  arym[i] = gets.split.map(&:to_i)
end

#入力処理完成

#計算実行部、グチャグチャになってて酷い
m.times do |i|
  n.times do |j|
    ary <<  aryn[j] * arym[i][j]
  end
end

aryf = ary.each_slice(n).to_a

arysum = []
aryf.each do |k|
  arysum << k.inject(:+)
end

arysum.sort!{|a,b| b <=> a}
aryk = arysum.each_slice(k).to_a
arym = aryk[0]

arym.each do |m|
  puts m.round
end

=begin
1行目の入力　N,M,K
N：パラメータの個数
→2行目の入力で、Ｎ回繰り返して配列に格納、必要分をスライス
違う、これは配列に入れてからNでスライスするパターンだ！

M:ユーザー数
→M回入力を繰り返せば良い

K：トップ（表示する量）
つまり最終結果を計算後、値の大きい順にソート
さらにそれかKの数だけ配列をスライス、表示

後ネックになるのは四捨五入の処理だけ！
充分かける

計算部分が恐ろしいほどグチャグチャになった
多分もっとスマートに出来るはず
実力不足か
=end
