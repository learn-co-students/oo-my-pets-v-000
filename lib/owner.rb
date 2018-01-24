#   ~~~HAVICK WAS HERE~~~

class Owner

  
attr_accessor :pets, :count, :name
attr_reader :species
@@all = []
@count = 0

def initialize(name)
@name = name
@@all << self
@pets = {fishes: [], dogs: [], cats: []}

end

def self.all
@@all
end

def self.reset_all
self.all.clear

end

def self.count
self.all.length
end

def species(species = "human")
  @species = species
end

def say_species
 "I am a #{species}."
end

def pets
  @pets
end

def buy_fish(name)
  name = Fish.new(name)
  @pets[:fishes] << name
end

def buy_cat(name)
  name = Cat.new(name)
  @pets[:cats] << name
end

def buy_dog(name)
  name = Dog.new(name)
  @pets[:dogs] << name
end

def walk_dogs
  @pets[:dogs].each do |dog| dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat| cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish| fish.mood = "happy"
  end
end

def sell_pets
  @pets.each do |pets, animal| 
    animal.each do |jerks| jerks.mood = "nervous"
    end
end
@pets.clear
end

def list_pets
"I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end


end