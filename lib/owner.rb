class Owner

  attr_accessor :name, :pets
  attr_reader :species
  attr_writer
  @@all = [] #array of all owners

  def initialize(name)
      @name = name
      @@all << self
      @pets = {fishes: [], cats: [], dogs: []}
      @species = "human"
  end

  def self.all
      @@all
  end

  def self.reset_all
      @@all.clear
  end

  def self.count
      self.all.size
  end

  def say_species
      "I am a human."
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
      @pets[:dogs].each do |one|
        one.mood = "happy"
      end
  end
  def play_with_cats
    @pets[:cats].each do |one|
      one.mood = "happy"
    end
  end
  def feed_fish
    @pets[:fishes].each do |one|
      one.mood = "happy"
    end
  end
  def sell_pets
    @pets[:fishes].each do |one|
      one.mood = "nervous"
    end
    @pets[:fishes].clear
    @pets[:dogs].each do |one|
      one.mood = "nervous"
    end
    @pets[:dogs].clear
    @pets[:cats].each do |one|
      one.mood = "nervous"
    end
    @pets[:cats].clear
  end
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
