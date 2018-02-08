
class Owner
@@all = []
@@owner_count = 0
  attr_accessor :pets, :name, :fish, :cat, :dog

  def initialize(name)
    @name = name
    @@all << self
    @@owner_count +=1
    @pets = {fishes: [], cats: [], dogs: []}
    @species
  end

  def self.all
    @@all
  end

  def self.count
    @@owner_count
  end

  def self.reset_all
    @@owner_count = 0
    self.all.clear
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat|cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish|fish.mood="happy"}
  end

  def sell_pets
    @pets.each do |animals, pet|
      pet.each do |pet|
        pet.mood="nervous"
        end
      end
      @pets.clear
    end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
