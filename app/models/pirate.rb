class Pirate
  attr_accessor :name, :weight, :height
  
  def initialize(arg)
    @name = arg[:name]
    @weight = arg[:weight]
    @height = arg[:height]
    @@all << self
  end
  
  @@all = []
  
  def self.all 
    @@all
  end
  
end