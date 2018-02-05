class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def initialize(species) # or name?
    @species=species
    @pets= {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  def buy_fish(name)
    name= Fish.new(name)
    @pets[:fishes] << name
  end
  def buy_dog(name)
    name= Dog.new(name)
    @pets[:dogs] << name
  end
  def buy_cat(name)
    name= Cat.new(name)
    @pets[:cats] << name
  end
  def walk_dogs #for all dogs or one dog
    @pets[:dogs].map do |dog|
      dog.mood= "happy"
    end
  end
  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood= "happy"
    end
  end
  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood= "happy"
    end
  end
  def say_species
    "I am a #{@species}."
  end
  def self.all
    @@all
  end
  def self.count
    @@all.length
  end
  def self.reset_all
    @@all = []
  end
  def list_pets
    @pets[:fishes].length #etc..
    "I have 2 fish, 3 dog(s), and 1 cat(s)."
  end
  def sell_pets
    @pets[:fishes].map do |fish|
      fish.mood= "nervous"
    end
    @pets[:dogs].map do |fish|
      fish.mood= "nervous"
    end
    @pets[:cats].map do |fish|
      fish.mood= "nervous"
    end
    @pets= {fishes: [], cats: [], dogs: []}
  end

  # code goes here
end
