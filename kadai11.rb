class Bingo             
  attr_accessor :B
  attr_accessor :I
  attr_accessor :N 
  attr_accessor :G
  attr_accessor :O
  
  def initialize
    self.B = self.ar(start:1,ed:15)
    self.I = self.ar(start:16,ed:30)
    self.N = self.ar(start:31,ed:45)
    self.G = self.ar(start:46,ed:60)
    self.O = self.ar(start:61,ed:75)
  end      
  def ar(start:,ed:)
   return (start..ed).to_a.sample(5)
  end                     
end
bingo = Bingo.new
puts "B | I | N | G | O "
bingo.N[2]="  "
(0..4).each do |i|
  if (bingo.B[i]<10) 
    bingo.B[i]=" #{bingo.B[i]}"
  end
 puts "#{bingo.B[i]}| #{bingo.I[i]}| #{bingo.N[i]}| #{bingo.G[i]}| #{bingo.O[i]}" 
 i+=1
end