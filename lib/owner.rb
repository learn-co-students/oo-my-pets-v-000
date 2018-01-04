require 'pry'

class Owner
    
    attr_accessor :name, :pets #name can have a name & #pets is initialized
    attr_reader :species #can't change its species
    @@all = []
    
    def initialize(name) #can initialize owner
        @name = name
        @@all << self # keeps track of the owners that have been created can count how many owners have been created
        @pets = {fishes: [], cats: [], dogs: []} #pets attribute as a hash with 3 keys
    end
    
    def self.all
        @@all
    end

    def self.reset_all #can reset the owners that have been created
        @@all.clear
    end

    def self.count
        self.all.count
    end

    def species #initializes with a species
        @name
    end

    def say_species
        "I am a #{species}." #can say its species
    end

    def buy_fish(name)
        @pets[:fishes] << Fish.new(name) #can buy a fish that is an instance of the Fish class knows about its fishes
    end

    def buy_cat(name)
        @pets[:cats] << Cat.new(name)
    end

    def buy_dog(name)
        @pets[:dogs] << Dog.new(name)
    end

    def walk_dogs
        @pets[:dogs].each do |dog|
            dog.mood = "happy" #walks the dogs which makes the dogs' moods happy
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
        @pets.each do |pet, value|
            value.each  do |animal|
                animal.mood = "nervous"
        end
        end
        @pets = {fishes: [], cats: [], dogs: []}
    end

    def list_pets
         "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    end

end
