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
  
  

end