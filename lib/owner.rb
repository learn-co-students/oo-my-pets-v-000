class Owner
  attr_reader :species
  attr_accessor :name, :pets


  @@all = []
  # code goes here
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    self.all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each {|name|
        name.mood="happy"
        }
  end

  def play_with_cats
    self.pets[:cats].each {|name|
        name.mood="happy"
        }
  end

  def feed_fish
    self.pets[:fishes].each {|name|
        name.mood="happy"
        }
  end

  def sell_pets
    self.pets.each { |specie,pets|
      pets.each {|pet|
        pet.mood="nervous"
        }
      pets.clear
      }
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end


