class Owner
  # code goes here
  attr_accessor :name , :pets
  attr_reader :species
  @@all = []
  def initialize (species)
    @@all << self
    @species = species
    @pets = {dogs: [], fishes: [], cats: [] }
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
    if self.species == "species"
      "species"
    else
      "I am a human."
    end
  end
  def buy_fish(x)
    x = Fish.new(x)
    @pets[:fishes] << x
  end

  def buy_cat (x)
    x = Cat.new(x)
    @pets[:cats] << x
  end
  def buy_dog (x)
    x = Dog.new(x)
    @pets[:dogs] << x
  end
  def walk_dogs
    pets[:dogs].each do |dog|
    dog.mood= "happy"
  end
end
def play_with_cats
  pets[:cats].each do |cats|
  cats.mood= "happy"
end
end

def feed_fish
  pets[:fishes].each do |fish|
  fish.mood= "happy"
end
end
  def sell_pets
    pets.each do |type, animal|
      animal.each do |animals|
        animals.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pest
     "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
