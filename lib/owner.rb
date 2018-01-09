class Owner
    attr_accessor :name, :cat, :fish, :dog, :pets
    attr_reader :species  # code goes here
    @@all = []

    def initialize(species)
      @species = species
      @pets = {fishes: [], cats: [], dogs: []}
      #@owner_count =+ 1
      @@all << self
    end
    def self.count
      @@all.length
    end
    def self.all
      @@all
    end
    def self.reset_all
      @@all.clear.length
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
      @pets[:dogs][0].mood = "happy"
    end
    def play_with_cats
      @pets[:cats][0].mood = "happy"
    end
    def feed_fish
      @pets[:fishes][0].mood = "happy"
    end
    def sell_pets
    @pets.each do |key, values|
      values.each do |pet|
        pet.mood = "nervous"
        #need to interate over all pets, not induvidual
      end
    end
    @pets.clear
  end
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end
end
