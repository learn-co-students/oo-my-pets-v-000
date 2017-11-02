class Owner
  @@all = []
  attr_accessor :name

  def initialize(species = nil)
    @pets = {:cats => [], :dogs => [], :fishes => []}
    @species = species
    @@all << self
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def pets=(pets)
    @pets = pets
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    #remove pets from owner hash, set mood to nervous
    self.pets.each do |key, value|
      value.each do |val|
        val.mood = "nervous"
      end
      value.clear
    end
    self.pets
  end

  def list_pets
     "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end


end
