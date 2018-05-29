class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def self.all
    @@all
  end

    def initialize(species)
      @species = species
      @@all << self
      @pets = {fishes: [], cats: [], dogs: []}
    end

    def say_species
      "I am a #{@species}."
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
      pets[:dogs].each {|dog| dog.mood = "happy"}
    end

    def play_with_cats
      pets[:cats].each {|cat| cat.mood = "happy"}
    end

    def feed_fish
      pets[:fishes].each {|fish| fish.mood = "happy"}
    end

    def sell_pets
      pets.collect do |species, species_instances|
        species_instances.each {|pet| pet.mood = "nervous"}
        species_instances.clear
      end
    end

    def list_pets
      num_cats = @pets[:cats].count
      num_dogs = @pets[:dogs].count
      num_fishes = @pets[:fishes].count
      "I have #{num_fishes} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
    end

  end
