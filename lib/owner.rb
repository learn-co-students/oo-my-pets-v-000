class Owner

attr_accessor :name, :pets
attr_reader :species

@@owners = []
@@owner_count = 0

def initialize(species)
  @species = species
  @pets = {fishes:[], dogs: [], cats: []}
  @@owners << self
  @@owner_count +=1
end

def self.all
  @@owners
end

def self.count
  @@owner_count
end

def self.reset_all
  @@owners.clear
  @@owner_count = 0
end

def say_species
  "I am a #{@species}."
end

def buy_fish(fish_name)
  fish = Fish.new(fish_name)
  @pets[:fishes] << fish
end

def buy_cat(cat_name)
  cat = Cat.new(cat_name)
  @pets[:cats] <<  cat
end

def buy_dog(dog_name)
  dog = Dog.new(dog_name)
  @pets[:dogs] << dog
end

def walk_dogs
  @pets[:dogs].each do |pet|
    pet.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |pet|
    pet.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |pet|
    pet.mood = "happy"
  end
end

def sell_pets
  pets.each do |species, animals|
    if species == :dogs
      animals.each {|dog| dog.mood="nervous"}
    elsif species == :cats
      animals.each {|cat| cat.mood="nervous"}
    else species == :fishes
      animals.each {|fish| fish.mood="nervous"}
      end
    end
    pets.clear
end

def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end

end
