require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :owner, :species

  @@all = []

  def initialize(owner)
    @owner = owner
    @species = "human"
    @@all << self unless @@all.include?(self)
    @pets = {}
    @pets[:fishes] = []
    @pets[:dogs] = []
    @pets[:cats] = []
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    self.pets.each do |type, pets_array|
      pets_array.each { |pet| pet.mood = "nervous" }
      pets_array.clear
    end
  end

  def list_pets
    animals = []
    self.pets.each {|type, pets_array| animals << "#{pets[type].size} #{type}"}
    fish_part = animals[0].gsub("fishes", "fish") || "no fish"
    dog_part = animals[1].gsub("dogs", "dog(s)") || "no dog(s)"
    cat_part = animals[2].gsub("cats", "cat(s)") || "no cat(s)"
    parts = "I have #{fish_part}, #{dog_part}, and #{cat_part}."
    parts
  end

end
