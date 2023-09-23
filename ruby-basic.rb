# debug
print "helloworld" # 「print」は文字列を出力しますが、改行は含まれません
puts "helloworld" # 「puts」は文字列を出力し、その後に改行が追加されます
p "helloworld" # 「p」はデバッグ用にオブジェクトを人間が読める形式で出力します
pp "helloworld" # 「pp」は「p」と同様ですが、複雑なオブジェクトの出力が見やすくなります

# 変数
msg = "helloworld" # 変数「msg」に文字列を代入
puts msg # 変数の内容を出力

msg = "helloworld again" # 変数「msg」に新しい文字列を代入
puts msg # 更新された変数の内容を出力

# 定数
VERSION = 1.1 # 定数「VERSION」を定義。定数名は大文字で始める必要があります
puts VERSION # 定数の値を出力

# 定数の値は変更不可なので、以下のコードはエラーになります
# VERSION = 1.2
# puts VERSION

Version = 1.1 # 大文字で始まる変数も定数と見なされますが、実際には再代入可能です
puts Version

# Version = 1.2
# puts Version

# データ型 数値
p 4.8.class # 「4.8」のクラス（Float）を出力
p 4.8.methods # 「4.8」に使えるメソッドの一覧を出力

# 数値の演算
p 10 + 3 # 加算
p 10 * 3 # 乗算
p 2.4 + 3 # FloatとIntegerの加算
p 10 / 3 # 除算（整数同士の除算は商が整数で返る）
p 10 % 3 # 剰余
p 10.0 / 3 # FloatとIntegerの除算（商が小数で返る）
p Rational(2, 5) + Rational(3, 4) # 有理数の加算
p 2/5r + 3/4r # 有理数リテラルを使用した加算

# 数値メソッド
p 52.6.round # 四捨五入
p 52.6.floor # 小さい方の整数に丸める
p 52.6.ceil # 大きい方の整数に丸める

# データ型 文字列
puts "hello\\o world\\td" # エスケープシーケンスの使用例
puts 'hello\o world\td' # シングルクォートではエスケープシーケンスは認識されない

puts "price #{3000 * 4}" # 文字列内での式展開
puts 'price #{3000 * 4}' # シングルクォートでは式展開されない

name = "taguchi"
puts "hello #{name}" # 変数を含んだ式展開

puts "hello " + "world" # 文字列の連結
puts "hello " * 10 # 文字列の繰り返し

# 配列
colors = ["red", "blue", "yellow"] # 配列の定義

p colors[0] # 配列から要素を取得
p colors[-1] # 負のインデックスで後ろから要素を取得
p colors[0..2] # 範囲指定で複数の要素を取得
p colors[0...2] # 末尾のインデックスを除いて取得
p colors[5] # 存在しないインデックスはnilを返す

colors[0] = "pink" # 要素の書き換え
colors[1..2] = ["white", "black"] # 範囲を指定して要素を書き換え
colors.push("gold") # 要素の追加
colors << "silver" # 要素の追加（shovel演算子）
p colors # 配列の出力

p colors.size # 配列のサイズ
p colors.sort # 配列のソート

# データ型 ハッシュ
scores = {taguchi: 200, fkoji: 400}
