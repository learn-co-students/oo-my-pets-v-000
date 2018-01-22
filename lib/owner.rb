class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@owners = []

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.size
  end

  def initialize(name, species="human")
    @species = species
    @@owners << self
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

def say_species
  "I am a #{species}."
end

def buy_fish(pet_name)
  fish = Fish.new(pet_name)
  @pets[:fishes] << fish
end

def buy_cat(pet_name)
  cat = Cat.new(pet_name)
  @pets[:cats] << cat
end

def buy_dog(pet_name)
  dog = Dog.new(pet_name)
  @pets[:dogs] << dog
end

def walk_dogs
  self.pets[:dogs].each do |dog|
  dog.mood = "happy"
end
end

def play_with_cats
  self.pets[:cats].each do |cat|
  cat.mood = "happy"
end
end

def feed_fish
  self.pets[:fishes].each do |fish|
  fish.mood = "happy"
end
end

def sell_pets
  self.pets.each do |species, animals|
    animals.each do |animal|
      animal.mood = "nervous"
    end
    animals.clear
end
end

def list_pets
         num_fish = self.pets[:fishes].count
+        num_dogs = self.pets[:dogs].count
+        num_cats = self.pets[:cats].count
+        "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
end


end
