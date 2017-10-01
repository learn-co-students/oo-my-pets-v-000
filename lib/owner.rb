class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species


  @@owner_count = 0
  @dogs = 0
  @cats = 0
  @fish = 0
  @@owner_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], dogs: [], cats: []}
    @@owner_count += 1
    @species = "human"
  end

  def buy_cat(name)
  end

  def buy_dog(name)
  end

  def buy_fish(name)
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all << self
  end

  def self.reset_all
    self.class.all.clear
    owner_count = 0
  end

end
