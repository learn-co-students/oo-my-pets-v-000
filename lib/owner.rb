class Owner
  # code goes here
  attr_accessor :pets, :name, :fish
  attr_reader :species
  @@all = []
  @@count = 0

  def initialize(name)
    @pets = {fishes: [], cats:[], dogs:[]}
    #@species = species
    @@all << self
    @@count +=1
  end

  def buy(name)

  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
    @@count = 0
  end 

  def self.count
    @@count
  end

  def species
    @species = "human"
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
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pet| 
      pet.each do |individual| individual.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end