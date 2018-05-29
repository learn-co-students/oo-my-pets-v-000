class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = [] #keeps track of all the owners

  def self.count #number of owners
    @@all.count
  end

  def self.reset_all #reset owner array
    @@all.clear
  end

  def self.all #recall array of owners
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
      @pets.collect do |species, species_instances|
        if species = :dogs
          species_instances.each {|dog| dog.mood = "happy"}
        end
      end
    end

    def play_with_cats
      @pets.collect do |species, species_instances|
        if species = :cats
          species_instances.each {|cat| cat.mood = "happy"}
        end
      end
    end

    def feed_fish
      @pets.collect do |species, species_instances|
        if species = :fishes
          species_instances.each {|fish| fish.mood = "happy"}
        end
      end
    end

    def sell_pets
      @pets.collect do |species, species_instances|
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
