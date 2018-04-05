class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  def initialize(name = nil)
    @name= name
    @pets= {fishes: [], cats: [], dogs: []}
    @species= "human"
    self.save
  end
   
  def self.create(name = nil) 
    new_owner = self.new(name)
    new_owner.save
    new_owner
  end 
  
  def save 
    @@all << self
  end 
  
  def self.reset_all 
    @@all.clear 
  end
  
  def self.count 
    @@all.size 
  end 
  
  def self.all 
    @@all 
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  
   def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  
  def say_species
    "I am a #{self.species}."
  end 
  
  def make_pets_mood(pet, new_mood)
    @pets[pet].each {|pet| pet.mood = new_mood}
  end
    
  def walk_dogs
   make_pets_mood(:dogs, "happy")
  end
  
  def play_with_cats
    make_pets_mood(:cats, "happy")
  end
  
  def feed_fish
    make_pets_mood(:fishes, "happy")
  end

  def sell_pets
    make_pets_mood(:dogs, "nervous")
    make_pets_mood(:cats, "nervous")
    make_pets_mood(:fishes, "nervous")
    @pets.clear
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end