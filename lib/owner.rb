require 'pry'
class Owner
  attr_accessor :name , :pets
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
    @pets = {:fishes => [], :cats => [], :dogs => [] }
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
    owner = Owner.new(@name)
      owner.name
  end 
  
  def say_species 
    "I am a #{species}."
  end 
   
  def count
    @count
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
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end 
    def play_with_cats 
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end 
    def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
    def sell_pets 
      
      @pets.each do |type, pets  |
        
        pets.each do | pet |
          pet.mood = "nervous"
        end
        
      end
      pets.clear
    end 
    def list_pets 
      "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    end 
  end 
 
   
end