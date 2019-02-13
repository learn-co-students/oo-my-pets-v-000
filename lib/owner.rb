class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
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
    pets[:dogs].each{|d| d.mood = "happy"}
  end
  
  def play_with_cats
    pets[:cats].each{|c| c.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].each{|f| f.mood = "happy"}
  end
  
  def sell_pets
    @pets.each do |type, pet|
      pet.each{|p| p.mood = "nervous"}
      pet.clear
    end
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
end