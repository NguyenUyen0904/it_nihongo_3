class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name:, price:)
    self.name=name 
    self.price=price
  end
  def get_infor
    return "#{self.name} #{self.price}vnd"
  end
end

menu1 = Menu.new(name:"Pho",price:30000)
menu2 = Menu.new(name:"Bun",price:20000)
menu3 = Menu.new(name:"Cafe",price:10000)
menus=[menu1,menu2,menu3]
menus.each do |menu|
  puts menu.get_infor
end