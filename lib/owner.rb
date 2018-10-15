require 'pry'

class Owner
  
  attr_accessor :name
  attr_reader :species 
  
  @@all= []
  @@count = 0 
  
  def initialize(name, species="human")
  @name = name   
  @species = species 
  @@all << self 
  
  end 
  
  def self.all 
    @@all
  end
  
    def self.count
   @@count += 1 
 
   end 
   
   def self.reset_all 
   @@count 
   end 
   
  
 
   

  
end