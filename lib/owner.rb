require 'pry'

class Owner
  attr_accessor :pets , :name
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
    @@all
  end

  def self.count
    self.all.size
  end
  def self.reset_all
    self.all.clear
  end
  def say_species
   "I am a #{species}."
  end
  
  def buy_fish(name)
    #creating new instance with the fish name
    fish_name = Fish.new(name)
    # pushing this fish name to the pets collection
    @pets[:fishes].push(fish_name)
  end
  def buy_cat(name)
    cat_name = Cat.new(name)
    @pets[:cats].push(cat_name)
  end
    def buy_dog(name)
    dog_name = Dog.new(name)
    @pets[:dogs].push(dog_name)
  end
  def walk_dogs
    @pets[:dogs].collect {|dog| dog.mood ="happy"}
  end
  def play_with_cats
    @pets[:cats].collect {|cat| cat.mood ="happy"}
  end
  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood ="happy"}
  end
  def sell_pets
    @pets.collect do |type, pet_array|
      pet_array.collect {|pet| pet.mood = "nervous"}
    end
      @pets.clear
  end
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end











