require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species, :say_species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
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
    self.pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.map do |key, value| #value is array of individual pets
      value.each {|pet| pet.mood = "nervous"}
    end
    self.pets.clear
  end

  def list_pets
    fish_count = self.pets[:fishes]
    dog_count = self.pets[:dogs]
    cat_count = self.pets[:cats]
    "I have #{fish_count.length} fish, #{dog_count.length} dog(s), and #{cat_count.length} cat(s)."
    # binding.pry
  end

end
