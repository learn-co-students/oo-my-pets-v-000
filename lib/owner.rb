require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(pets)
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    #binding.pry
    pets[:dogs].each do|dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do|cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do|fish|
      fish.mood = "happy"
    end
  end


    def greeting(name, options = {})
      if options.empty?
        puts "Hi, my name is #{name}"
      else
        puts "Hi, my name is #{name} and I'm #{options[:age]}" +
             " years old and I live in #{options[:city]}."
      end
    end

    def sell_pets
      pets.each do|type, pet_array|
        pet_array.each do|pet|
          pet.mood = "nervous"
        end
        pet_array.clear
      end
    end

    def list_pets
      "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
    end
end
