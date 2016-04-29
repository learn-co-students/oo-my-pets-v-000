class Owner
  attr_accessor :name, :pets
  attr_reader :species
  OWNERS = []

  def initialize(name)
    @name = name
    OWNERS << self unless OWNERS.include?(self)
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    OWNERS
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.count
    OWNERS.size
  end

  def species
    @species = "human"
  end

  def say_species
    return "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    pets[:cats][0].mood = "happy"
  end

  def feed_fish
    pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    pets.each do |type, companions|
      companions.each do |companion|
        companion.mood = "nervous"
      end
      companions.clear
    end
  end

  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end