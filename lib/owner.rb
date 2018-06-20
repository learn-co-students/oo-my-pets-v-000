require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species) # initializes with a species
    @species = species
    @@all << self
    @pets = { :fishes => [], :dogs => [], :cats => [] }
  end

  def self.all # keeps track of the owners that have been created
    @@all
  end

  def self.reset_all # can reset the owners that have been created
    @@all.clear
  end

  def self.count # can count how many owners have been created
    @@all.size
  end

  def say_species # can say its species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name) # can buy a fish that is an instance of the Fish class
    pets[:fishes] << fish # knows about its fishes
  end

  def buy_cat(name)
    cat = Cat.new(name) # can buy a cat that is an instance of the Cat class
    pets[:cats] << cat # knows about its cats
  end

  def buy_dog(name)
    dog = Dog.new(name) # can buy a dog that is an instance of the Dog class
    pets[:dogs] << dog # knows about its dogs
  end

  def walk_dogs
    pets[:dogs].map {|dog| dog.mood = "happy"} # walks the dogs which makes the dogs' moods happy

  end

  def play_with_cats
    pets[:cats].map {|cat| cat.mood = "happy"} # plays with the cats which makes the cats moods happy
  end

  def feed_fish
    pets[:fishes].map {|fish| fish.mood = "happy"} # feeds the fishes which makes the fishes' moods happy
  end

  def sell_pets # can sell all its pets, which make them nervous
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)." # can list off its pets
  end

end
