require 'pry'
class Owner
  attr_accessor :all, :count, :name, :pets, :mood 
  attr_reader :species 

  @@all = []
  @@count = 0 
  
  def initialize(owner)
    @owner = owner 
    @@all << self 
    @@count += 1 
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all = []
  end 
  
  def self.count
    @@count
  end 
  
  def Owner.reset_all
    @@count = 0 
  end 
  
  def say_species
    "I am a #{@species}."  
  end
  
  def name
    @name 
  end
  
  def pets
    @pets 
  end 
  
  def buy_fish(fish)
    fish = Fish.new(fish) 
    self.pets[:fishes] << fish
  end 
  
  def buy_cat(cat)
    cat = Cat.new(cat)
    self.pets[:cats] << cat 
  end
  
  def buy_dog(dog)
    dog = Dog.new(dog)
    self.pets[:dogs] << dog 
  end
  
  def walk_dogs
    pets[:dogs][0].mood = "happy"
  end
  
  def play_with_cats
    pets[:cats].each {|x|x.mood = "happy"}
  end
  
  def feed_fish 
    pets[:fishes].each {|x| x.mood = "happy"}
  end
  
  def sell_pets
    pets.each do |k, v|
      v.each {|x|x.mood = "nervous"}
    end 
    pets.each do |k, v|
      v.clear  
    end
    
    def list_pets
      dogcount = pets[:dogs].length 
      catcount = pets[:cats].length
      fishcount = pets[:fishes].length
      "I have #{fishcount} fish, #{dogcount} dog(s), and #{catcount} cat(s)."
    end 
   
  end


  
end