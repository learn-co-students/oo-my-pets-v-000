class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    #binding.pry
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
    self.pets[:dogs].each {|d| d.mood="happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|c| c.mood="happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|f| f.mood="happy"}
  end

  def sell_pets
    self.pets.keys.each do |specie|
      self.pets[specie].each do |p|
        p.mood="nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    count = []
    self.pets.keys.each do |specie|
      count << self.pets[specie].count
    end
    "I have #{count[0]} fish, #{count[2]} dog(s), and #{count[1]} cat(s)."
  end


end
