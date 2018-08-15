class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@owners = []
  # code goes here

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def name
    @name
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.size
  end

  def self.reset_all
    @@owners.clear
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
    pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, pet_types|
      pet_types.each do |pet|
        pet.mood = "nervous"
      end
      pet_types.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end
