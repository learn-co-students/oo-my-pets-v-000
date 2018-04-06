class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
      @species = species
      @@all << self
      @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
      @@all
  end

  def self.count
      @@all.size
  end


  def self.reset_all
      @@all.clear
  end

  def say_species
      "I am a #{@species}."
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
      self.pets[:dogs].map do |dog|
          dog.mood = "happy"
      end
  end

  def play_with_cats
      self.pets[:cats].map do |cat|
          cat.mood = "happy"
      end
  end

  def feed_fish
      self.pets[:fishes].map do |fish|
          fish.mood = "happy"
      end
  end

  def sell_pets
      self.pets.map do |type, pets|
          pets.map do |pet|
              pet.mood = "nervous"
          end
          pets.clear
      end
  end

  def list_pets
      "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end






end
