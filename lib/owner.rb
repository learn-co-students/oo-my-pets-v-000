class Owner
  attr_accessor :pets, :name
  attr_reader :species

  OWNERS = []

  def initialize (species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    OWNERS << self
  end

  def self.all
    OWNERS
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.count
    OWNERS.size
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
    pets[:dogs].each do
      |dog| dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do
      |cat| cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do
      |fish| fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, pet|
      pet.each do |pet|
        pet.mood = "nervous"
      end
      pet.clear #because I selled it, so I don't have it anymore
    end
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."

  end


end
