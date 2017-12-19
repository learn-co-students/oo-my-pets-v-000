class Owner
  # code goes here
  OWNERS = [] #create an empty array for owners

  attr_accessor :name, :pets
  attr_reader :species

  def self.reset_all #class method can reset the owners that have been created
    OWNERS.clear
  end

  def self.all #keeps track of the owners that have been created
    OWNERS
  end

  def self.count #can count owners that have been created
     OWNERS.size
   end

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
   OWNERS << self # can initialize an owner
    @species = species
end


# Associate that new pet instance to the owner
#by adding it to the appropriate array-value of
#the @pets hash stored in the pets attr_accessor.
def buy_fish(name)
  pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
  pets[:cats] << Cat.new(name)
end

def buy_dog(name)
  pets[:dogs] << Dog.new(name)
end

def walk_dogs
  pets[:dogs].each do |dog| #walk dogs
    dog.mood = "happy" #this makes dog happy
  end
end

def play_with_cats
  pets[:cats].each do |cat| #play with cat
    cat.mood = "happy" #this makes cat happy
  end
end

def feed_fish
  pets[:fishes].each do |fish| #feed fish
    fish.mood = "happy" #this makes fish happy
  end
end

def sell_pets
  pets.each do |species, animals| #can sell all pets
    animals.each do |animal|
      animal.mood = "nervous" #which makes pets nervous
    end
    animals.clear
  end
end

  def say_species
   "I am a #{species}."
  end

def list_pets
 "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end

end #ends the class
