class Owner
  attr_reader :species
  attr_accessor :name, :pets

  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish(name)
  #should I be checking the pets' class programmatically?
    self.pets[:fishes] << Fish.new(name)
  end

  def feed_fish
    self.pets[:fishes].each{|f| f.mood = "happy"}
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def play_with_cats
    self.pets[:cats].each{|c| c.mood = "happy"}
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each{|d| d.mood = "happy"}
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."

  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each{|p| p.mood = "nervous"}
      pets.clear
    end
  end

end