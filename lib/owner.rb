require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :owner, :pets
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
    #values are stored in arrays, therefore we will shovel values in
  end

  def self.all
    @@all
  end

  def pets
    @pets
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    #could be one line as
    #@pets[:fishes]<<Fish.new(name)
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    #@pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    #@pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

=begin
///// literal version of keys and values
    def sell_pets
      pets.each do |keys, values|
        values.each do |value|
          value.mood = "nervous"
        end
        values.clear
      end
    end

/////hard-coding the answer//// instead, iterate like above
    @pets[:fishes].each {|x| x.mood = "nervous"}
    @pets[:cats].each {|x| x.mood = "nervous"}
    @pets[:dogs].each {|x| x.mood = "nervous"}
    @pets[:fishes].clear
    @pets[:cats].clear
    @pets[:dogs].clear
=end


  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end
