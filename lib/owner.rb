require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def species
    @species
  end

  def say_species
    return "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
    #binding.pry
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
    #binding.pry
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
    #binding.pry
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets

    @pets.each do |pet_type, pet_array|
      pet_array.collect {|pet| pet.mood = "nervous"}
    end
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }

  end

  def list_pets

    fish_number = 0
    dog_number = 0
    cat_number = 0

    @pets.each do |pet_type, pet_array|
      case pet_type
      when :fishes
        pet_number = pet_array.count
        fish_number = fish_number + pet_number
      when :dogs
        pet_number = pet_array.count
        dog_number = dog_number + pet_number
      when :cats
        pet_number = pet_array.count
        cat_number = cat_number + pet_number
      end
    end

    return "I have #{fish_number} fish, #{dog_number} dog(s), and #{cat_number} cat(s)."

  end

end
