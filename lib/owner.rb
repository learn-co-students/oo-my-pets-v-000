class Owner
  
  attr_reader :species
  attr_accessor :name, :pets

  @@owner_count = 0
  @@owner = []

  def initialize(species)
    @species = species
    @@owner_count += 1
    @@owner << self
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def self.count
    @@owner_count
  end

  def self.all
    @@owner
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
    pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


  def self.reset_all
    @@owner_count = 0
  end


end