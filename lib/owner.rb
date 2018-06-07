class Owner

  @@all = []
  attr_accessor :name, :pets, :fishes, :cats, :dogs
  attr_reader :species
  
  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end 
  
  def self.all
    @@all
  end

  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    new_fish_owner = self
    @pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    new_cat_owner = self
    @pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    new_dog_owner = self
    @pets[:dogs] << new_dog
  end
  
  def walk_dogs
    pets[:dogs][0].mood = "happy"
  end
  
  def play_with_cats
    pets[:cats][0].mood = "happy"
  end
  
  def feed_fish
    pets[:fishes][0].mood = "happy"
  end
  
  def sell_pets
    @pets.each { |species, pet|
      pet.each { |animal| animal.mood = "nervous"}}
    @pets.clear
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end