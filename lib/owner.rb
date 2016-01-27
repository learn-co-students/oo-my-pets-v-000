class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
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

  def list_pets
    nums = @pets.collect do |pet, num|
      num.length
    end
    "I have #{nums[0]} fish, #{nums[1]} dog(s), and #{nums[2]} cat(s)."
  end

  def say_species
    "I am a #{@species}."
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def sell_pets
    @pets.each do |type, pet|
      pet.each do |name|
        name.mood = "nervous"
      end
      pet.clear
    end
  end

end
