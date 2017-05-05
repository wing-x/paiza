l,m,n =gets.split(" ").map(&:to_i)#gets.split.map(&:to_i)でも良いが、空白区切りと明白にしておく
rei ="A"
hai ="B"

la = rei * l
mb = hai * m
na = rei * n
ans =[la,mb,na]
puts ans.join
