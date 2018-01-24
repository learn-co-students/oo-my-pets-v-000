class Owner

  attr_accessor :name, :pets
  attr_reader :species, :fish

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count

  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    return "I am a #{@species}."
  end

  def name
    @name
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)

  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)

  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
    puts "#{@pets}"
  end

  def walk_dogs
      @pets[:dogs].collect do |dog|
        dog.mood = "happy"
      end
  end

  def play_with_cats
      @pets[:cats].collect do |cat|
        cat.mood = "happy"
      end
  end

  def feed_fish
      @pets[:fishes].collect do |fish|
        fish.mood = "happy"
      end
  end

  def sell_pets
    @pets.collect do |pet_type, pet|
      pet.collect do |each_pet|
        each_pet.mood = "nervous"
      end
      pet.clear
    end
  end

  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
