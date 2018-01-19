class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(owner_species)
    @species = owner_species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes]<<new_fish
    if !(new_fish.owner == self)
      new_fish.owner = self
    end
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats]<<new_cat
    if !(new_cat.owner == self)
      new_cat.owner = self
    end
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs]<<new_dog
    if !(new_dog.owner == self)
      new_dog.owner = self
    end
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
    @pets.each do |type, pets|
      pets.each {|pet| pet.mood = "nervous"}
    end
    @pets.each{|type, pets| pets.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
