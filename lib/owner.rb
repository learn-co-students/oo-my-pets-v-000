class Owner
  
  attr_accessor :pets, :name
  attr_reader  :species
  
  @@all = []
  
  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species= "human"
  end

  
  def self.count
    @@all.length
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  
  def walk_dogs
    @pets[:dogs].each { |n| n.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each { |n| n.mood = "happy"}
  end
  
  def feed_fish
      @pets[:fishes].each { |n| n.mood = "happy"}
  end
  
  def sell_pets
    @pets[:dogs].each   {|pet| pet.mood = "nervous" }
    @pets[:cats].each   {|pet| pet.mood = "nervous" }
    @pets[:fishes].each {|pet| pet.mood = "nervous" }
    
    @pets[:dogs].clear
    @pets[:cats].clear
    @pets[:fishes].clear
    
    
  end
  
  def list_pets
    dog_count = @pets[:dogs].length
    cat_count = @pets[:cats].length
    fish_count = @pets[:fishes].length
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
  
  
end






