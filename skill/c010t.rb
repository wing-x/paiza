=begin
#一行目の入力処理
a,b,r = gets.split.map(&:to_i)

#二行目の入力処理
n = gets.to_i

#三行目の入力処理
aryn = []
n.times do |i|
  aryn[i] = gets.split.map(&:to_i)
end

p a
p b
p r
p n
p aryn
=end
#入力処理o

a = 20
b = 10
r = 10
aryn = [[25, 10], [20, 15], [70, 70]]

#ans = (aryn[0][0]-a)^2 + (aryn[0][1]-b)^2
#ans = (aryn[1][0]-a)^2 + (aryn[1][1]-b)^2
#ans = (aryn[2][0]-a)^2 + (aryn[2][1]-b)^2
#ans = ansa[0] + ansb[0]
#p ans

ansa = []
l = aryn.length
l.times do |i|
  ansa << (aryn[i][0]-a)**2
end
p ansa

ansb =[]
l.times do |j|
  ansb << (aryn[j][1]-b)**2
end
p ansb

ans = []
l.times do |k|
  ans << ansa[k] + ansb[k]
end
p ans

ans.each do |l|
    if   l >= r**2
     puts "silent"
    else
     puts "noisy"
    end
end
=begin
l = aryn.length
ans = []
l.times do |i|
  2.times do |j|
    ans <<  ((aryn[i][j]-a)^2 + (aryn[i][j]-b)^2)
  end
end
p ans
=end

=begin
計算部分の処理と文字表示部で分ける

文字表示部はaryans = []で作って
aryans.each do |i|
    if i => r^2
     puts "silent"
    else
    puts "noisy"
    end
  end
的に書けば良い
aryansを作ってひたすら放りこっむ形にしよう

そうか、二重ループにするといらない組み合わせまで計算するから駄目なのか
逆にansを二つに分ける、ansaとansb
これだったら片方ずつのループになる！
=end
