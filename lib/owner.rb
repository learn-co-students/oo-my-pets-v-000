class Owner
  require 'pry'

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []
  @@owner_count = 0

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners = []
    @@owners.count
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = 'happy'}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = 'happy'}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = 'happy'}
  end

  def sell_pets
    pets.each do |type, animals|
      animals.each do |animal|

        animal.mood = 'nervous'

      end
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
