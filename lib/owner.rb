

class Owner
  
  attr_accessor :name, :pets, :fishes, :dogs, :cats
  attr_reader :species
  
  @@all = []
  
  def self.count
    @@all.length 
  end
  
  def self.all 
    @@all 
  end
  
  def self.reset_all
    @@all = []
  end
  
  def initialize(species)
    @species = species
    @pets = {fishes:[],dogs:[],cats:[]}
    @@all << self
  end
  
  def say_species 
    "I am a #{@species}."
  end
  
  
  def buy_fish(name) 
    fish = Fish.new(name)
    @pets[:fishes] << fish
    @pets
  end 
  
    def buy_cat(name) 
    cat = Cat.new(name)
    @pets[:cats] << cat
    @pets
  end 
  
    def buy_dog(name) 
    dog = Dog.new(name)
    @pets[:dogs] << dog
    @pets
  end 
  
  
  def walk_dogs
    @pets.each do |k, v|
      if k == :dogs
        v.each {|dog| dog.mood = "happy"}
      end
    end
  end 
  
    def play_with_cats
    @pets.each do |k, v|
      if k == :cats
        v.each {|cat| cat.mood = "happy"}
      end
    end
  end 
  
    def feed_fish
    @pets.each do |k, v|
      if k == :fishes
        v.each {|fish| fish.mood = "happy"}
      end
    end
  end 
  
  def sell_pets
    @pets.each do |k,v|
      v.each {|pet| pet.mood = "nervous"}
    end
    @pets = {fishes:[],dogs:[],cats:[]}
    
  end
  
    def list_pets
      fish = 0 
      dogs = 0 
      cats = 0 
    @pets.each do |k,v|
      if k == :fishes
        fish = v.length
      elsif k == :dogs
        dogs = v.length 
      elsif k == :cats 
        cats = v.length 
      end
    end
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
  
  
end