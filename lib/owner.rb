require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets 
  attr_reader :species 
  
  @@owners = []
  def initialize(name)
   @species = "human"
   @name = name 
   @pets = {
     :fishes => [], :cats => [], :dogs => []
   }
   @@owners << self 
  end
  
  def say_species
    "I am a #{@species}."
  end 
  
  
  
  def self.all 
    @@owners 
  end 
  
  def self.reset_all 
    @@owners = []
  end 
  
  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish 
  end 
  
  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog 
  end 
  
    def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat  
    end 
  
   def self.count
     @@owners.length 
   end 
   
   def walk_dogs
     @pets[:dogs].each do |dog|
       dog.mood = "happy"
     end 
   end 
   
   def play_with_cats
     @pets[:cats].each do |cat|
       cat.mood ="happy"
     end
   end 
   
   def feed_fish
     @pets[:fishes].each do |fish|
       fish.mood = "happy"
     end 
   end 
   
   def list_pets
     num_fish = @pets[:fishes].count
     num_dogs = @pets[:dogs].count
     num_cats = @pets[:cats].count

     "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
          
   end 
   
   def sell_pets 
     @pets.each_value do |pet_category|
      pet_category.each do |pet|
        pet.mood = "nervous"
      end
      @pets = {
     :fishes => [], :cats => [], :dogs => []
   }  
     end 
   end 
end