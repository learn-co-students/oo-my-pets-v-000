class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = { fishes: [], dogs: [], cats: [] }
    @@all << self
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
    "I am a #{self.species}."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes].push(new_fish)
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats].push(new_cat)
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs].push(new_dog)
  end
  
  def walk_dogs
    self.pets[:dogs].each do |dog_obj|
      dog_obj.mood = "happy"
    end
  end
  
  def play_with_cats
    self.pets[:cats].each do |cat_obj|
      cat_obj.mood = "happy"
    end
  end
  
  def feed_fish
    self.pets[:fishes].each do |fish_obj|
      fish_obj.mood = "happy"
    end
  end
  
  def sell_pets
    self.pets.each do |pet, array|
      array.each do |pet_obj|
        pet_obj.mood = "nervous"
      end
    end
    
    self.pets.each do |pet, array|
      array.clear
    end
  end
  
  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end