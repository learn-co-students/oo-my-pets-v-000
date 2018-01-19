class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all =[]
  @@count = 0

  def initialize(species)
    @species = species
    @@all << self
    @@count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << name
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.count=(num)
    @@count = num
  end

  def self.reset_all
    self.count = 0
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

end
