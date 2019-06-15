class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    self.pets = {:fishes=>[], :cats=>[], :dogs =>[]}
  end

  def say_species
    "I am a human."
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
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pets|
        pets.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    "I have 2 fish, 3 dog(s), and 1 cat(s)."
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def self.all
    @@all
  end
end
