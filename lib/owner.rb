require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader 
  attr_writer 
  
  @@owner = []
  
  def initialize(name)
    @name = name
    @pets = {"fishes" => [], "cats" => [], "dogs" => []}
    @@owner << self
  end
  
  def self.all 
    @@owner
  end
  
  def self.reset_all
    @@owner = []
  end
  
  def self.count
    @@owner.count
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets["fishes"] << fish
  end
  
end