class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def feed_fish
    @pets[:fishes].each {|curr| curr.mood = "happy"}
  end

  def walk_dogs
    @pets[:dogs].each {|curr| curr.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|curr| curr.mood = "happy"}
  end

  def sell_pets
    @pets.each do |pet, names|
      names.each {|curr| curr.mood = "nervous"}
    end

    @pets = {}

  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def self.count
    @@all.length
  end

  private

  attr_writer :species

end
