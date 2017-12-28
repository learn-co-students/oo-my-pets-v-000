class Owner
  # Class methods
    # keeps track of the owners that have been created
    # can count how many owners have been created
    # can reset the owners that have been created
    # can initialize an owner
    attr_accessor :name, :pets

    @@all = []

    def initialize(name)
      #Keep track of all owners that have been created
      @name = name
      @@all << self
      @pets = {:fishes => [], :dogs => [], :cats => []}
    end

    def self.all
      # Owner class can count how many how many owners have been created
      @@all
    end

    def self.reset_all
      # Owner class can clear all the owners of the class
      @@all.clear
    end

    def self.count
      # Owner class method can count how many owners have been created
      @@all.count
    end

    def species
      # Owner instance method that initializes with a species
      # Instance method returns the name to the object because that's the species
      self.name
    end

    def say_species
      #Owner instance method can say it's species
      "I am a #{self.species}."
    end

    # def pets
    #   # Instance method is initialized witha pets attribute as a hash with 3 keys
    #   # We get the 3 keys from the animals variable the class initializes
    #   self.animals
    # end

    def buy_fish(name)
      # Owner instance can buy a fish that is an instance of the Fish class
      # Creates a new Fish object for the fish being bought and add that to the owner's pets.
      fish = Fish.new(name)
      self.pets[:fishes] << fish
    end

    def buy_cat(name)
      # Instance method can buy a cat that is an instance of the Cat class
      # Creates a new cat class and add that to the owner's pets hash
      cat = Cat.new(name)
      self.pets[:cats] << cat
    end

    def buy_dog(name)
      #Instance method can buy a dog that is an instance of the Dog class
      # Creates a new dog class and adds that to the owner's pets hash
      dog = Dog.new(name)
      self.pets[:dogs] << dog
    end

    def walk_dogs
      # Instance method changes the dogs mood from "nervous" to "happy"
      # Iterates through the dog array in the pets hash to change the dog's mood.
      self.pets[:dogs].each { |dog| dog.mood = "happy" }
    end #method

    def play_with_cats
      # Instance method changes cats mood from "nervous to "happy"
      # Iterates through the cats array in the pets hash to change the cat's mood.
      self.pets[:cats].each { |cat| cat.mood = "happy" }
    end #method

    def feed_fish
      # Instance method changes the fish's mood from "nervous" to "happy"
      # Iterates through the fish array in the pets hash to change the fish's mood
      self.pets[:fishes].each { |fish| fish.mood = "happy" }
    end #method

    def sell_pets
      # Instance method changes all of the animals mood to nervous
      # Iterate through the hash to get the key = animals and value = the array.
      # Iterate through the value = array to get the pet and change it's mood to nervous.
      # After going through the whole hash clear it to get rid of all the pets.
      self.pets.each do |animals, array|
        array.each do |pet|
          pet.mood = "nervous"
        end #array each
      end #each
      self.pets.clear
    end #method

    def list_pets
      # Instance method can list off its pets
      # It prints out a string saying how many fish, dogs, and cats the owner has.
      # It uses the amount of values in the array to get the count and tell how many of the specific pet the owner has.
      "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
    end
end
