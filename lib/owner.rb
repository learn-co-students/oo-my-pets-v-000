class Owner
  # code goes here
  attr_accessor :name, :owners, :pets
  attr_reader :species

    @@all = []

    def initialize(species)
      @name = name
      @owners = []
      @pets = {fishes: [], cats: [], dogs: []}
      @@all << self
      @species = species
    end


    def self.all
      @@all
    end

    def self.reset_all
      @@all.clear
      @@all
    end

    def self.count
      @@all.count
    end

    ##INSTANCE methods

    def say_species
      "I am a #{@species}."
    end

    def buy_fish(fish)
      new_fish = Fish.new(fish)
      @pets[:fishes] << new_fish
    end

    def buy_cat(cat)
      new_cat = Cat.new(cat)
      @pets[:cats] << new_cat
    end

    def buy_dog(dog)
      new_dog = Dog.new(dog)
      @pets[:dogs] << new_dog
    end

    def walk_dogs
      @pets[:dogs].each do |dog|
        dog.mood = "happy"
      end
    end

    def play_with_cats
      @pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      @pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets
      @pets.each do |species, animals|
        animals.each do |animal|
          animal.mood = "nervous"
        end
        animals.clear
      end
    end

    def list_pets
      "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    end


end
