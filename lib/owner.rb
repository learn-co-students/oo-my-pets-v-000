require 'pry'
class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all_owners = []

  def initialize(specie = "human") #can initialize an owner
    @@all_owners << self
    @species = specie
    # @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all #keeps track of the owners been created
    @@all_owners
  end

  def self.count
    self.all.count
  end

  def self.reset_all  #count how many owners have been created & can reset the owners been created
    self.count
    self.all.clear
  end

  def say_species
    return "I am a human."
  end

  def pets
    @pets
  end

  def buy_fish(name_of_fish) #can buy a fish that is an instance of the Fish class and know about its fishes
    fish = Fish.new(name_of_fish)
    @pets[:fishes] << fish
  end

  def buy_cat(name_of_cat) #can buy a cat that is an instance of the Cat class and know about its cats
    cat = Cat.new(name_of_cat)
    @pets[:cats] << cat
  end

  def buy_dog(name_of_dog) #can buy a dog that is an instance of the Dog class and know about its dogs
    dog = Dog.new(name_of_dog)
    @pets[:dogs] << dog
  end

  def walk_dogs #makes the dogs' moods happy
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats #makes the cats moods happy
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish #makes the fishes' moods happy
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets #sell all its pets, which make them nervous
    @pets.each do |species, pet|
      pet.each do |each_pet|
        each_pet.mood = "nervous"
      end 
    end
    @pets.clear
  end

  def list_pets #list off pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
