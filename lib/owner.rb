class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end
  
  def buy_fish(fish)
    new_fish = Fish.new(fish)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    self.pets[:cats] << new_cat
  end
  
  def buy_dog(dog)
    new_dog = Dog.new(dog)
    self.pets[:dogs] << new_dog
  end
  
  def walk_dogs
    self.pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end
  
  def play_with_cats  
    self.pets[:cats].each do |x|
      x.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |x|
      x.mood = "happy"
    end
  end
  
  def sell_pets
    self.pets.each do |k,v|
      v.each {|x| x.mood = "nervous"}
      v.clear
    end
  end
  
  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
  
end
