class Owner
  attr_reader :species
  attr_accessor :pets, :name
  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {
      fishes: [], cats: [], dogs: []
    }
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    self.all.clear
    @@count = 0
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each { |d| d.mood = "happy" }
  end

  def play_with_cats
    pets[:cats].each { |c| c.mood = "happy" }
  end

  def feed_fish
    pets[:fishes].each { |f| f.mood = "happy"}
  end

  def sell_pets
    pets.each do |type, pets| 
      pets.each { |p| p.mood = "nervous"}
    end
    pets.clear
  end

  def list_pets
    amount = pets.collect { |type, pets| pets.size }
    "I have #{amount[0]} fish, #{amount[2]} dog(s), and #{amount[1]} cat(s)."  
  end
end




