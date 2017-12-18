class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@owners=[]
  @@count=0

  def initialize(name)
    @pets={fishes: [], cats: [], dogs: []}
    @@owners<<self
    @@count+=1
    @species="human"
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners=[]
    @@count=0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish=Fish.new(name)
    @pets[:fishes]<<fish
  end

  def buy_cat(name)
    cat=Cat.new(name)
    @pets[:cats]<<cat
  end

  def buy_dog(name)
    dog=Dog.new(name)
    @pets[:dogs]<<dog
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def walk_dogs
    pets[:dogs].each do|dog|
      dog.mood ="happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood="happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood="happy"
    end
  end

  def sell_pets
  @pets.each do |type, pets|
      pets.each do |pet|
        pet.mood="nervous"
      end
    end
    @pets={fishes: [], cats: [], dogs: []}
  end

  end
