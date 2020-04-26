class Ship
  attr_accessor :name, :type, :booty
  
  def initialize(arg)
    @name = arg[:name]
    @type = arg[:type]
    @booty = arg[:booty]
    @@ships << self
  end
  
  @@ships = []
  
  def self.all 
    @@ships
  end
  
  def self.clear
    @@ships.clear
  end
end