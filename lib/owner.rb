class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  @@count = 0

  def initialize(species)
    @species = species

    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@count += 1
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def buy_fish(name)
    fish = Fish.new(name)
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
    pets[:dogs].each {|name| name.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|name| name.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|name| name.mood = "happy"}
  end

  def sell_pets
    pets.each {|species, animal|
      animal.each{|name|
        name.mood = "nervous"}}
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
