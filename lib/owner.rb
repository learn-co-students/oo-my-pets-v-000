class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
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
    @pets[:dogs].each do |x|
      x.mood = "nervous"
    end
    @pets[:cats].each do |x|
      x.mood = "nervous"
    end
    @pets[:fishes].each do |x|
      x.mood = "nervous"
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end


end
