require 'pry'

class Owner
  
  attr_accessor :name,:pets #pets is initialized with a pets attribute as a hash with 3 keys 
  attr_reader :species 
  
  OWNERS = []
  
  
  def initialize(species)
     @species = species 
     OWNERS << self 
     @pets = {:fishes => [], :dogs => [], :cats => []}  #pets is initialized with a pets attribute as a hash with 3 keys 
  end 
  
    def self.all      #keeps track of the owners that have been created
       OWNERS 
    end
  
    def self.count      #can count how many owners have been created
       OWNERS.size 
    end 
   
   def self.reset_all    #can reset the owners that have been created
      OWNERS.clear 
   end 
   
    def  say_species 
     "I am a #{species}."
   end 
  
  def buy_fish(name)
      pets[:fishes] << Fish.new(name)
  end 

 
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end 
 
  def buy_dog(name)
   pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    pets[:dogs].each do |walk|  #walks the dogs which makes the dogs moods happy
      walk.mood = "happy"
    end 
  end 
  
  def play_with_cats
    pets[:cats].each do |play|  #plays with the cats which makes the cats moods happy
      play.mood = "happy"
  end 
 end 
 
 def feed_fish
   pets[:fishes].each do |feed| #feeds the fishes which makes the fishes' moods happy
     feed.mood = "happy"
  end 
end 
  
  def sell_pets #owner.pets.each {|type, pets| expect(pets.empty?).to eq(true) }
    pets.each do |species, animals|
        animals.each do |animal|
          animal.mood = "nervous"
     end 
         animals.clear
    end 
    end
   
   def list_pets  #expected: "I have 2 fish, 3 dog(s), and 1 cat(s)."
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)." 
    end 
  
  
end


 