require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@count = 0
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @species = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets.each { |val, ind| self.pets[val] << fish  if val.to_s == "fishes" }

  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets.each { |val, ind| self.pets[val] << cat  if val.to_s == "cats" }

  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets.each { |val, ind| self.pets[val] << dog  if val.to_s == "dogs" }

  end

  def walk_dogs
    self.pets.each { |val, ind| self.pets[val][0].mood="happy"  if val.to_s == "dogs" }
    #binding.pry
  end

  def play_with_cats
    self.pets.each { |val, ind| self.pets[val][0].mood="happy"  if val.to_s == "cats" }
  end

  def feed_fish
    self.pets.each { |val, ind| self.pets[val][0].mood="happy"  if val.to_s == "fishes" }
  end

  def sell_pets

    self.pets.each do |val, ind|
      ind.each { |pets| pets.mood = "nervous" if pets.mood == "happy"}
    end
    self.pets.clear
    #binding.pry
  end

  def list_pets
    new_a = self.pets.collect { |vl,ind| ind.length}
    "I have #{new_a[0]} fish, #{new_a[1]} dog(s), and #{new_a[2]} cat(s)."
    #binding.pry
  end

end
