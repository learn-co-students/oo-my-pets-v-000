class Owner
  require 'pry'
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
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
    self.pets[:dogs]. each { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats]. each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes]. each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |pet_type, pets|
      pets.each { |pet| pet.mood = 'nervous'}
      pets.clear
    end
  end

  def list_pets
    pets_list = ["I have "]
    self.pets.sort.reverse.each do |pet_type, pets|
      if pet_type == :fishes
        pets_list << "#{pets.count} fish, "
      elsif pet_type == :dogs
        pets_list << "#{pets.count} dog(s), "
      elsif pet_type == :cats
        pets_list << "and #{pets.count} cat(s)."
      end
    end
    pets_list.join
  end


end

owner = Owner.new('human')
owner.species
