class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(name)
    @species = "human"
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all.clear
    @@count -= @@count
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].map{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map{|fish| fish.mood = "happy"}
  end

  def sell_pets
    # @pets.each{|pet| pet.map{|animal| animal.mood = "nervous"}}
    @pets[:dogs].map{|dog| dog.mood = "nervous"}
    @pets[:cats].map{|cat| cat.mood = "nervous"}
    @pets[:fishes].map{|fish| fish.mood = "nervous"}

    @pets.each_value{|type| type.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end



  # def species(species)
  #   @species = species
  # end
end
