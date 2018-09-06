class Owner
  #Attributes:
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  #Class Methods:
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  

  def initialize(species)
    @pets = {cats: [], dogs: [], fishes: []}
    @species = species
    @@all << self
  end
  
  #Instance Methods:
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
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
  def sell_pets
    @pets.each do |type, pet_list|
      pet_list.each {|pet| pet.mood = "nervous"}
      pet_list.clear
    end
  end
  
end