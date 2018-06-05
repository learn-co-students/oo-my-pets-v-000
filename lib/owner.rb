class Owner
  attr_accessor :name, :pets, :mood, :dog
  attr_reader :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.length
  end
  
  def species(species = "human")
    @species = species
  end
  
  def say_species 
    "I am a #{species}."
  end
  
  def buy_fish(fish)
    fish = Fish.new(fish)
    (@pets[:fishes] ||= []) << fish
  end
  
  def buy_cat(cat)
    cat = Cat.new(cat)
    (@pets[:cats] ||= []) << cat
  end
  
  def buy_dog(dog)
    dog = Dog.new(dog)
    (@pets[:dogs] ||= []) << dog
  end
  
  def walk_dogs
    @pets[:dogs].select { |dog|
      dog.mood = "happy"
    }
  end
  
  def play_with_cats
    @pets[:cats].select { |cat|
      cat.mood = "happy"
    }
  end
  
  def feed_fish
    @pets[:fishes].select { |fish|
      fish.mood = "happy"
    }
  end
  
  def sell_pets
    @pets.each { |species, animals|
      animals.each { |animal|
        animal.mood = "nervous"
      }
      animals.clear
    }
    @pets.clear
  end
  
  def list_pets
    dogs_count = @pets[:dogs].length
    cats_count = @pets[:cats].length
    fishes_count = @pets[:fishes].length
    "I have #{fishes_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end
end
