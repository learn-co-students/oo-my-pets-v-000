class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
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

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats]<<new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs]<<new_dog
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes]<<new_fish
  end

  def say_species
    return "I am a #{self.species}."
  end

  def walk_dogs
    @pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |x|
      x.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |x|
      x.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |x|
      x[1].each do |y|
        y.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
