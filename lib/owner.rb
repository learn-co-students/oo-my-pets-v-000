require "pry"
class Owner
  
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  
  def self.all
    @@all
  end

  def initialize species
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish name
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat name
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog name
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    self.pets.each do |species, pets|
      pets.map { |pet| pet.mood = "nervous" }
    end
    @pets = @pets.each { |species, pets| pets.clear }
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end








