require "pry"
class Owner

  # attr_writer :name
  attr_accessor :pets, :name
  attr_reader :species


  @@owners=[] #keeps track and is available to all instances of the class

  def initialize(species)
    @pets={
          :fishes => [],
          :dogs => [],
          :cats => []
     }
    @species = species
    @@owners << self
  end

  def self.all
    @@owners  #store every instance of owner into this array
  end

  def self.count
    @@owners.length #count every instance that hass been created
  end

  def self.reset_all
    @@owners.clear #all constant instances will clear because constants are shared among all instances
  end

  def say_species
    "I am a #{species}."
  end

  #can buy a fish/cat/dog that is an instance of the Fish/Dog/Cat class
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

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    # self.dog=self
    # dog = self.new
  end

  def walk_dogs
    dog = Dog.new(name)
    @pets[:dogs] << dog
    # dog.mood = "happy"
  end

end
