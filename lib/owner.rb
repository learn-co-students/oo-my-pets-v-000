class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@owners = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@owners << self

  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
      @pets [:fishes] << Fish.new(fish) #can buy a fish that is an instance of the Fish class and knows about its fishes.
  end

  def buy_cat(cat)
      @pets [:cats] << Cat.new(cat) #can buy a cat that is an instance of the Fish class and knows about its cats.
  end

  def buy_dog(dog)
      @pets [:dogs] << Dog.new(dog) #can buy a dog that is an instance of the Fish class and knows about its dogs.
  end

  def walk_dogs
      @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
      @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
      @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
     self.pets.each do |i, pets|
       pets.each do |pet|
         pet.mood = "nervous"
       end
     end
     self.pets.clear
   end

  def list_pets

    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
