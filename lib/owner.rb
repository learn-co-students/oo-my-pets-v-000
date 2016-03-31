require 'pry'
class Owner
  # code goes here
      attr_accessor :name, :pets
      attr_reader :species
  @@owners = []

  def initialize(owner, species = "human")
        @@owners << self
        @species = species
        @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@owners
  end

    def self.count
        self.all.count
    end

  def self.reset_all
    self.all.clear

  end

  def say_species
    "I am a #{self.species}."
  end

    def buy_fish(fish)
       new_fish_instance = Fish.new(fish)
       self.pets[:fishes] << new_fish_instance
    end

     def buy_cat(cat)
       new_cat_instance = Cat.new(cat)
       self.pets[:cats] << new_cat_instance
    end

    def buy_dog(dog)
       new_dog_instance = Dog.new(dog)
       self.pets[:dogs] << new_dog_instance
    end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end


def sell_pets
# binding.pry
    #self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
          fish_count = pets[:fishes].count
          dog_count = self.pets[:dogs].size
          cat_count = self.pets[:cats].size
      "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."

  end

end


#binding.pry