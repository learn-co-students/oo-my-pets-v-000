class Owner
  # code goes here
  	@@owner = []
  	attr_accessor :pets, :name
  	attr_reader :species

  def self.all
   	@@owner
  end

  def self.reset_all
    @@owner.clear
  end

  def self.count
    @@owner.length
  end


  def initialize(species)
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @species = species
    @@owner << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
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
    pets.each do |pet_type, name|
      name.each do |pet|
        pet.mood = "nervous"
      end
      name.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end



  

end