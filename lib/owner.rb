class Owner

  @@all = [] 

  attr_reader :species
  attr_accessor :name, :pets 


  def initialize(name)
    @name = name
    @@all << self 
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all 
    @@all 
  end

  def self.reset_all 
    self.all.clear
  end

  def self.count 
    self.all.count 
  end

  def say_species
    "I am a #{species}."
  end

  def pets 
    @pets 
  end

  def buy_fish(fish)
    pet = Fish.new(fish)
    self.pets[:fishes] <<  pet 
  end

  def buy_cat(dextoo)
    pet = Cat.new(dextoo)
    self.pets[:cats] <<  pet 
  end

  def buy_dog(dog)
    pet = Dog.new(dog)
    self.pets[:dogs] <<  pet 
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end


  def sell_pets
    self.pets.each do |type, animal|
      animal.each { |pet| pet.mood = "nervous"}
      animal.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end









end