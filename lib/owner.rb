class Owner
  # code goes here
  attr_accessor :name, :pets, :dogs, :cats, :fishes
  attr_reader :species

  @@owners = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.length
  end

  def self.reset_all
    @@owners = []
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    #Make a new instance of the appropriate pet, initializing it with that name.
    fish = Fish.new(name)
    #Associate that new pet instance to the owner by adding it to the appropriate array-value of the @pets hash stored in the pets attr_accessor.
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    #dog = self.pets[:dogs][0]
    #dog.mood = "happy"
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |pet, pet_info|
      pet_info.each {|pet_mood| pet_mood.mood = "nervous"}
      pet_info.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
