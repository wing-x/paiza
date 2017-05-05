a=gets.split.join('/')[1..-1].split('/')
st=[]
a.each{|e|
    if e=='.'
    elsif e=='..'
        st.pop
    else
        st<<e
    end
}
puts '/'+st*'/'
p a
p st
=begin
パスの参考例
/root/paiza /..               # /root
/root/paiza /../..            # /
/root/paiza /../../home       # /home
/root/paiza /../../home/paiza # /home/paiza

/..で一つ上のフォルダを刺す
そして具体的なフォルダ名が出た時が注意！
あくまでも左側の入力はカレントディレクトリ（現在いるフォルダ）
/root/paiza /../../home       # /home
これが嵌まりポイント、よく分からなかったがやっと理解できた
問題文にあるように
>また、ファイル階層の頂点である / ディレクトリの親ディレクトリは / 自身を指します。
>このため、入力例2 では / の親ディレクトリである / を指します。
/もディレクトリの一種である事に注意しなきゃいけない
つまりroot/paizaよりも一つ上のディレクトリからのパスを書くので
/homeになる！
オッケー！

これで問題のあれを見ていこう
/root/paiza io/../../paiza/io/../../../../home/paiza #/home/paiza
ややこしいけど、結局親ディレクトリまで戻ってるって事だから
結局絶対パスは親ディレクトリからの/home/paizaになるってことね
おk

じゃあ答えの動き見ていくか
ifで場合分けして、動きをやってる感じだな
まず入力を配列aに突っ込む
[1..-1]は二番目から最後までという意味（path_test参照）
これで配列を作る
次に場合分け
.はなんもしない
..が着たらary.popする
これはこういう動き
animals = ["dog", "cat", "mouse"]
animals.push("pig")
p animals
["dog", "cat", "mouse", "pig"]
p animals.pop
"pig"
p animals
["dog", "cat", "mouse"]
つまり末尾を要素を消してくれる
これで無駄にややこしくされてても..で消し飛ばしてくれるというわけでだ
後は残った奴をst配列に格納して最後に表示というわけだ
なるほどねー
理解理解

この問題はまた忘れた頃に再挑戦しよう
今度こそ自力で解いてやる
=end
