#An owner will know about all its pets, be able to buy a pet, set the name of a pet
#(which the pet can't change, because that would be weird), change a pet's mood through
#walking, feeding, or playing with it, and sell all of its pets (for when it moves to that tiny NYC
#studio after college).




require "pry"

class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = [ ]

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self #expect Owner to include owner
    @species = "human"
    @name = name
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
    "I am a #{species}."
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
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each {|type, pets_array|
      pets_array.each {|o|
        o.mood = "nervous"
      }
    pets_array.clear
    }
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
