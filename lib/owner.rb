class Owner
  attr_accessor :pets
  attr_reader :species, :name
  # code goes here
  @@all = []

  def initialize(species)
    @@all << self
    @species = species
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  def name=(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each { |d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each { |c| c.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each { |f| f.mood = "happy"}
  end

  def sell_pets
    @pets.each do |pet_type, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end
      pet_array.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


end
