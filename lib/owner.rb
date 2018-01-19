class Owner
  @@owners = []
  @@count = 0
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @@owners << self
    @@count += 1
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each {|type, pets| pets.each {|pet| pet.mood = "nervous"}}
    @pets.each {|type, pets| pets.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
