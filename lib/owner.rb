require'pry'
class Owner
    # code goes here
    @@all = []

    attr_accessor  :name, :pets
    attr_reader :species

    def initialize(species)
        @species = species
        @pets = {:fishes => [], :dogs => [], :cats => []}
        @@all << self
    end

    def name=(name)
        @name = name
    end

    def say_species
        "I am a #{species}."
    end

    def buy_fish(name)
        fish = Fish.new(name)
        fish.owner = self
        pets[:fishes] << fish
    end

    def buy_cat(name)
        cat = Cat.new(name)
        cat.owner = self
        pets[:cats] << cat
    end

    def buy_dog(name)
        dog = Dog.new(name)
        dog.owner = self
        pets[:dogs] << dog
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
        pets.each {|species, pets| pets.each {|pet| pet.mood = "nervous"}}
        pets.clear
    end

    def list_pets
        # binding.pry
        a, b, c = pets.values
        "I have #{a.count} fish, #{b.count} dog(s), and #{c.count} cat(s)."
    end

    def self.all
        @@all
    end

    def self.reset_all
        @@all.clear
    end

    def self.count
        @@all.count
    end

end
