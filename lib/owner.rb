class Owner
  attr_accessor :name, :pets , :mood , :dog 
  attr_reader :species 

  @@all = []

  def initialize(species)
    @species = species 
    @@all << self 
    @pets = {:fishes => [], :dogs => [], :cats => []}
    
  end

  def self.all
    @@all
  end

  def self.reset_all 
    @@all.clear 
  end 

  def self.count 
    @@all.count 
  end 

  def say_species 
     "I am a #{@species}."
  end 

  def buy_fish(fish_name)
      new_fish = Fish.new(fish_name)
      pets[:fishes] << new_fish

  end 

  def buy_cat(cat_name)
     new_cat = Cat.new(cat_name)
     pets[:cats] << new_cat 
  end 

  def buy_dog(dog_name)
     new_dog = Dog.new(dog_name)
     pets[:dogs] << new_dog 
  end 

  def walk_dogs
   
   pets[:dogs].each{|x|x.mood="happy"}

  end

  def play_with_cats
    pets[:cats].each{|x|x.mood="happy"}

  end 

  def feed_fish
    pets[:fishes].each{|x|x.mood = "happy"}

  end 

  def sell_pets
    pets[:fishes].each{|x|x.mood = "nervous"}
    pets[:cats].each{|x|x.mood="nervous"}
    pets[:dogs].each{|x|x.mood="nervous"}
    
    pets.each{ |type, pets| pets.clear
      }
  end 


  def list_pets
    


    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."


  end



























end