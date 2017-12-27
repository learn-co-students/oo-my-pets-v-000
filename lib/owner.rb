class Owner
    attr_accessor :pets, :name
    attr_reader :species
    
    @@all = []
  
    def initialize(species)
        @species = species
        @pets = {fishes: [], cats: [], dogs: []}
        @@all << self
    end
    # Class Methods 
    
    def self.all
        @@all
    end
    
    def self.count
        @@all.count    
    end
    
    def self.reset_all
        @@all.clear   
    end
    
    # Instance Methods
    def say_species
        "I am a #{self.species}."
    end
    
    def buy_fish(name)
        new_fish = Fish.new(name)
        self.pets[:fishes] << new_fish
    end
    
    def buy_cat(name)
        new_cat = Cat.new(name)
        self.pets[:cats] << new_cat
    end
    
    def buy_dog(name)
        new_dog = Dog.new(name)
        self.pets[:dogs] << new_dog
    end
    
    def walk_dogs
       self.pets[:dogs].each { |d| d.mood = "happy" }
    end
    
    def play_with_cats
        self.pets[:cats].each { |c| c.mood = "happy" } 
    end
    
    def feed_fish
       self.pets[:fishes].each { |f| f.mood = "happy" }
    end
    
    def sell_pets
        self.pets.each do |animal, pet|
            pet.each { |p| p.mood = "nervous" }
        end
        self.pets.clear
    end
    
    def list_pets
       "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)." 
    end
end