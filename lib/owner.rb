class Owner
  @@all = []
  attr_accessor :pets
  attr_reader :species, :name

  
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << name
    @species = "human"
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
    
  
  def species_initialize(species)
    if species == "cat"
      name = Cat.new(name)
    elsif species == "dog"
      name = Dog.new(name)
    else
      name = Fish.new(name)
    end
  end  
  
  def say_species
    "I am a #{@species}."
  end
  
  def name
    
  end
  
  def pets 
    @pets
  end
  
  def buy_fish
    
  end
  
  def buy_cat
    
  end
  
  def buy_dog
    
  end
  
  def walk_dogs
    
  end
  
  def play_with_cats
    
  end
  
  def sell_pets
    
  end
  
  def list_pets
    
  end  
end