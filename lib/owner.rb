require'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes:[], dogs:[], cats:[]}
    save
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def save
    @@all << self
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    new_animal=Fish.new(name)
    @pets[:fishes]<<new_animal
  end

  def buy_dog(name)
    new_animal=Dog.new(name)
    @pets[:dogs]<<new_animal
  end

  def buy_cat(name)
    new_animal=Cat.new(name)
    @pets[:cats]<<new_animal
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].each {|dog| dog.mood='happy'}
  end

  def feed_fish
    @pets[:fishes].each {|dog| dog.mood='happy'}
  end

  def sell_pets
    @pets.each_value {|animals| animals.each{|animal| animal.mood='nervous'}}
    @pets=self.pets.each{|key,value| value.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
