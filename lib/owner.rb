class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
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
  
  def pets
    @pets
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    new_pet = Fish.new(name)
    @pets[:fishes] << new_pet
  end
  
  def buy_cat(name)
    new_pet = Cat.new(name)
    @pets[:cats] << new_pet
  end
  
  def buy_dog(name)
    new_pet = Dog.new(name)
    @pets[:dogs] << new_pet
  end
  
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
    end
    
  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    @pets.each {|type, pets| pets.each {|pets| pets.mood = "nervous"}}
    @pets.each {|type, pets| pets.clear}
  end
  
  def list_pets
    fish_count = @pets[:fishes].size
    cat_count = @pets[:cats].size
    dog_count = @pets[:dogs].size
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end