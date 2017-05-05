input_lines = gets.split(' ')
cur_arr = input_lines[0].split('/')
path_arr = input_lines[1].split('/')
for path in path_arr
    if path == '..'
        cur_arr.pop
    elsif path == '.'
        #何もしない
    else
        cur_arr.push(path)
    end
end
cur_arr.delete('') #'//'を防ぐ
puts '/' + cur_arr.join('/')

#別の回答
#入力処理がちょっと違うだけでやってることはans1と一緒
