class Owner
  @@owners = []
  
  attr_accessor :name
  attr_writer :pets
  
  def self.all 
    @@owners 
  end 
  
  def initialize(name)
    @name = name 
    @@owners << self
    @species = "human"
    @pets={:fishes => [], :dogs=>[], :cats=>[]}
  end 
  
  def self.reset_all 
     @@owners.clear 
  end 
  
  def self.count 
    @@owners.length
  end 
  
  def species 
    @species
  end 
  
  def say_species 
    "I am a #{@species}."
  end 
  
  def pets 
    @pets
  end 
  

  
  def buy_fish(name)
   name = Fish.new(name) 
   @pets[:fishes] << name
  end
  
    def buy_dog(name)
   name = Dog.new(name) 
   @pets[:dogs] << name
  end
  
    def buy_cat(name)
   name = Cat.new(name) 
   @pets[:cats] << name
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog_info|
        #binding.pry 
        dog_info.mood = "happy"
       end
   end
  
  def play_with_cats
    @pets[:cats].each do |cat_info|
        #binding.pry 
        cat_info.mood = "happy"
       end
  end
  
  def feed_fish 
    @pets[:fishes].each do |fish_info|
        #binding.pry 
        fish_info.mood = "happy"
       end
  end 
  
  def sell_pets 
    @pets[:dogs].each {|dog_info| dog_info.mood = "nervous"}
    @pets[:cats].each {|cat_info| cat_info.mood = "nervous"}
    @pets[:fishes].each {|fish_info| fish_info.mood = "nervous"}
    
    @pets.clear
    
  end
  
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
end
  
  
end