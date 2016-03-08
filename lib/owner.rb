class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name, pets = {fishes: [], cats: [], dogs: []})
    @name = name
    @pets = pets
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    self.all.count
  end

  def species(species = "human")
    @species = species
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    self.pets[:fishes] << fish = Fish.new(name)
    fish.owner = self
  end

  def buy_cat(name)
    self.pets[:cats] << cat = Cat.new(name)
    cat.owner = self
  end

  def buy_dog(name)
    self.pets[:dogs] << dog = Dog.new(name)
    dog.owner = self
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each {|p| p.mood = "nervous"}
      self.pets = {fishes: [], cats: [], dogs: []}
    end
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    cat_count = self.pets[:cats].count
    dog_count = self.pets[:dogs].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end