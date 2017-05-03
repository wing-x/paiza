def is_num
  loop do
    print ">> "
    i = $stdin.gets.chomp
    return i if i =~ /^\d+$/
    puts "数字で入力してください"
  end
end

puts is_num + "が入力されました"
