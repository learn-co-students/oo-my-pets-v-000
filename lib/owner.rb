class Owner

@@all = []

attr_writer 
attr_reader :species
attr_accessor :name, :pets

def initialize(species)
  @species = species
  @@all << self
  @pets = {:fishes => [], :dogs => [], :cats=> []}
end

def self.all
  @@all
end

def self.count
  @@all.count
end

def self.reset_all
  @@all.clear
end

def say_species
 "I am a #{@species}."
end

def species
  @species
end

def pets
  @pets
end

def buy_fish(name)
  fish_bought = Fish.new(name)
  @pets[:fishes] << fish_bought
end

def buy_cat(name)
  cat_bought = Cat.new(name)
  @pets[:cats] << cat_bought
end

def buy_dog(name)
  dog_bought = Dog.new(name)
  @pets[:dogs] << dog_bought
end

def walk_dogs
  @pets[:dogs].each do |dog|
   dog.mood = "happy"
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
  
  @pets.each do |type, animal|
    animal.each do |specific_animal|
      specific_animal.mood = "nervous"
    end
  end
    @pets = {:fishes => [], :dogs => [], :cats=> []}

end

def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end

end