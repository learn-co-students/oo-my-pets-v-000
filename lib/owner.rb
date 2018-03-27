require 'pry'

class Owner
attr_accessor :name, :pets
attr_reader :species

@@owners = []

#owner methods

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners << self
end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@owners.each {|owner| puts owner}
  end

  def self.count
    @@owners.size
  end

  def self.reset_all
    @@owners.clear
  end

  def sell_pets
    pet_moods = self.pets.each do |type, pets|
      pets.each {|pet| pet.mood = "nervous"}
    end
    self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  #pet methods

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

end
