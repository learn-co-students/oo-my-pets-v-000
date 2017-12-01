class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@owners = []

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {fishes: [], cats: [], dogs: []}

  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners = []
  end

  def name=(name)
    @name = name
  end

  def say_species
   "I am a #{@species}."
 end

 def buy_fish name
   self.pets[:fishes] << Fish.new(name)
 end

 def buy_cat name
   self.pets[:cats] << Cat.new(name)
 end

 def buy_dog name
   self.pets[:dogs] << Dog.new(name)
 end

 def walk_dogs
   self.pets[:dogs].each do |dog|
     dog.mood = "happy"
   end
 end

def play_with_cats
 self.pets[:cats].each do |cat|
   cat.mood = "happy"
 end
end

def feed_fish
 self.pets[:fishes].each do |fish|
   fish.mood = "happy"
 end
end

def sell_pets
 self.pets[:fishes].each do |fish|
   fish.mood = "nervous"
 end
 self.pets[:cats].each do |cat|
   cat.mood = "nervous"
 end
 self.pets[:dogs].each do |dog|
   dog.mood = "nervous"
 end
 @pets = {fishes: [], cats: [], dogs: []}
end

def list_pets
 "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end


end
