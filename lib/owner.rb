require'pry'
class Owner

  attr_accessor :name, :pets, :mood
  attr_reader :species
  @@all = []


  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets[:dogs].map {|dog|dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map {|cat|cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map {|fish|fish.mood = "happy"}
  end

  def sell_pets
    @pets[:dogs].map {|dog|dog.mood = "nervous"}
    @pets[:cats].map {|cat|cat.mood = "nervous"}
    @pets[:fishes].map {|fish|fish.mood = "nervous"}
    @pets.clear
  end

  def list_pets
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
  
end
