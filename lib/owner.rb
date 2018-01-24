class Owner
  attr_accessor :pets, :name
  @@owners = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    self.all.clear
    @@owners_count = 0
  end

  def self.count
    self.all.length
  end

  def species
    self.name
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)

  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
     self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each{|d| d.mood="happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|d| d.mood="happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|d| d.mood="happy"}
  end

  def sell_pets
    self.pets.each do |type, name|
      name.each{|pet| pet.mood="nervous"}
    end
    self.pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end


end
