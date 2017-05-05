n =gets.to_i
l = n.to_s.length
ans = []
ans << n

(0..l).each do |i|
  if ans[0] < ans[0].round(-i)
    ans << ans[0].round(-i)
    ans.shift
  else
    #何もしない
  end
end

puts ans[0]

=begin
めっちゃ綺麗に出来てｸｿﾜﾛﾀ
pop使えばって思って試してるうちに
「あれこれ、先端の要素消した方が早くね？」って気付いて
探したらary.shiftの存在に気付く
結果的にこれが正解
しかもかなりスッキリまとまって分かりやすいという
一瞬で終わるやんかー！
昨日の苦労はなんだったのか
コード量は1/3になり、しかも見て分かる処理になった
これが、プログラミングってやつか……
=end
