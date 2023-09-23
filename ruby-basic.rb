# Debugging 出力
print "hello world\n"
puts "hello world"
p "hello world"

# 変数の使用
message = "hello world"
puts message

message = "hello world again"
puts message

# 定数の使用
VERSION = 1.1
puts VERSION

# データ型 数値とその演算
p 4.8.class
p 10 + 3
p 10 * 3
p 2.4 + 3
p 10 / 3
p 10.0 / 3
p Rational(2, 5) + Rational(3, 4)

# 数値メソッド
p 52.6.round
p 52.6.floor
p 52.6.ceil

# データ型 文字列
name = "world"
puts "hello #{name}"

# 配列の操作
colors = ["red", "blue", "yellow"]
colors[0] = "pink"
colors.push("gold")
p colors

# データ型 ハッシュ
scores = { taguchi: 200, fkoji: 400 }
scores[:fkoji] = 600
p scores[:fkoji]

# データ型 変換
x = 50
y = "3"
p x + y.to_i
p x.to_s + y

# 制御構造
score = 85
case score
when 81..100
  puts "great!"
when 61..80
  puts "good!"
else
  puts "so so ..."
end

signal = "red"
case signal
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
(15..20).each { |i| p i }

colors.each { |color| p color }

scores.each do |name, score|
  puts "#{name}: #{score}"
end

10.times do |i|
  break if i == 7
  p i
end

10.times do |i|
  next if i == 7
  p i
end

# メソッド定義
def say_hi(name = "tom")
  "hi #{name}"
end

p say_hi("taguchi")

# クラス定義
class User
  @@count = 0
  VERSION = 1.1
  attr_accessor :name

  def initialize(name)
    @@count += 1
    @name = name
  end

  def say_hi
    puts "hi #{@name}"
  end

  def self.info
    puts "User Class, #{@@count} instances."
  end
end

tom = User.new("tom")
tom.name = "tom Jr."
tom.say_hi

bob = User.new("bob")
sam = User.new("sam")

User.info
p User::VERSION

# サブクラス定義
class AdminUser < User
  def say_hello
    puts "Hello from #{@name}"
  end

  def say_hi
    puts "Hello from admin"
  end
end

admin_tom = AdminUser.new("tom")
admin_tom.say_hi
admin_tom.say_hello

# アクセス制限
class AccessUser
  def say_hi
    puts "hi"
    say_private
  end

  private

  def say_private
    puts "private"
  end
end

access_user = AccessUser.new
access_user.say_hi

# モジュール定義
module Movie
  VERSION = 1.1

  def self.encode
    puts "encoding..."
  end

  def self.export
    puts "exporting..."
  end
end

Movie.encode
Movie.export

p Movie::VERSION

# モジュールのインクルード
module Debug
  def info
    puts "#{self.class} debug info"
  end
end

class Player
  include Debug
end

class Monster
  include Debug
end

Player.new.info
Monster.new.info

# エラーハンドリング
class MyError < StandardError; end

x = gets.to_i

begin
  raise MyError if x == 3
  p 100 / x
rescue MyError
  puts "not 3!"
rescue => exception
  p exception.message
  p exception.class
  puts "stopped"
ensure
  puts "-- END --"
end
