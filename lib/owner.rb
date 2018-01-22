class Owner
  attr_accessor :name, :pets
  attr_reader :species

@@all = []
def self.all
  @@all
end

def self.count
 @@all.size
end

def self.reset_all
    self.all.clear
end

  def initialize(species)
    @species=species
    @@all << self
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end

  def say_species
    "I am a #{species}."
  end

def buy_fish(name)
    pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
    pets[:cats] << Cat.new(name)
end

def buy_dog(name)
     pets[:dogs] << Dog.new(name)
end

def walk_dogs
  pets[:dogs].each do |dog|
  dog.mood = "happy"
end
end

def play_with_cats
  pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
    pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
   pets.each do |type, pets|
        pets.each do |o|
          o.mood = "nervous"
      end
    pets.clear
  end
end

def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end



end
