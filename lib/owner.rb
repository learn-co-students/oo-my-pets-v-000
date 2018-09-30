class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
   def initialize(name)
     @name = name
     @species = 'human'
     @pets = {:fishes => [], :dogs => [], :cats => []}
     @@all << self
  end
  
  def reset 
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
    say = "I am a #{@species}."
  end 
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    @pets[:dogs].each do |instance|
    instance.mood = 'happy'
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |instance|
    instance.mood = 'happy'
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |instance|
    instance.mood = 'happy'
    end
  end
  
  def sell_pets
    @pets.keys.each do |keys|
      @pets[keys].each do |instance|
        instance.mood = 'nervous'
      end
    end
    @pets = {}
  end 
  
  def list_pets
    pets = "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end 
end