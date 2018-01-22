class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all=[]

  def initialize(name)
    @name=name
    @species = "human"
    @@all.push(self)
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.reset_all
    @@all=[]
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes].push(new_fish)
    @pets
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats].push(new_cat)
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs].push(new_dog)
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
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets = {fishes: [], dogs: [], cats: []}
  end

    def list_pets
      "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    end


end
