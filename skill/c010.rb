#一行目の入力処理
a,b,r = gets.split.map(&:to_i)

#二行目の入力処理
n = gets.to_i

#三行目の入力処理
aryn = []
n.times do |i|
  aryn[i] = gets.split.map(&:to_i)
end

#計算と表示部
ansa = []
l = aryn.length
l.times do |i|
  ansa << (aryn[i][0]-a)**2
end

ansb =[]
l.times do |j|
  ansb << (aryn[j][1]-b)**2
end

ans = []
l.times do |k|
  ans << ansa[k] + ansb[k]
end

ans.each do |l|
    if   l >= r**2
     puts "silent"
    else
     puts "noisy"
    end
end
