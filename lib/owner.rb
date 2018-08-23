require 'pry'
class Owner
  attr_accessor :pets
  attr_reader :name, :species
  @@all = []

    def initialize(name)
      @name = name
      @species = "human"
      @pets = {fishes: [], cats: [], dogs: []}
      @@all << self
    end

    #it allows the instance of owner to change its name
    def name=(name)
      @name = name
    end

    #it can state it's own species
    def say_species
      "I am a #{self.species}."
    end

    # it creates a new class instance for fish and pushes it to the owners mathing array in the pet hash
    def buy_fish(fish)
      @pets[:fishes] << Fish.new(fish)
    end

    # it creates a new class instance for cat and pushes it to the owners mathing array in the pet hash
    def buy_cat(cat)
      @pets[:cats] << Cat.new(cat)
    end

    # it creates a new class instance for dog and pushes it to the owners mathing array in the pet hash
    def buy_dog(dog)
      @pets[:dogs] << Dog.new(dog)
    end

    #it sorts through the instance owner's dogs and updates their mood to happy
    def walk_dogs
      self.pets[:dogs].each {|dog| dog.mood = "happy"}
    end

    #it sorts through the instance owner's cats and updates their mood to happy
    def play_with_cats
      self.pets[:cats].each {|cat| cat.mood = "happy"}
    end

    #it sorts through the instance owner's fish and updates their mood to happy
    def feed_fish
      self.pets[:fishes].each {|fish| fish.mood = "happy"}
    end

    #it sorts through the pets hash and updates all pets moods to nervous
    def sell_pets
      self.pets.each do |species, pets|
        pets.each {|pet| pet.mood = "nervous"}
        pets.clear
      end
    end

    #it returns a phrase with a count of each pet that the instance of that owner has
    def list_pets
      "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
    end

    #class method returns a collection of all owners created
    def self.all
      @@all
    end

    #can count how many owners have been created so far
    def self.count
      @@all.each {|owners| owners}.count
    end

    #allows all previously created instances to be removed from class variable array
    def self.reset_all
      @@all.clear
    end
end
