class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species
  attr_writer :pets
  @@owner=[]
  def initialize(species)
    @species = species
    @@owner<<self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def self.all
    @@owner
  end
  def self.reset_all
    @@owner.clear
  end
  def self.count
    self.all.count
  end
  def say_species
    "I am a #{@species}."
  end
  def pets
    @pets
  end
  def buy_fish(fishName)
    fish = Fish.new(fishName)
    @pets[:fishes]<<fish
  end
  def buy_cat(catName)
    cat = Cat.new(catName)
    @pets[:cats]<<cat
  end
  def buy_dog(dogName)
    dog = Dog.new(dogName)
    @pets[:dogs]<<dog
  end
  def walk_dogs
    @pets[:dogs].each {|dog|
    dog.mood = "happy"}
  end
  def play_with_cats
    @pets[:cats].each {|cat|
    cat.mood = "happy"}
  end
  def feed_fish
    @pets[:fishes].each {|fish|
    fish.mood = "happy"}
  end
  def sell_pets
    @pets.each { |petType, pets|
      pets.each {|pet|
        pet.mood = "nervous"
      }
      pets.clear
    }
  end
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
