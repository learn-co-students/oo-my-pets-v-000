class Owner
 # code goes here

 attr_accessor :pets, :name
 attr_reader :species

 @@all = []
 @@count = 0
 

 def initialize(name) 
   @name = name
   @pets = {fishes: [], cats: [], dogs: []}
   @species = "human"
   @@all << self
   @@count += 1
 end

 def self.all 
   @@all
 end

 def self.reset_all
   @@count = 0
   @@all = []
 end

 def self.count
   @@count
 end

 def say_species
   "I am a #{@species}."
 end

 def buy_fish(name)
   @pets[:fishes] << Fish.new(name)
 end

 def buy_cat(name)
   @pets[:cats] << Cat.new(name)
 end

 def buy_dog(name)
   @pets[:dogs] << Dog.new(name)
 end

 def walk_dogs
   @pets[:dogs].map { |dog|
     dog.mood = "happy" }
  end

 def play_with_cats 
   @pets[:cats].map { |cat|
     cat.mood = "happy" }
  end

 def feed_fish
   @pets[:fishes].map { |fish|
     fish.mood = "happy" }
  end

 def sell_pets
   @pets[:fishes].map { |fish| fish.mood = "nervous" }
   @pets[:fishes] = []
   @pets[:dogs].map { |fish| fish.mood = "nervous" }
   @pets[:dogs] = []
   @pets[:cats].map { |fish| fish.mood = "nervous" }
   @pets[:cats] = []
 end

 def list_pets
   dog_count = @pets[:dogs].count
   cat_count = @pets[:cats].count
   fish_count = @pets[:fishes].count
   "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
   
 end

 
 

 
end
