

class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []


  def initialize(name="Bobby",species="human")
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def walk_dogs
    @pets[:dogs].each do |mood|
      mood.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |mood|
      mood.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |mood|
      mood.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do|pet_type, pets|
      pets.each do |object|
        object.mood = "nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    a = []
    @pets.each do|pet_type, pets|
      a << pets.count
    end
    "I have #{a[0]} fish, #{a[2]} dog(s), and #{a[1]} cat(s)."
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

end