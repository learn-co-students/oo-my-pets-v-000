class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@owners = []
  
  def initialize(species)
    @species = species
    @@owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  
  # Class Methods
  def self.all
    @@owners
  end
  
  def self.reset_all
    @@owners.clear
  end
  
  def self.count
    @@owners.count
  end
  
  
  #Instance Methods
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    pets[:dogs].each {|d| d.mood = "happy"}
  end
  
  def play_with_cats
    pets[:cats].each {|c| c.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].each {|f| f.mood = "happy"}
  end
  
  def sell_pets
    pets.each do |animals, types|
      types.each do |type|
        type.mood = "nervous"
      end
      types.clear
    end
  end
  
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  
end