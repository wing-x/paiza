n = gets.to_i
ary1 = gets.split.map(&:to_i)
ary2 = gets.split.map(&:to_i)

aryc = ary1.slice(0,n)
aryr = ary2.slice(0,n)

aryf = []
aryr.product(aryc) do |i,j|
  aryf << i + j
end

arys = aryf.each_slice(n).to_a

arys.each do |n|
  puts n.join(" ")
end

=begin
やられたー！
これ数値が逆順になると表示が違ってくるやん！
だからsort使って一律で並び替えるとn = 5の入力例が成り立たなくなる！
うわーやられた、畜生
まあいい、多分 n =5の動きを見直せばいけるはず
単純にpuroductの所でaryc、aryrの順じゃなくて
aryr,arycでいけるっぽい（あくまでの足す時の基準が問題なので）
ｱﾎｽ
まだproductの使い方慣れてないから仕方が無い
今後慣れていこう
=end
