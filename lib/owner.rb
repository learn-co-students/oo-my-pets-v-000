class Owner
  attr_reader :species
  attr_accessor :name, :pets
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
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def sell_pets
    pets.values.each do |value|
      value.each {|pet| pet.mood = "nervous"}
      value.clear
    end
  end

  def list_pets
    output = "I have "

    pets.each do |kind, array|
      if kind == :fishes
        output += "#{array.size} fish, "
      elsif kind == :dogs
        output += "#{array.size} dog(s), "
      else
        output += "and #{array.size} cat(s)."
      end
    end

    output
  end

end
