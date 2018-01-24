require 'pry'

class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
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
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    #binding.pry
  end

  def walk_dogs
    @pets[:dogs].collect {|dog| dog.mood = "happy"}
  end 

  def play_with_cats
    @pets[:cats].collect {|cat| cat.mood = "happy"}
  end 

  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species, pets_arr|
      #binding.pry
      pets_arr.collect {|pet| pet.mood = "nervous"}
      pets_arr.clear
    end
  end

  def list_pets
    fish_num = @pets[:fishes].length
    dog_num = @pets[:dogs].length
    cat_num = @pets[:cats].length

    # cat_num > 1 ? cat_plural = "cats" : cat_plural = "cat"
    # dog_num > 1 ? dog_plural = "dogs" : dog_plural = "dogs"

    "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
  end
  
end#class Owner