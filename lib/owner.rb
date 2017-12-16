class Owner
attr_accessor :pets, :name
attr_reader :species

Owner = []

def initialize(species)
  @species = species
  @pets = {
    :fishes => [],
    :cats => [],
    :dogs => []
  }

  Owner << self

end

def self.all
  Owner
end

def self.count
  Owner.size
end

def self.reset_all
  Owner.clear
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
  pets[:dogs].map do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  pets[:cats].map do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  pets[:fishes].map do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  pets.map do |pets, sold_pets|
    sold_pets.map do |sold_pets|
      sold_pets.mood = "nervous"
    end
    sold_pets.clear
  end
end

def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end
end
