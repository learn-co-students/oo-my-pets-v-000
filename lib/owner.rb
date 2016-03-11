require 'pry'

class Owner
  # code goes here

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
      }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def say_species
       #Failure/Error: expect(owner.say_species).to eq("I am a human.")
       #expected: "I am a human."
       #     got: "I am human"
       #tried using puts before this, but the test was failing
    return "I am a #{species}."
  end


  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish

  end

    def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

    def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    #interesting note, you cant change the values in a hash by saying something like hash.values =
    pets.values.each do |animal_list|
      animal_list.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
    #why wont this work if you just use pets instead of @pets?
    #binding.pry
  end

  def list_pets
    return "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end