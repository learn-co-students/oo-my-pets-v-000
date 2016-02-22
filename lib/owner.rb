class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all_owners = []

  def self.reset_all
    @@all_owners = []
  end

  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.length
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all_owners.push(self)
  end

  def say_species
    return "I am a " + @species + "."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes].push(fish)
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats].push(cat)
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs].push(dog)
  end

  def walk_dogs
    dogs = pets[:dogs]
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    cats = pets[:cats]
    cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    fishes = pets[:fishes]
    fishes.each do |fish|
      fish.mood = "happy"
    end
  end

  def list_pets
    f, d, c = [@pets[:fishes].length, @pets[:dogs].length, @pets[:cats].length]
    return "I have " + f.to_s + " fish, " + d.to_s + " dog(s), and " + c.to_s + " cat(s)."
  end

  def sell_pets
    @pets.each do |type, group|
      group.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

end
