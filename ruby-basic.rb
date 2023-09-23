# Debugging 出力
print "hello world\n" # 'print' は文字列を出力しますが、改行は含まれません
puts "hello world" # 'puts' は文字列を出力し、その後に改行が追加されます
p "hello world" # 'p' はデバッグ用にオブジェクトを人間が読める形式で出力します

# 変数の使用
msg = "hello world" # 変数「msg」に文字列を代入
puts msg # 変数の内容を出力

msg = "hello world again" # 変数「msg」に新しい文字列を代入
puts msg # 更新された変数の内容を出力

# 定数の使用
VERSION = 1.1 # 定数「VERSION」を定義。定数名は大文字で始める必要があります
puts VERSION # 定数の値を出力

# データ型 数値とその演算
p 4.8.class # Float クラスを出力
p 10 + 3 # 加算
p 10 * 3 # 乗算
p 2.4 + 3 # FloatとIntegerの加算
p 10 / 3 # 除算（整数同士の除算は商が整数で返る）
p 10.0 / 3 # FloatとIntegerの除算（商が小数で返る）
p Rational(2, 5) + Rational(3, 4) # 有理数の加算

# 数値メソッド
p 52.6.round # 四捨五入
p 52.6.floor # 小さい方の整数に丸める
p 52.6.ceil # 大きい方の整数に丸める

# データ型 文字列
puts "hello world" # 文字列の出力
name = "taguchi"
puts "hello #{name}" # 変数を含んだ式展開

# 配列の操作
colors = ["red", "blue", "yellow"] # 配列の定義
p colors[0] # 配列から要素を取得
colors[0] = "pink" # 要素の書き換え
colors.push("gold") # 要素の追加
p colors # 配列の出力

# データ型 ハッシュ
scores = {taguchi: 200, fkoji: 400} # シンボルをキーにしたハッシュの定義
p scores[:taguchi] # キーを指定して値を取得
scores[:fkoji] = 600 # キーを指定して値を更新
p scores[:fkoji] # 更新された値の取得

# データ型 変換
x = 50
y = "3"
p x + y.to_i # 文字列を整数に変換して計算
p x.to_s + y # 数値を文字列に変換して連結

# 制御構造
score = 85
if score > 80
    puts "great!"
elsif score > 60
    puts "good!"
else
    puts "so so ..."
end

Signal = "red"
case Signal
when "red"
    puts "stop!"
when "green", "blue"
    puts "go!"
when "yellow"
    puts "caution!"
else
    puts "wrong signal"
end

# ループ
10.times do |i|
    puts "#{i}: hello"
end

# イテレーション
(15..20).each do |i|
    p i
end

colors = ["red", "blue"]
colors.each do |color|
    p color
end

scores = {taguchi: 200, fkoji: 400}
scores.each do |name, score|
    puts "#{name}: #{score}"
end
