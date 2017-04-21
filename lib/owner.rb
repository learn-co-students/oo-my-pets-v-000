class Owner

  attr_accessor :name, :pets

  attr_reader :species
#keeps track of the owners that have been created
  OWNERS = []

  def self.all
    OWNERS
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.count
    OWNERS.size
  end

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {fishes:[], dogs:[], cats:[]}
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
  #can buy a fish that is an instance of the Fish class
    name = Fish.new(name)
  #knows about its fishes
    pets[:fishes] << name
  end

  def buy_cat(name)
  #can buy a fish that is an instance of the Fish class
    name = Cat.new(name)
  #knows about its fishes
    pets[:cats] << name
  end

  def buy_dog(name)
  #can buy a fish that is an instance of the Fish class
    name = Dog.new(name)
  #knows about its fishes
    pets[:dogs] << name
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

#can sell all its pets, which make them nervous
  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end

end
