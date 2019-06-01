class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  # Class methods
  def self.all
    @@all
  end

  def self.reset_all
    all.clear
  end

  def self.count
    all.count
  end

  def initialize(species)
    @species = species
    self.pets = {:fishes => [], :dogs => [], :cats => []}
    self.class.all << self
  end

  ## instance methods

  def say_species
    return "I am a #{self.species}."
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
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      !pets.clear
    end
  end

  def list_pets
    return "I have"\
      " #{self.pets[:fishes].count} fish,"\
      " #{self.pets[:dogs].count} dog(s),"\
      " and #{self.pets[:cats].count} cat(s)."
  end

end
