class Owner

attr_accessor :pets, :name, :mood
@@all = []
@@count = 0
def initialize(name)
  @pets = {fishes: [], cats: [], dogs: []}
  @name = name
  @@all << self
  @@count+=1
end

def self.all
  @@all
end

def self.count
  @@count
end

def self.reset_all
  @@all.clear
  @@count = 0
end

def species
  @name
end

def say_species
  "I am a #{name}."
end

def buy_fish(name)
  fish = Fish.new(name)
  @pets[:fishes] << fish
end

def buy_cat(name)
  cat = Cat.new(name)
  @pets[:cats] << cat
end

def buy_dog(name)
  dog = Dog.new(name)
  @pets[:dogs] << dog
end

def walk_dogs
  self.pets[:dogs].each {|dog| dog.mood = "happy"}
end

def play_with_cats
  self.pets[:cats].each {|cat| cat.mood = "happy"}
end

def feed_fish
  self.pets[:fishes].each {|fish| fish.mood = "happy"}
end

def sell_pets
  self.pets.each do |type, array|
    array.each do |pet|
      pet.mood = "nervous"      
    end
   end 
  @pets.clear
end

def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end
end






