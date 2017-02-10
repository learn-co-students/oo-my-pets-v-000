class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []
  @@owner_count = 0

  def initialize(species)
    @species = species
    @@all << self
    @@owner_count += 1
    @pets = {:fishes =>[], :dogs =>[], :cats=>[]}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@owner_count = 0
  end

  def self.count
    @@owner_count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood="happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood="happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood="happy"}
  end

  def sell_pets
    pets.each {|species, names| names.each {|pet| pet.mood = "nervous"}}
    @pets = {:fishes =>[], :dogs =>[], :cats=>[]}
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
