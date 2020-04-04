require 'pry'

class Ship

  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    save
  end



  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.clear
    binding.pry
    self.all.clear
  end

end
