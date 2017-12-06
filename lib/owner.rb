class Owner
  attr_accessor :name, :pets, :mood
  attr_reader :species

  @@all = []

  def initialize(species)
      @pets = {fishes: [], cats: [], dogs: []}
      @species = species
      @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{species}."
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
     @pets[:dogs].each do |dog|
       dog.mood = "happy"
     end
     @pets[:dogs]
   end

   def play_with_cats
     @pets[:cats].each do |cat|
       cat.mood = "happy"
     end
     @pets[:cats]
   end

   def feed_fish
     @pets[:fishes].each do |fish|
       fish.mood = "happy"
     end
     @pets[:fishes]
   end

   def sell_pets
     @pets.each do |animal, array|
       array.each do |current_state|
         current_state.mood = "nervous"
       end
       @pets = []
     end
   end

   def list_pets
     "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
   end

 end
