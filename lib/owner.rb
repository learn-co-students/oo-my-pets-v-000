class Owner
  # code goes here
  
  attr_accessor :name, :pets
  attr_reader :species
  
  OWNERS =[]
  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
    OWNERS
  end
  
  def self.count
    OWNERS.size
  end
  
  def self.reset_all
    OWNERS.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(fish)
    fish_x = Fish.new(fish)
    self.pets[:fishes] << fish_x
  end
  
  def buy_cat(cat)
    cat_x = Cat.new(cat)
    self.pets[:cats] << cat_x
  end
  
  def buy_dog(dog)
    dog_x = Dog.new(dog)
    self.pets[:dogs] << dog_x
  end
  
  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end
  
  def sell_pets      # look at spec helper for hints
    @pets.each do |key_animal,val_animal_inst|
      val_animal_inst.each {|animal_inst| animal_inst.mood = "nervous"}
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def list_pets
    catno = self.pets[:cats].count
    fishno = self.pets[:fishes].count
    dogno = self.pets[:dogs].count
    "I have #{fishno} fish, #{dogno} dog(s), and #{catno} cat(s)."
  end
  
end