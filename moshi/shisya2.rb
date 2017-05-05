# 入力処理
n = gets.to_i
l = n.to_s.length
def ary(a)
  a = []
end

ans = []
(l - 1).times do |h|
  ans << ary(h)
end

ansl = ans.length
if l == 1
  if n < 5
  ans << n
  else
  ans << n.round(-1)
  end
elsif l == 2
  ans << n.round(-0)
  ans << n.round(-1)
else
  ansl.times do |m|
    break if m + 1 == ansl
    l.times do |i|
      ans[m] << n #これを入れておかないと、100みたいな値を入れたときに表示が出ない
      ans[m] << n.round(-i) if n.round(-i) > n# ifで改行するとendの数がずれて動かなくなる
      ans[m].each do |j|
        if j.round(-i) > n.round(-i) && j.round(-i) != n.round(-i)
          ans[m + 1] << j.round(-i)
          ans[m + 1].uniq!
        end
      end
    end
  end
end
m = ans.flatten.max
#以下のif文は、445を入れた時に500で止めずに1000まで行かせるため
#何も考えずにroundさせると123とかが0になるのでifで場合分け
if m > m.round(-l)
  puts m
else
  puts m.round(-l)
end

# m = (ans.flatten.uniq!).max
# puts m
# えー、この書き方
# 5桁目ぐらいまでは大丈夫だけど、それ以降はメモリが足りなくなる！
# だって、n = 24445ぐらいで
# p ansしたらもう大変な事になるもん
# 最低でも元の値より小さくなった数字は弾こう！
# とりあえず弾けた
# 次に元の値と同じやつは弾くっていうのを設定しよう

=begin
出来たと思ったら、何か一部の値でおかしい事になってるぞ！？
247→300oK
123→値が出ない！
nを直接入れて解決
次に445→500になってるのを解決する
これはもう最終手段
最後に出てきた値を四捨五入しよう
最後の所を場合分けにして無理矢理対応！
何とかテスト通ったあああああああああああ！
よし！
いえーい！
=end

=begin
正解はするけど美しさが足りない
どうしたものか
array.popも利用すればもっと良い感じに書ける気がするぞこれ
=end
