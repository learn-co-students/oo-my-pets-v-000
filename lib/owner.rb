class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.count
    count = @@all.size
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
    @@all.count
  end

  #Instance methods

  def say_species
    "I am a human."
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
    self.pets[:dogs].each {|d| d.mood= "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|c| c.mood= "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|f| f.mood= "happy"}
  end

  def sell_pets
    self.pets[:fishes].each {|f| f.mood= "nervous"}
    self.pets[:cats].each {|c| c.mood= "nervous"}
    self.pets[:dogs].each {|d| d.mood= "nervous"}
    self.pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
