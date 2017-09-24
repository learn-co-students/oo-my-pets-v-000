class Owner
    # code goes here 
    @@all = []
    
    attr_reader :species
    attr_accessor :pets, :name
    
    
    def initialize(name)
        @pets = {fishes: [], cats: [], dogs: []}
        @name = name
        @species = "human"
        @@all << self
    end
    
    def say_species
        "I am a human."
    end
    
    def buy_cat(name)
        @pets[:cats] << Cat.new(name)
    end
    
    def buy_dog(name)
        @pets[:dogs] << Dog.new(name)
    end
    
    def buy_fish(name)
        @pets[:fishes] << Fish.new(name)
    end
    
    def walk_dogs
        @pets[:dogs].each {|dog| dog.mood = "happy"}
    end
    
    def play_with_cats
        @pets[:cats].each {|cat| cat.mood = "happy"}
    end
    
    def feed_fish
        @pets[:fishes].each {|fish| fish.mood = "happy"}
    end
    
    def list_pets
        num_cats = @pets[:cats].length
        num_dogs = @pets[:dogs].length
        num_fishes = @pets[:fishes].length
        
        "I have #{num_fishes} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
    end
    
    def sell_pets  
        @pets.each do |key, value|
            value.each {|pet| pet.mood = "nervous"}
        end
        
        @pets[:dogs] = []
        @pets[:cats] = []
        @pets[:fishes] = []
    end
    
    def self.all
        @@all
    end
    
    def self.count
        @@all.length
    end
    
    def self.reset_all
        @@all = []
    end
end
