a = gets.to_s
re =Regexp.new("help")
if re =~ a
 puts "SOS"
else
 puts a
end
