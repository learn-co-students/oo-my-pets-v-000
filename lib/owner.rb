class Owner
  
  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
  
  def initialize(owner_name)
    @name = owner_name
    @pets = {:fishes =>[], :cats => [], :dogs => []}
    @@all << self
    @species = "human"
  end
  
  def say_species
    "I am a #{species}."
  end 
  
  def self.all
    @@all
  end 
  
  def self.reset_all
    @@all = []
  end 
  
  def self.count
    @@all.size
  end 
  
  def walk_dogs
    dogs = @pets[:dogs]
    dogs.collect do |dog|
      dog.mood = "happy"
    end
  end 
  
  def play_with_cats
    cats = @pets[:cats]
    cats.collect do |cat|
      cat.mood = "happy"
    end
  end 
  
  def feed_fish
    fish = @pets[:fishes]
    fish.collect do |fish|
      fish.mood = "happy"
    end 
  end 
  
  def sell_pets
    fish = @pets[:fishes]
    cats = @pets[:cats]
    dogs = @pets[:dogs]
    fish.collect do |fish|
      fish.mood = "nervous"
    end 
    cats.collect do |cat|
      cat.mood = "nervous"
    end
     dogs.collect do |dog|
      dog.mood = "nervous"
    end
    @pets = {:fishes =>[], :cats => [], :dogs => []}
  end 
  
  def list_pets
    fish = @pets[:fishes]
    cats = @pets[:cats]
    dogs = @pets[:dogs]
    "I have #{fish.size} fish, #{dogs.size} dog(s), and #{cats.size} cat(s)."
  end 
  
  
  def buy_cat(name_cat)
    new_cat = Cat.new(name_cat)
    @pets[:cats] << new_cat
  end 
  
  def buy_fish(name_fish)
    new_fish = Fish.new(name_fish)
    @pets[:fishes] << new_fish
  end
  
  def buy_dog(name_dog)
    new_dog = Dog.new(name_dog)
    @pets[:dogs] << new_dog
  end 
  
end