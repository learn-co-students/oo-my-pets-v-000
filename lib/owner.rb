require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

   def initialize(species)
     @pets = {:fishes => [], :dogs => [], :cats => []}
     @species = species
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
     return "I am a #{species}."
   end

   def buy_fish(name)
     fish = Fish.new(name)
    @pets[:fishes] << fish
   end

   def buy_cat(name)
     cat = Cat.new(name)
     @pets[:cats] << cat
   end

   def buy_dog(name)
     dog = Dog.new(name)
     @pets[:dogs] << dog
   end

   def walk_dogs
     @pets[:dogs][0].mood = "happy"
   end

   def play_with_cats
     @pets[:cats][0].mood = "happy"
   end

   def feed_fish
     @pets[:fishes][0].mood = "happy"
   end

   def sell_pets
     @pets.each do |key, value|
       value.each do |animal|
         animal.mood = "nervous"
       end
   value.clear
    end
  end

  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
