#1行目の入力処理
#n,m,k = gets.split.map(&:to_i)

n = 4
m = 10
k = 3
=begin
#2行目の入力処理
ary = gets.split.map(&:to_f)#to_fでフロート化
aryn =ary.slice(0,n)
p ary
p aryn
=end
=begin
#3行目の入力処理
arym = []
m.times do |i|
  arym[i] = gets.split.map(&:to_i)
end

p arym
=end
aryn =[1.5, 1.2, 2.0, 0.4]
arym =[[208, 200, 3, 99988], [255, 150, 50, 65472], [103, 748, 39, 48571], [159, 403, 32, 89928], [254, 300, 67, 78492], [249, 298, 47, 45637], [253, 382, 89, 37282],
  [250, 350, 78, 76782], [251, 371, 69, 67821], [256, 312, 89, 54382]]
#arym =[[208, 200, 3, 99988], [255, 150, 50, 65472]]
#s = (aryn[0]*arym[0][0] + aryn[1]*arym[0][1] + aryn[2]*arym[0][2] + aryn[3]+arym[0][3])
#s = (aryn[0]*arym[1][0] + aryn[1]*arym[1][1] + aryn[2]*arym[1][2] + aryn[3]+arym[1][3])
ary = []

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
