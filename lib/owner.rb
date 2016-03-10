require 'pry'

class Owner

    attr_accessor :name, :mood, :pets #:count
    attr_writer
    attr_reader :species

    @@all = []
    @@count = 0


    def initialize(name)
        @name = name
        @species = "human"
        @pets = {fishes: [], cats: [], dogs: []}
        @@all << self
        @@count += 1
    end

    def self.count
        @@count
    end

    def say_species
      "I am a #{species}."
    end

#     def pets
#       @pets #= {fishes: [], cats: [], dogs: []}
#     end

    def buy_fish(name)
      fish = Fish.new(name)
      @pets[:fishes] << fish  #Fish.new(name)
    end

    def count_fish
      @pets[:fishes].count
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
       @pets.collect do |k, v|
         v.collect do |p|
          p.mood = "happy"
         end
       end

    end
#binding.pry
    def play_with_cats
      @pets.collect do |k, v|
         v.collect do |p|
          p.mood = "happy"
         end
       end
    end

    def feed_fish
       @pets.collect do |k, v|
         v.collect do |p|
          p.mood = "happy"
         end
       end
    end

    def sell_pets
       @pets.collect do |k, v|
         v.collect do |p|
          p.mood = "nervous"
         end
       end
      @pets = []
    end

    def mood
      @mood # = "happy"
    end

    def list_pets
      "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    end

    def self.all
        @@all
    end

    def self.reset_all
       @@count = 0
    end

end