require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  @@count = 0

  #class methods
  def initialize(species)
    @species = species
    self.class.all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  #instance methods
  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|dog| dog.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|dog| dog.mood = "happy"}
  end

  def sell_pets
    pets_final_mood = []
    pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
        pets_final_mood << pet
      end
      pets.clear
    end
    pets_final_mood
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
