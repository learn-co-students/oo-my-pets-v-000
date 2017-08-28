require 'pry'
class Owner
  attr_accessor :owner, :name, :pets
  attr_reader :species
  @@all = []




  def initialize(species)
    # binding.pry
    @species = species
    @owner = []
    @@all << self
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  def self.all
    @@all
  end

  def species
    @species
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
   "I am a #{self.species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    self.pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    pets_name = self.pets[:dogs]
    # binding.pry
    pets_name.each {|i| i.mood = "happy"}
  end

  def play_with_cats
    pets_name = self.pets[:cats]
    pets_name.each {|i| i.mood = "happy"}
  end

  def feed_fish
    pets_name = self.pets[:fishes]
    pets_name.each {|i| i.mood = "happy"}
  end

  def sell_pets

      arr= self.pets.keys.map {|i|self.pets[i]}
      arr1 = arr.each {|i| i}.flatten
      arr2 = arr1.collect {|m| m.mood = "nervous"}
      arr3 = arr.map {|a| a.clear}
  end

  def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
# binding.pry
