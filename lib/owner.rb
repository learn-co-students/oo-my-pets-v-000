class Owner
  attr_accessor :name, :pets
  @@count = 0
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.count
    @@count
  end
  def self.all
    @@all
  end
  
  def species
  
  end
  
  def says_species
    
  end
  
  def buy_fish(name)
    name = Fish.new
    @pets[:fishes] = "#{name}"
    @@count += 1
  end
  
  def buy_cat(name)
    
  end
  
  def buy_dog(name)
    
  end
  
  def walk_dogs
    Dog.mood = "happy"
  end
  
  def play_with_cats
    Cat.mood = "happy"
  end

  def feed_fish
    Fish.mood = "happy"
  end
  
  def list_pets
    @pets.each { |p| puts p.name}
  end
  
  def sell_pets
    
  end
  
  def self.reset_all
    @@all = []
    @@count = 0
  end

  
end