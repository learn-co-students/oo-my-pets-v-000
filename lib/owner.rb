class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self #keeps track of the owners that have been created
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count #can count how many owners have been created
  end

  def self.reset_all
    @@all.clear #can reset the owners that have been created
  end

  def say_species
    "I am a #{species}." #can say its species
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name) #knows about its fishes & can buy a fish that is an instance of the Fish class
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"} #changes mood to happy instead of nervous
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, animals| #iterates over key/value pair in pets hash
      animals.each do |animal| #iterates over the value array
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
