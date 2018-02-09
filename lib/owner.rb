require'pry'
class Owner
  # code goes here
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
    
  def self.all
    @@all 
  end 
  
  def self.count
    #binding.pry
    @@all.count
  end
  
  def self.reset_all
    
  end 
  
end