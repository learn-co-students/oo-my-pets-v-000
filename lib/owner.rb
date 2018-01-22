require 'pry'
class Owner
  attr_reader :name, :species
  attr_accessor :pets

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  #    CLASS METHODS
  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    self.all.count
  end
  #    INSTANCE METHODS
  def reset_pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def name=(name)
    @name = name
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
    self.pets[:dogs].each {|d| d.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats]. each {|c| c.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes]. each {|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets.each_pair do |key, value| #key is animal symbol, value is array of animal objects
      value.each {|obj| obj.mood = "nervous"}
    end
    self.reset_pets
  end

  def pet_count
    self.pets.each_value.collect do |value|
      value.count
    end
  end

  def list_pets
    pet_array = self.pet_count
    "I have #{pet_count[0]} fish, #{pet_count[1]} dog(s), and #{pet_count[2]} cat(s)."
  end

end #  End of Class
