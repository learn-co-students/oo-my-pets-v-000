require "pry"
class Owner
  
  attr_accessor :name, :pets
  attr_reader :species

  @@owner = []

  def initialize(species = "human")
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owner << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@owner
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
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
    pets[:dogs].each {|mutt| mutt.mood="happy"}
  end

  def play_with_cats
    pets[:cats].each {|feline| feline.mood="happy"}
  end

  def feed_fish
    pets[:fishes].each {|nemo| nemo.mood="happy"}
  end

  def sell_pets
    pets.each do |animals, collections| 
      collections.each do |names| 
        names.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end










# pets.each {|coll, animal| puts "my collection of #{coll}


# hash = {:students => ["Daniel", "Susan"], :teachers => ["Greenfield", "Cannon"]}
# hash.each {|a, b| puts b}



















