require 'pry'
class Owner
  # code goes here
  
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  @@count = 0
  
   def initialize(new_species)
    @species = new_species
    @pets = { :fishes => [], :cats => [], :dogs => [] }
    
    @@all << self
    @@count += 1
   end 
  
  def self.all
    puts "In all"
    @@all
  end 
  
  def self.count 
    @@count
  end 
  
  def self.reset_all 
    @@count -= 1
    @@all.clear 
  end 
  
  def species 
    @species
  end 
  
  def say_species 
    "I am a #{species}."
  end 
  
  def name=(name)
    @name = name
  end 
  
  def pets
     @pets 
  end 
  
  def buy_fish(fish_name)
      @pets[:fishes].unshift(Fish.new(fish_name))
    
  end 
  
  def buy_cat(cat_name)
    @pets[:cats].unshift(Cat.new(cat_name))
  end 
  
  def buy_dog(dog_name)
    @pets[:dogs].unshift(Dog.new(dog_name))
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
      
      if(@pets[:fishes] == [] && @pets[:cats] == [] && @pets[:dogs] == [] )
        return " "
      end 
      
       @pets.map do |type, each_pets| 
        each_pets.map do |pet|
             pet.mood = "nervous"
          end
      end
      @pets = { :fishes => [], :cats => [], :dogs => [] }
      
      #binding.pry
  end 
  
  def list_pets 
     "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    
  end 
  
  
end