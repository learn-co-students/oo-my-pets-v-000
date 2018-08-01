class Owner
  
  attr_accessor :pets, :name, :mood 
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @name = name
    @@all << self
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @mood = mood
   end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
  
  def buy_fish(name)
     pets[:fishes] << Fish.new(name)
  end
  
  def walk_dogs
      pets[:dogs].each do |d|
      d.mood = "happy"
    end
  end
  
    def play_with_cats
      pets[:cats].each do |c|
      c.mood = "happy"
      end
    end
    
    def feed_fish
      pets[:fishes].each do |f|
      f.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end
 
 def list_pets
   "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
 end
  
  def owner
   self.owner
  end
 
  def self.all
    @@all 
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  
end