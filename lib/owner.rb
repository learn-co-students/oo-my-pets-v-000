class Owner
  
  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@owners.count
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood ="happy"}
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood ="happy"}
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood ="happy"}
  end

  def sell_pets
    @pets.each do |type, pets| 
      pets.each {|pet| pet.mood ="nervous"}
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end