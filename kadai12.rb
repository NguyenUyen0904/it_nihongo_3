class Taikhoan
  attr_accessor :tk
  attr_accessor :mk
  attr_accessor :tien
  def initialize(tk:, mk:, tien:)
    self.tk = tk
    self.mk = mk
    self.tien = tien
  end
end
class Ngonngu 
  attr_accessor :a1
  attr_accessor :a2
  attr_accessor :a3
  attr_accessor :a4
  attr_accessor :a5
  attr_accessor :a6
  attr_accessor :a7
  attr_accessor :a8
  attr_accessor :a9
end  
class Tiengnhat < Ngonngu
  def initialize
    self.a1 = "日本語を選択しました。"
    self.a2 = 'アカウントとパスワードを入力してください'
    self.a3 = 'アカウント> '
    self.a4 = '暗証番号>'
    self.a5 = '引き出したい金額を入力してください >'
    self.a6 = "引き出したい金額が上限を超えています"
    self.a7 = "アカウントとパスワードの入力が間違いました"
  end
end
class Tienganh < Ngonngu
  def initialize
    self.a1 = "you chose english"
    self.a2 = 'Please enter your account and password'
    self.a3 = 'account> '
    self.a4 = 'password>'
    self.a5 = 'Please enter the amount you want to withdraw >'
    self.a6 = "The amount you want to withdraw exceeds the upper limit"
    self.a7 = "I made a mistake entering my account and password"
  end
end
class Tiengviet < Ngonngu
  def initialize
    self.a1 = "bạn đã chọn tiếng viêt。"
    self.a2 = 'hãy nhập tài khoản và mật khẩu'
    self.a3 = 'tài khoản> '
    self.a4 = 'mật khẩu>'
    self.a5 = 'Vui lòng nhập số tiền bạn muốn rút>'
    self.a6 = "Số tiền bạn muốn rút vượt quá giới hạn trên"
    self.a7 = "Nhập sai tài khoản và mật khẩu"
  end
end
def kiemtratk(tk:, mk:, tks:)
  index=0
  tks.each do |i|
    if (i.tk == tk && i.mk==mk)
      return index
    end
    index=index+1  
  end
  return -1
end
tk1 = Taikhoan.new(tk: "phuong", mk: 123, tien: 10_000)
tk2 = Taikhoan.new(tk: "an", mk: 123, tien: 20_000)
tk3 = Taikhoan.new(tk: "hoa", mk: 123, tien: 30_000)
tks = [tk1, tk2, tk3]

puts '言語を選んでください'
puts '英語の場合は1を選んでください'
puts '日本語の場合は2を選んでください'
puts 'ベトナム語の場合は3を選んでください'
i = gets.to_i
if i==1
  nn=Tienganh.new
elsif i==2
  nn=Tiengnhat.new
elsif i==3 
  nn=Tiengviet.new
else 
  puts "番号が間違っています"
  puts "-------------終了-------------"
  return 0
end
puts "#{nn.a1}"
  puts "#{nn.a2}"
  print "#{nn.a3}"
  tk = gets.chomp
  print "#{nn.a4}"
  mk = gets.to_i
  # return ar=[tk,mk]
kt = kiemtratk(tk: tk, mk: mk, tks: tks)

if kt !=-1
  print "#{nn.a5}"
  tienrut = gets.to_i
  if (tks[kt].tien<tienrut)
    puts "#{nn.a6}"
  else 
    tks[kt].tien=tks[kt].tien-tienrut
    puts "引き出し金額は#{tienrut}です"
    puts "残りの金額は#{tks[kt].tien}です"
  end  
else 
  puts "#{nn.a7}"
end
puts "-------------終了-------------"


