require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    self.pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

 def species
  @species = "human"
 end

 def say_species
   "I am a #{self.species}."
 end

 def pets
   @pets
 end

 def buy_fish(name)
   bought_fish = Fish.new(name)
   @pets[:fishes] << bought_fish
 end

 def buy_cat(name)
   bought_cat = Cat.new(name)
   @pets[:cats] << bought_cat
 end

 def buy_dog(name)
   bought_dog = Dog.new(name)
   @pets[:dogs] << bought_dog
 end

 def walk_dogs
   @pets[:dogs].each {|walk| walk.mood = "happy"}
 end

 def play_with_cats
   @pets[:cats].each {|play| play.mood = "happy"}
 end

 def feed_fish
   @pets[:fishes].each {|feed| feed.mood = "happy"}
 end

 def sell_pets
   @pets[:fishes].each {|sell| sell.mood = "nervous"}
   @pets[:cats].each {|sell| sell.mood = "nervous"}
   @pets[:dogs].each {|sell| sell.mood = "nervous"}
   @pets.clear
 end

 def list_pets
   "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
 end

end
