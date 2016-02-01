class Owner
  # code goes here
  @@all = []
  @@count = 0
  attr_reader :species
  attr_accessor :name

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
  def initialize(species)
    @species = species
    @pets = {fishes:[], dogs:[], cats:[]}
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def feed_fish
    @pets[:fishes].each {|fish|
      fish.mood = "happy"
    }
  end

  def play_with_cats
    @pets[:cats].each {|cat|
      cat.mood = "happy"
    }
  end

  def walk_dogs
    @pets[:dogs].each {|dog|
      dog.mood = "happy"
    }
  end

  def pets=(hash)
    @pets = hash
  end

  def sell_pets
    @pets.each {|species, array|
      array.each {|animal|
          animal.mood = "nervous"
        }
    }
    @pets = {fishes:[],cats:[],dogs:[]}
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end