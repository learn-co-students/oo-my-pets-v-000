class Owner
  @@all = []
  
  attr_reader :species
  attr_accessor :name, :pets, :fishes, :dogs, :cats
  
  def initialize(species)
    @species = species
    @pets = {}
    @pets[:fishes] = []
    @pets[:dogs] = []
    @pets[:cats] = []
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.count
    @@all.size
  end 
  
  def self.reset_all 
    @@all = []
  end 
  
  def say_species
    talk =  "I am a #{@species}." 
    talk
  end 
  
  def buy_fish(name)
    fish = Fish.new(name)
    #fish.name = name  
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
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end 
  end 
  
  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end 
  end 
  
  def sell_pets
     @pets.map do |species, fishArray|
      fishArray.map do |fish|
        fish.mood = "nervous"
      end 
    end 
    @pets[:dogs] = "" 
    @pets[:fishes] = "" 
    @pets[:cats] = ""
  end 
  
  def list_pets
    dogSize = @pets[:dogs].size 
    catSize = @pets[:cats].size
    fishSize = @pets[:fishes].size 
    statement = "I have #{fishSize} fish, #{dogSize} dog(s), and #{catSize} cat(s)."
    statement
  end 
end