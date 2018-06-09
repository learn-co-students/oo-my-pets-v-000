class Owner
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  def species
    @species
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def name=(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def pets=(pets)
    @pets = pets
  end
  
  def pets
    @pets
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    
    @pets[:dogs] = []
    @pets[:cats] = []
    @pets[:fishes] = []
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
end