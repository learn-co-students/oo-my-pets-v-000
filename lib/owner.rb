class Owner
  @@all = []

  attr_accessor :name, :pets



  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def fishes_quantity
    self.fishes.length
  end

  def cats_quantity
    self.cats.length
  end

  def dogs_quantity
    self.dogs.length
  end

  def fishes
    self.pets[:fishes]
  end

  def cats
    self.pets[:cats]
  end

  def dogs
    self.pets[:dogs]
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def species
    @species
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
    self.dogs.each do |dog_obj|
      dog_obj.mood = "happy"
    end
  end

  def play_with_cats
    self.cats.each do |cat_obj|
      cat_obj.mood = "happy"
    end
  end

  def feed_fish
    self.fishes.each do |fish_obj|
      fish_obj.mood = "happy"
    end
  end

  def sell_pets

    self.fishes.each {|fish_obj| fish_obj.sell}
    self.fishes.clear

    self.cats.each {|cat_obj| cat_obj.sell}
    self.cats.clear

    self.dogs.each {|dog_obj| dog_obj.sell}
    self.dogs.clear

  end

  def list_pets
    "I have #{self.fishes_quantity} fish, #{self.dogs_quantity} dog(s), and #{self.cats_quantity} cat(s)."
  end
end
