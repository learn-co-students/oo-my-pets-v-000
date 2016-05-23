require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :owner, :species

  @@all = []

  def initialize(owner)
    @owner = owner
    @species = "human"
    @@all << self unless @@all.include?(self)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    # @pets[:fishes] = []
    # @pets[:dogs] = []
    # @pets[:cats] = []
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
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
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
    # animals = []
    # self.pets.each {|type, pets_array| animals << "#{pets[type].size}"}
    # fish_part = animals[0].gsub("fishes", "fish") || "no fish"
    # dog_part = animals[1].gsub("dogs", "dog(s)") || "no dog(s)"
    # cat_part = animals[2].gsub("cats", "cat(s)") || "no cat(s)"
    # parts = "I have #{fish_part}, #{dog_part}, and #{cat_part}."
    # parts
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
