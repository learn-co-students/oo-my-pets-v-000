require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  @@fish = []

  @@count = 0

  def initialize(pets)
    @pets = {fishes: [ ], cats: [ ], dogs: [ ]}
    @species = "human"
    @@count += 1
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a human."
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
    @pets[:dogs].collect {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.collect do |type, pets|
      pets.collect do |pet|
        pet.mood = "nervous"
      end
      @pets[type] = []
    end
  end

  def list_pets
    @pets.collect do |type, pets|
      if type == :fishes
        @fish_number = pets.length
      elsif type == :cats
        @cat_number = pets.length
      else
        @dog_number = pets.length
      end
    end
    "I have #{@fish_number} fish, #{@dog_number} dog(s), and #{@cat_number} cat(s)."
  end



end
