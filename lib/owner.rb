class Owner
  attr_accessor :pets , :name
  attr_reader :species
  
  @@all = []
  
  def self.all
   return @@all
  end
  
  def initialize(person)
    @name = name
    @@all << self
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.all
    @@all = []
  end
  
  def self.reset_all
    @@all = []
    self.count
  end
   
  def self.count
    return @@all.count
  end

  def say_species
    return  "I am a human."
  end
  
  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end
  
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood ="happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end
  
  def feed_fish 
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    @pets[:dogs].each {|dog| dog.mood ="nervous"}
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def list_pets   
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
  
  
  
  
end