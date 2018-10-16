require 'pry'

class Owner
  
  attr_accessor :name,:pets #pets is initialized with a pets attribute as a hash with 3 keys 
  attr_reader :species 
  
  OWNERS = []
  
  
  def initialize(species)
     @species = species 
     OWNERS << self 
     @pets = {:fishes => [], :dogs => [], :cats => []}  #pets is initialized with a pets attribute as a hash with 3 keys 
  end 
  
    def self.all      #keeps track of the owners that have been created
       OWNERS 
    end
  
    def self.count      #can count how many owners have been created
       OWNERS.size 
    end 
   
   def self.reset_all    #can reset the owners that have been created
      OWNERS.clear 
   end 
   
    def  say_species 
     "I am a #{species}."
   end 
  

 
   

  
end


 