class Owner
  attr_reader :species
  attr_accessor :pets, :name
  @@all = Array.new

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def buy_cat(name)
    name = Cat.new(name)
    self.pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    self.pets[:dogs] << name
  end

  def buy_fish(name)
    name = Fish.new(name)
    self.pets[:fishes] << name
  end

  def say_species
    "I am a #{self.species}."
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



  def walk_dogs
    self.pets[:dogs].select{ |dog| dog.mood = "happy"};
  end

  def play_with_cats
    self.pets[:cats].select{|cat| cat.mood = "happy"};
  end

  def feed_fish
      self.pets[:fishes].select{|fish| fish.mood = "happy"};
  end

  def sell_pets
    self.pets.each_value {|pets|
      pets.select{|pet| pet.mood = "nervous"};
      pets.clear}
    # self.pet.select {|type,pet| pet.mood = "nervous"};
    # self.pets[:cats].select{|cat| cat.mood = "nervous"};
    # self.pets[:fishes].select{|fish| fish.mood = "nervous"};
    # self.pets[:dogs].select{|dog| dog.mood = "nervous"};
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
