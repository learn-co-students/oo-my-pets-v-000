class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def initialize(species = "human")
    @species = species
    @name = nil
    @pets = {:fishes => [], :dogs => [], :cats => []}
    self.class.all << self
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes].push(fish)
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats].push(cat)
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs].push(dog)
  end

  def walk_dogs
    @pets[:dogs].collect{|dog|
      dog.mood = "happy"
      }
  end

  def play_with_cats
    @pets[:cats].collect{|cat|
      cat.mood = "happy"
      }
  end

  def feed_fish
    @pets[:fishes].collect{|fish|
      fish.mood = "happy"
      }
  end

  def sell_pets
    @pets.each{|pet_type, pets|
      pets.collect{|pet| pet.mood = "nervous" }
      }
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
  
end