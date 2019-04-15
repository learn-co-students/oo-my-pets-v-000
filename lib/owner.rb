class Owner

  attr_accessor :owner, :name, :pets
  attr_reader :species

  @@all = []

  def initialize(owner)
    @owner = owner
    @@all << self
    @species = "human"
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
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

  def self.species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def self.name
    @name
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

  def walk_dogs
    @pets[:dogs].each do |pet|
      pet.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |pet|
      pet.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |pet|
      pet.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, instance|
      instance.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
