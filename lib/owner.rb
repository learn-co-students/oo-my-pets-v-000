class Owner
  
    attr_accessor :name, :pets 
    attr_reader :species
    
    @@all = []
    
    def initialize(name)
        @name = name
        @species = "human"
        @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def self.reset_all
        @@all = []
    end
    
    def self.count
        @@all.count
    end
    
    def say_species
        "I am a #{self.species}."
    end
    
    def buy_fish(name)
        self.pets[:fishes] <<Fish.new(name)
    end
    
    def buy_cat(name)
        self.pets[:cats] << Cat.new(name)
    end
    
    def buy_dog(name)
        self.pets[:dogs] << Dog.new(name)
    end
    
    def walk_dogs
        self.pets[:dogs].each {|x| x.mood = "happy"}
    end
    
    def play_with_cats
        self.pets[:cats].each {|x| x.mood = "happy"} 
    end
    
    def feed_fish
        self.pets[:fishes].each {|x| x.mood = "happy"}
    end
    
    def sell_pets
        self.pets[:dogs].each {|x| x.mood = "nervous"}
        self.pets[:cats].each {|x| x.mood = "nervous"}
        self.pets[:fishes].each {|x| x.mood = "nervous"}
        self.pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    end
    
    def list_pets
        "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
    end
    
    
    
end