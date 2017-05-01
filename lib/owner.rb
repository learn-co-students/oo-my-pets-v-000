class Owner
#---------------------------------------------------------------------------------------------
#variable declaration
attr_accessor :name, :pets
@@all = []


#---------------------------------------------------------------------------------------------
#class methods

def self.all
temp_all = @@all
temp_all
end


def self.reset_all
@@all = []
end

def self.count
@@all.count
end



#---------------------------------------------------------------------------------------------
#instance methods

def initialize (species)
@species = species
@species.freeze
@@all << self
@pets = {
        fishes: [],
        dogs: [],
        cats: []
        }
end

def species
temp_species = @species
temp_species
end

def new_pet(type,name)
type.new(name)
end

def say_species
"I am a #{@species}."  
end

def buy_fish(name)
obj_type = "Fish"
@pets[:fishes] << Kernel.const_get(obj_type).new(name)
end

def buy_dog(name)
obj_type = "Dog"
@pets[:dogs] << Kernel.const_get(obj_type).new(name)
end

def buy_cat(name)
obj_type = "Cat"
@pets[:cats] << Kernel.const_get(obj_type).new(name)
end

def walk_dogs
pet_key = :dogs
self.pets[pet_key].each{|pet| pet.mood = "happy"}
end


def play_with_cats
pet_key = :cats
self.pets[pet_key].each{|pet| pet.mood = "happy"}
end


def feed_fish
pet_key = :fishes
self.pets[pet_key].each{|pet| pet.mood = "happy"}
end


def sell_pets
#goes through and makes them all nervous, then removes them from owner
@pets.each{|type,pets|
                      pets.each{|indiv_pet| indiv_pet.mood = "nervous"}
          pets.clear
          
      }
end

def list_pets
pet_list = "I have "
pet_list += "#{pets[:fishes].count} fish, "
pet_list += "#{pets[:dogs].count} dog(s), "
pet_list += "and #{pets[:cats].count} cat(s)."

pet_list
end




end