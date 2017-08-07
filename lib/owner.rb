class Owner
  @@all = []
  @@count = 0
  attr_accessor :name, :all, :pets

  def initialize(name)
    @name = name 
    @@all << self
    @@count += 1
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all 
  end
  
  def self.count
    @@count
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end

  def species
    @species
  end

  def say_species
    "I am a human."
  end

  def pets
    @pets 
  end
  
  def buy_fish(fish)
    @pets[:fishes]  <<  Fish.new(fish)
  end 

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end  
    end
   @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
   "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
end