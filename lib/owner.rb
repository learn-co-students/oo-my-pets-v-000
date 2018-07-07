class Owner
attr_accessor :name, :pets
attr_reader :species
@@all = []

  def initialize(name)
    @@all << self
    @species = "human"
    @pets = {fishes: [],
              dogs: [],
              cats: []
            }
  end

  def self.all
    @@all
  end

  def self.reset_all
      @@all.clear
  end

  def self.count
    self.all.length
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
  new_fish = Fish.new(name)
  self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
  new_cat = Cat.new(name)
  self.pets[:cats] << new_cat
  end

  def buy_dog(name)
  new_dog = Dog.new(name)
  self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each  {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end


def list_pets
  "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
end

end
