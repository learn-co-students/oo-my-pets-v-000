require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name,species = "human")
    @name = name
    @@all << self
    @species = species
    @pets = {fishes:[],dogs:[],cats:[]}
  end

  # CLASS METHODS #

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  # INSTANCE METHODS #

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    if @pets[:fishes] == []
      @pets[:fishes] = [fish]
    else
      @pets[:fishes] << fish
    end
  end

  def buy_cat(name)
    cat = Cat.new(name)
    if @pets[:cats] == []
      @pets[:cats] = [cat]
    else
      @pets[:cats] << cat
    end
  end

  def buy_dog(name)
    dog = Dog.new(name)
    if @pets[:dogs] == []
      @pets[:dogs] = [dog]
    else
      @pets[:dogs] << dog
    end
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
    @pets.each do |pet_type,pets|
      pets.each do |pet| pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end


end
