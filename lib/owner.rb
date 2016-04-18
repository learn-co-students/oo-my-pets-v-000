require 'pry'

class Owner

attr_accessor :pets, :name, :mood
attr_reader :species

@@all = []

def initialize(name)
@pets = {:fishes => [], :cats => [], :dogs => []}
@name = name
@@all << self
@species = "human"
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

def say_species
return "I am a #{@species}."
end

def buy_fish(name)

  new_fish = Fish.new(name)
  @pets[:fishes] << new_fish

end

def buy_cat(name)
  new_cat = Cat.new(name)
  @pets[:cats] << new_cat
end

def buy_dog(name)
  new_dog = Dog.new(name)
  @pets[:dogs] << new_dog
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
self.pets[:fishes].each {|x| x.mood = "nervous"}
self.pets[:dogs].each {|x| x.mood = "nervous"}
self.pets[:cats].each {|x| x.mood = "nervous"}
self.pets.clear
end

def list_pets
fish_count = self.pets[:fishes].count
dog_count = self.pets[:dogs].count
cat_count = self.pets[:cats].count
return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."


end


end