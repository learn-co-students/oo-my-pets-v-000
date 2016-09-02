class Owner
attr_accessor :name, :pets
attr_reader :species
@@owners = []
@@num_owners = 0


  def initialize(species)
    @species = species
    add_owner
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def add_owner
    @@owners << self
    @@num_owners += 1
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
    @@num_owners = 0
  end

  def self.count
    @@num_owners
  end

  def say_species
    "I am a #{@species}."
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
    @pets[:dogs].collect { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].collect { |cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].collect { |fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets[:dogs].collect { |dog| dog.mood = "nervous"}
    @pets[:cats].collect { |cat| cat.mood = "nervous"}
    @pets[:fishes].collect { |fish| fish.mood = "nervous"}
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
