require 'pry'
class Owner
  
attr_accessor :pets, :name, :specie
@@all = []

  def initialize(name) 
    @pets = {fishes: [], cats: [], dogs: []}
    self.save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @specie = "human"
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
   fish_instance = Fish.new(name)
   self.pets[:fishes] << fish_instance
  end

  def buy_cat(name)
    cat_instance = Cat.new(name)
    self.pets[:cats] << cat_instance
  end

  def buy_dog(name)
    dog_instance = Dog.new(name)
    self.pets[:dogs] << dog_instance
  end

  def walk_dogs
   self.pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    self.pets.values.each {|array| array.each {|pet| pet.mood = "nervous"}.clear}
  end

  def list_pets
    fish_count = ""
    dog_count = ""
    cat_count = ""

    fish_count = self.pets[:fishes].count 
    dog_count = self.pets[:dogs].count  
    cat_count = self.pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."  
  end

end








