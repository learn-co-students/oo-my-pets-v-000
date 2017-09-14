class Owner
  attr_accessor :name
  attr_reader :species
  attr_writer :pets

  @@owners = []

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end


  def buy_fish(name)
    name = Fish.new(name)
    self.pets[:fishes] << name
  end

  def buy_cat(name)
    name = Cat.new(name)
    self.pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    self.pets[:dogs] << name
  end

 def walk_dogs
   self.pets[:dogs].each {|dog| dog.mood = "happy"}
 end

 def play_with_cats
   self.pets[:cats].each {|cat| cat.mood = "happy"}
 end

 def feed_fish
   self.pets[:fishes].each {|fish| fish.mood = "happy"}
 end

 def sell_pets
  self.pets.each do |type, pets|
    pets.each {|pet| pet.mood = "nervous"}
 end
 self.pets.clear
end

 def list_pets
   "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."

 end

end
