class Owner

  @@all = []
  
  attr_accessor :owner, :name, :pets
  attr_reader :species

  def initialize(owner)
    @owner = owner
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.reset_all
   @@all.clear
  end

  def self.count
    @@all.length
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat)
    kitty = Cat.new(cat)
    self.pets[:cats] << kitty
  end
  
  def buy_dog(dog)
    doggy = Dog.new(dog)
    self.pets[:dogs] << doggy
  end

  def walk_dogs
    self.pets[:dogs].each {|x| x.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|x| x.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|x| x.mood = "happy"}
  end

  def sell_pets    
    
    self.pets.each do |x, y|
      y.each {|z| z.mood = "nervous"}
    end
    
    self.pets.each do |x, y|
      y.clear
    end

  def list_pets
    list = "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
    list
  end


  end
end