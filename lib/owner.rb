class Owner

  @@all =[]

  attr_accessor :pets, :name
  attr_reader :species
  
  def initialize(pets = {fishes: [], cats: [], dogs: []}, name)
    self.name = name
    @species = "human"
    self.pets = pets
    @@all << self
  end


  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    self.pets[:dogs].map! {|instance| instance.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].map! {|instance| instance.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].map! {|instance| instance.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |animal, instances|
      pets[animal].map! {|instance| instance.mood = "nervous"}
    end
    self.pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end












end