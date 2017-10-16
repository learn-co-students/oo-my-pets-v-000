class Owner
  attr_accessor  :name, :pets
  attr_reader :species

@@all = []

def initialize(name)
  @name = name #can initialize an owner, can have a name
  @species = "human"  #initializes with a species
  @pets = {fishes: [], cats: [], dogs: []} #is initialized with a pets attribute as a hash with 3 keys
  @@all << self
end

def self.all #keeps track of the owners that have been created
  @@all
end

def self.count #can count how many owners have been created
  @@all.count
end

def self.reset_all #can reset the owners that have been created
  @@all.clear
end

def say_species #can say its species
  @speicies = "Human"
  "I am a #{self.species}."
end

def buy_fish(fish_name)
  @pets[:fishes] << Fish.new(fish_name)
end

def buy_cat(cat_name)
  @pets[:cats] << Cat.new(cat_name)
end

def buy_dog(dog_name)
  @pets[:dogs] << Dog.new(dog_name)
end

def walk_dogs
  @pets[:dogs].each {|dog| dog.mood = "happy"}
end

def play_with_cats
  @pets[:cats].each {|cat| cat.mood = "happy"}
end

def feed_fish
  @pets[:fishes].each {|fish| fish.mood = "happy"}
end

def sell_pets
  @pets.each do |type, name|
  name.each do |pet| pet.mood = "nervous"
end
  @pets[type].clear
end
end

def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end

end
