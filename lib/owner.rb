require 'pry'
class Owner
  # code goes here
  attr_accessor :owner, :name, :pets
  attr_reader :species

  @@all = []

  def  initialize(owner)
        @owner = owner
        @@all << self
        @species = "human"
        @pets = {fishes: [], cats: [], dogs: []}
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
        @species = "human"
        "I am a human."
  end

  def buy_fish(name_of_fish)
        new_fish = Fish.new(name_of_fish)
        @pets[:fishes] << new_fish
  end

  def buy_cat(name_of_cat)
        new_cat = Cat.new(name_of_cat)
        @pets[:cats] << new_cat
  end

  def buy_dog(name_of_dog)
        new_dog = Dog.new(name_of_dog)
        @pets[:dogs] << new_dog
  end

  def walk_dogs
       @pets[:dogs].find_all{|m|  m.mood = "happy" }
  end

  def play_with_cats
        @pets[:cats].find_all{|m| m.mood = "happy"}
  end

  def feed_fish
        @pets[:fishes].find_all{|m| m.mood = "happy"}
  end

  def sell_pets
        pets.each do |pet_type, pet_instances|
             pet_instances.collect{|atter| atter.mood = "nervous"}
        end
        self.pets.clear
        #binding.pry
  end

  def list_pets

            "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."

            #binding.pry

  end

end
