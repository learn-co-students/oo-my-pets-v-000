require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
     "I am a #{@species}."
  end

  def buy_fish(petFish)
    @pets.map do |key, index|
      if key == :fishes
    @pets[key] << Fish.new(petFish)
      end
    end
  end

  def buy_cat(petCat)
    @pets.map do |key, index|
      if key == :cats
    @pets[key] << Cat.new(petCat)
      end
    end
  end

  def buy_dog(petDog)
    @pets.map do |key, index|
      if key == :dogs
    @pets[key] << Dog.new(petDog)
      end
    end
  end

  def walk_dogs
  #binding.pry
    @pets[:dogs][-1].mood = "happy"
  end

  def play_with_cats
  #binding.pry
    @pets[:cats][-1].mood = "happy"
  end

  def feed_fish
  #binding.pry
    @pets[:fishes][-1].mood = "happy"
  end

  def sell_pets
    @pets.each do |type, pet|
      pet.each {|x| x.mood = "nervous"}
      pet.clear
    end
  end

  def list_pets
    number_of_fish = @pets[:fishes].length
    number_of_dogs = @pets[:dogs].length
    number_of_cats = @pets[:cats].length

    "I have #{number_of_fish} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end

end
