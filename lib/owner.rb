class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def self.all
    @@all
  end
  def self.reset_all
    self.all.clear
  end
  def self.count
    @@all.count
  end
  def initialize(name, species="human")
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end
  def say_species
    return "I am a #{self.species}."
  end
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  def sell_pets
    @pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
  end
  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end


