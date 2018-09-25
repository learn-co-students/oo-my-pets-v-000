class Owner
  
  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
  @@count = 0
  
  def initialize(species)
    @species=species
    @@all << self
    @pets= {fishes: [], cats:[], dogs: []}
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all= []
  end
  
  def say_species
    p "I am a #{@species}."
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    @pets
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
    @pets
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
    @pets
  end
  
  def walk_dogs
    @pets[:dogs] = @pets[:dogs].collect {|dog| dog.mood = "happy"}
    @pets[:dogs]
  end 
  
  def play_with_cats
    @pets[:cats] = @pets[:cats].collect {|cat| cat.mood = "happy"}
    @pets[:cats]
  end
  
  def feed_fish
    @pets[:fishes] = @pets[:fishes].collect {|fish| fish.mood = "happy"}
    @pets[:fishes]
  end 
  
  def sell_pets
    @pets[:fishes]= @pets[:fishes].collect {|fish| fish.mood = "nervous"}
    @pets[:cats]= @pets[:cats].collect {|cat| cat.mood = "nervous"}
    @pets[:dogs]= @pets[:dogs].collect {|dog| dog.mood = "nervous"}
    
    @pets= {fishes: [], cats:[], dogs: []}
  end
  
  def list_pets
    fish_count = @pets[:fishes].length
    cat_count = @pets[:cats].length
    dog_count = @pets[:dogs].length
    p "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
  
  
end