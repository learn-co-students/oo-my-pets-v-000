class Owner
  attr_accessor :pets, :name
  attr_reader :species

    @@all = []

    def initialize(species)
      @pets = {fishes: [], cats: [], dogs: []}
      @@all << self
      @species = species
    end

    # class methods
    def self.all
      @@all
    end

    def self.count
      self.all.length
    end

    def self.reset_all
      self.all.clear
    end

    # instance methods
    def say_species
      return "I am a #{species}."
    end

# pets = {fishes: [], cats: [], dogs: []}
    def buy_fish(name)
      fish = Fish.new(name)
      pets[:fishes] << fish
    end

    def buy_cat(name)
      cat = Cat.new(name)
      pets[:cats] << cat
    end

    def buy_dog(name)
      dog = Dog.new(name)
      pets[:dogs] << dog
    end

    def walk_dogs
      pets[:dogs].each do |dog|
        dog.mood = "happy"
      end
    end

    def play_with_cats
      pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end



end
