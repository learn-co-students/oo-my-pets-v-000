require 'pry'
class Owner
attr_accessor :pets, :name
attr_reader  :species
@@owners=[]


def initialize(name)
  @name=name
  @@owners<<self
  @pets={fishes: [], cats: [], dogs: []}
  @species="human"
end

def self.all
  @@owners
end

def self.reset_all
@@owners=[]
end

def self.count
  @@owners.count
end

def say_species
"I am a #{@species}."
end

def buy_fish(name)
   @pets[:fishes]<<Fish.new(name)
end

def buy_cat(name)
   @pets[:cats]<<Cat.new(name)
end

def buy_dog(name)
   @pets[:dogs]<<Dog.new(name)
end

def walk_dogs
  @pets[:dogs].each do |dog|
   dog.mood="happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood="happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood="happy"
  end
end

def sell_pets
  @pets.each_pair do |species, value|
    value.each do |pet|
      pet.mood="nervous"
      @pets={fishes: [], cats: [], dogs: []}
    end
  end
end
def list_pets
 fish_num= @pets[:fishes].count
 cat_num= @pets[:cats].count
 dog_num= @pets[:dogs].count
 "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
end

end