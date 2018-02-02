class Owner
  attr_accessor :name, :pets, :dog
  attr_reader :species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
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
    "I am a #{self.species}."
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def walk_dogs
    @pets.each do |key, value|
      if key == :dogs
      value.each do |dog|
        dog.mood = "happy"
      end
      end
    end
  end

  def play_with_cats
    @pets.each do |key, value|
      if key == :cats
      value.each do |cat|
        cat.mood = "happy"
      end
      end
    end
  end

  def feed_fish
    @pets.each do |key, value|
      if key == :fishes
      value.each do |fish|
        fish.mood = "happy"
      end
      end
    end
  end

  def sell_pets
    @pets.each do |key, value|
      value.each do |pet|
        pet.mood = "nervous"
      end
      end
      @pets.clear
    end

    def list_pets
      "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    end

end
