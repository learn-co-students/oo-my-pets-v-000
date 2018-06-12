class Owner
  
Owners = []

attr_accessor :name, :pets 
attr_reader :species 

def initialize(species)
  @species = species
  @pets = @pets = {:fishes => [], :cats => [], :dogs => []}
  Owners << self 
end 

def self.all 
  Owners
end 

def self.count 
  Owners.size 
end 

 def self.reset_all 
   Owners.clear 
end 
  
def say_species 
   "I am a #{species}."
end 
  

end