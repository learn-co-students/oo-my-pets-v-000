class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

    def initialize(name)
      @name = name
      @@all << self
      @species = self.name
      @pets = {:fishes => [], :dogs => [], :cats => []}
    end

    def self.all
      @@all
    end

    def self.reset_all
      @@all.clear
    end

    def self.count
      @@all.size
    end

    def say_species
      if self.name
        "I am a #{self.name}."
      end
    end

    def buy_fish(name)
      fish = Fish.new(name)
      self.pets[:fishes] << fish
    end

    def buy_cat(name)
      cat = Cat.new(name)
      self.pets[:cats] << cat
    end

    def buy_dog(name)
      dog = Dog.new(name)
      self.pets[:dogs] << dog
    end

    def walk_dogs
      self.pets[:dogs].each {|m| m.mood = "happy"}
    end

    def play_with_cats
      self.pets[:cats].each {|m| m.mood = "happy"}
    end

    def feed_fish
      self.pets[:fishes].each {|m| m.mood = "happy"}
    end

    def sell_pets
      self.pets.each do |type, animals|
         animals.each do |pet|
             pet.mood = "nervous"
          end
        animals.clear
      end
    end

    def list_pets
      f = self.pets[:fishes].count
      c = self.pets[:cats].count
      d = self.pets[:dogs].count

      result = "I have #{f} fish, #{d} dog(s), and #{c} cat(s)."
      result
    end

end # => End Owner Class
