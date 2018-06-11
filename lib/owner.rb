require 'pry'
class Owner
  # code goes here
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def list_pets
    # i = 1
    # pet_list = "I have "
    # @pets.each do |pet, pet_array|
      # if @pets.length == 1 || i == 1
      #   pet_list << "#{pet_array.length} #{pet}(s)"
      #   i += 1
      # elsif i == @pets.length
      #   pet_list << "and #{pet_array.length} #{pet}(s)."
      # else
      #   pet_list << ", #{pet_array.length} #{pet}(s), "
      #   i += 1
      # end
    # end
    # pet_list

    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def sell_pets
    @pets.each do |pet, pet_array|
      pet_array.each{|pet| pet.mood = "nervous"}
      @pets[pet] = []
    end
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end
end
