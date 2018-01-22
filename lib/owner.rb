require 'pry'

class Owner
  attr_accessor :name, :owner, :pets, :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    @species = "human"
    save
  end

  def self.all #create owners
    @@all
  end

  def save #keep track of owners
    @@all<<self
  end

  def self.count
    @@all.size
  end

  def self.reset_all #can reset owners
    @@all.clear
  end

  def species=(species)
    if !name.nil?
        message = "Species has already been assigned."
        raise RuntimeError.new(message)
      else
        @species = species
      end
  end

  def say_species
    "I am a human."
  end

  def name
    @name
  end

  def buy_fish(name) #can buy a fish
    name = Fish.new(name)
    @pets[:fishes] << name #"Bubbles is added to fish array"
  end

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood="happy"}
  end

  def sell_pets
    @pets.each do |type, pet|
       pet.each{ |pet| pet.mood="nervous" }
           pet.clear
    end
  end

  def list_pets
    number_of_fish=@pets[:fishes].size
    number_of_dogs=@pets[:dogs].size
    number_of_cats=@pets[:cats].size
    "I have #{number_of_fish} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
        # binding.pry
    # end
 end

end
