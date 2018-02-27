class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all=[]
  end

  def self.count
    @@all.size
  end

  def say_species
    if self.class == Owner
      "I am a human."
    end
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end 

  def walk_dogs
    @pets[:dogs].each {|d| d.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].each {|d| d.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each {|d| d.mood="happy"}
  end

  def sell_pets
    @pets.each do |type, pet_array| 
      pet_array.each{|p| p.mood = "nervous"}
    end
    @pets= {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end