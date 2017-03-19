class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []


  def initialize(name)
    @species = "human"
    @name = name
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
    self.pets
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
    self.pets
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
    self.pets
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
    self.pets.each do |pet, species|
      species.map do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end


  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
