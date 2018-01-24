class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def say_species
    "I am a #{species}."
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

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
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
  #  @pets[:dogs].each {|dog| dog.mood = "nervous"}
  #  @pets[:cats].each {|cat| cat.mood = "nervous"}
  #  @pets[:fishes].each {|fish| fish.mood = "nervous"}
#    @pets.each {|pet, pet_array| pet_array.clear }
    @pets.each do |pet, pet_array|
      pet_array.each {|p| p.mood = "nervous"}
      pet_array.clear
    end
  end
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    #("I have 2 fish, 3 dog(s), and 1 cat(s).")
  end
end
