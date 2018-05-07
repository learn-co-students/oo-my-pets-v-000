require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
     "I am a #{@species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    @pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    @pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets.each do |pets, animals|
      if pets == :dogs
       animals.each do |animal|
         animal.mood = "happy"
       end
     end
   end
  end

  def play_with_cats
    @pets.each do |pets, animals|
      if pets == :cats
       animals.each do |animal|
         animal.mood = "happy"
       end
     end
   end
  end

  def feed_fish
    @pets.each do |pets, animals|
      if pets == :fishes
       animals.each do |animal|
         animal.mood = "happy"
       end
     end
   end
  end

  def sell_pets
    @pets.each do |pets, animals|
       animals.each do |animal|
         animal.mood = "nervous"
       end
     end
     @pets.each do |pets, animals|
       animals.clear
     end

     def list_pets
      "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
     end
  end

end
