class Owner
  # code goes here
  attr_accessor :cat, :dog, :fish, :name, :pets
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
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
    self.pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end

    self.pets[:cats].each do |cat|
      cat.mood = "nervous"
    end

    self.pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end

    self.pets.each {|type, pets| pets.clear}

  end

  def list_pets
    count_fish = self.pets[:fishes].count
    count_dogs = self.pets[:dogs].count
    count_cats = self.pets[:cats].count
    "I have #{count_fish} fish, #{count_dogs} dog(s), and #{count_cats} cat(s)."
  end
end
