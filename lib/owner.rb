class Owner
OWNERS = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @species = "human"
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    OWNERS
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.count
    OWNERS.count
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end

  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end

  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
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
    pets.each do |pet_type, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  # code goes here
end
