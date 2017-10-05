require "pry"
class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @name = name

    @@all << self
    @@count += 1
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end



  def self.all
    @@all


  end
  @@count = 0
  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
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
    array = Array.new
    array.size # 0

    pets[:dogs].each do |dog|
      #dog.mood=("happy")
      dog.mood = "happy" #syntactic sugar


    end
  end
  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"

    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"

    end
  end

  def sell_pets
    pets.each do |type, these|
      these.each do |pet|
        pet.mood = "nervous"
      end
      #  these = []
      these.clear
    end
  end

  def list_pets
"I have 2 fish, 3 dog(s), and 1 cat(s)."

  end

end
