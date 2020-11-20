class Menu
  attr_accessor :name
  attr_accessor :price
  def get_total_price(count)
    total = count * self.price
    total -= 10_000 if count >= 3
    return "#{self.name} #{total}vnd"
  end
end

menu1 = Menu.new
menu1.name="Phở"
menu1.price=30000

puts menu1.get_total_price(5)
