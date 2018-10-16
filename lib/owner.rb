class Owner
  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
  
  def initialize(pets) 
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.count
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name) 
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end 
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 

  def say_species
   "I am a #{@species}."
  end 

  def walk_dogs
    dogs = @pets[:dogs]
    dogs.each do |dog|
      dog.mood = "happy"
    end 
  end
  
  def play_with_cats
    cats = @pets[:cats]
    cats.each do |cat|
      cat.mood = "happy"
    end
  end 
  
  def feed_fish 
    fishes = @pets[:fishes]
    fishes.each do |fish|
      fish.mood = "happy"
    end
  end 
  
  def sell_pets
    all_pets = @pets
    all_pets.each do |type, pets|
      pets.each do |change_mood|
        change_mood.mood = "nervous"
      end
    end  
    @pets.clear
  end 
  
  def list_pets
    dogs = pets[:dogs]
    fish = pets[:fishes]
    cats = pets[:cats]
    "I have #{fish.count} fish, #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end 
  
  def self.reset_all 
    @@all.clear
  end 
  
end