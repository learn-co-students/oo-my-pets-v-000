class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species,pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @pets = pets
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
  return  "I am a #{@species}."
  end

  def name
    @name
  end

  def buy_fish(name_of_fish)
    @pets[:fishes] << Fish.new(name_of_fish)
  end

  def buy_dog(name_of_dog)
    @pets[:dogs] << Dog.new(name_of_dog)
  end

  def buy_cat(name_of_cat)
    @pets[:cats] << Cat.new(name_of_cat)
  end

  def walk_dogs
  pets[:dogs].map {|dog| dog.mood = "happy"}
end

def play_with_cats
  pets[:cats].map {|cat| cat.mood = "happy"}
end

def feed_fish
   pets[:fishes].map {|fish| fish.mood = "happy"}
end

def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end

def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end
