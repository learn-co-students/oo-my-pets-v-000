require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}

    @@all << self
  end

# ****** OWNER BASED METHODS *******

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

 #********* PETS BASED METHODS **********

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    #binding.pry
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    #binding.pry
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    #binding.pry
    @pets[:dogs] << dog
  end

  def walk_dogs
    #binding.pry
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    #binding.pry
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    #binding.pry
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    #binding.pry
    @pets.each do |animal, pets|
      @pets[animal].each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    fish_count = @pets[:fishes].count
    cat_count = @pets[:cats].count
    dog_count = @pets[:dogs].count

    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
