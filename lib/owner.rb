require 'pry'

class Owner
  
  attr_accessor :name 
  
  @@all= []
  @@count = 0 
  
  def initialize(name)
  @name = name     
  @@all << self 
  @@count += 1 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.reset_all 
    @@count 
    #binding.pry 
  end 
  

  
end