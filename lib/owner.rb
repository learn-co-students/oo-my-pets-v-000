class Owner
  attr_accessor :pets, :name #owner has pets and name
  attr_reader :species

  @@all = []
  @@owner = [0]

  def initialize(name, species="human")
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
    @@owner << self
  end

  def say_species
     "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@owner.length
  end

  def self.reset_all
    @@owner.clear
  end

  def buy_dog(name)
    dog = Dog.new(name) #calls upon dog instance
    @pets[:dogs] << dog # buys new dog adds dog to dog hash
  end

  def walk_dogs
    @pets[:dogs].each do |dogs|
      dogs.mood = "happy"
   end
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat # buys new cat adds cat to cat hash
  end

  def play_with_cats
    @pets[:cats].each do |cats|
      cats.mood = "happy"
   end
  end

  def buy_fish(name)
     fish = Fish.new(name) #buy a fish that is an instance of the fish class
     @pets[:fishes] << fish #adds new fish to @pets hash
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
  end
end

  def sell_pets
    @pets.each do |pets, array|
    @pets[pets].each do |pet|
      pet.mood ="nervous"
    end
   @pets[pets].clear
  end
end

def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
 end
end
