class Owner
 attr_accessor :pets, :name
 attr_reader :species
 
  @@all = []
  
  def initialize(species) 
    @species= species
    @pets = {
      fishes: [], 
      cats: [], 
      dogs: []
    } 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def self.count
    @@all.count
  end 
  
  def say_species 
    "I am a #{@species}."
  end 
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end 
  
  def buy_cat(name) 
    cat = Cat.new(name)
    @pets[:cats] << cat
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog 
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
    @pets.each do |species, species_array| 
      species_array.each {|pet| pet.mood= "nervous" }
      species_array.clear
    end 
  end 
  
  def list_pets 
    fish_number = @pets[:fishes].count
    cat_number = @pets[:cats].count
    dog_number = @pets[:dogs].count
    "I have #{fish_number} fish, #{dog_number} dog(s), and #{cat_number} cat(s)."
  end 
  
  def self.reset_all 
    @@all.clear
  end 
end