require 'pry'

class Owner

  attr_accessor :name, :pets, :mood
  attr_reader :species
  @@owners = []

  def initialize(name)
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @species = 'human'
    @@owners << self

  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners.clear
  end

  def species
    @species
  end

  def say_species
   "I am a #{@species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    @fish = fish
    @pets[:fishes] << @fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    @cat = cat
    @pets[:cats] << @cat
  end

  def buy_dog(dog)

    dog = Dog.new(dog)
    @dog = dog
    @pets[:dogs] << @dog
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }

  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.each do |type, array|
      array.each {|one|  one.mood = "nervous" }
      array.clear
    end
  end

  def list_pets
    count = []
    @pets.each do |type, array|
      count << array.length
    end
    "I have #{count[0]} fish, #{count[1]} dog(s), and #{count[2]} cat(s)."
  end
end
