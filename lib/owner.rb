# first attempt 6/26/17
# require 'pry'
#
# class Owner
#   attr_reader :name, :species
#   attr_accessor :pets
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @pets = {fishes: [], cats: [], dogs: []}
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def self.reset_all
#     @@all.clear
#   end
#
#   def self.count
#     @@all.count
#   end
#
#   def species
#     @species = "human"
#   end
#
#   def say_species
#     "I am a #{species}."
#   end
#
#   def name=(name)
#     @name = name
#   end
#
#   def buy_fish(fish_name)
#     @pets[:fishes] << Fish.new(fish_name)
#   end
#
#   def buy_cat(cat_name)
#     @pets[:cats] << Cat.new(cat_name)
#   end
#
#   def buy_dog(dog_name)
#     @pets[:dogs] << Dog.new(dog_name)
#   end
#
#   def walk_dogs
#     self.pets[:dogs].each {|dog| dog.mood = "happy"}
#   end
#
#   def play_with_cats
#     self.pets[:cats].each {|cat| cat.mood = "happy"}
#   end
#
#   def feed_fish
#     self.pets[:fishes].each {|fish| fish.mood = "happy"}
#   end
#
#   def sell_pets
#     self.pets.each do |type, pet|
#       self.pets[type].each {|pet| pet.mood = "nervous"}
#     end
#     self.pets.clear
#   end
#
#   def list_pets
#     "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
#   end
# end

# second attempt 7/4/17
class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
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
      pet.each {|p| p.mood = "nervous"}
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
