require 'pry'

class Owner
  attr_accessor :name, :pets
  # code goes here
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
    @pets =  {fishes: [], dogs: [], cats: []}
  end
  def self.all
    @@all
  end
  def self.reset_all
    self.all.clear
  end
  def self.count
    self.all.size
  end
  def species
    species = "human"
    species
  end
  def say_species
    say_species = "I am a human."
    say_species
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish

  end
  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end
  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
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
    @pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"

      end
    end
    @pets.clear
  end
  def list_pets
    array = []
    @pets.each do |type, pets|
      if type.to_s == "fishes"
        array << "#{pets.size} #{type.to_s.chomp("es")}"
      end
      if type.to_s == "dogs"
        array << "#{pets.size} #{type.to_s.chomp("s")}(s)"
      end
      if type.to_s == "cats"
        array << "#{pets.size} #{type.to_s.chomp("s")}(s)"
      end
    end
    "I have #{array[0, array.length - 1].join(', ')}, and #{array.last}."
  end
end
