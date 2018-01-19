require 'pry'
class Owner
attr_accessor :owner, :name, :pets
attr_reader :species
@@all = []
@@count = 0

def initialize(name)
  @name = name
  @pets = {:fishes => [], :dogs => [], :cats => []}
  @owner = owner
  @species = species
  @@all << self
  @@count += 1
end

def self.count
  @@count
end
def self.owner
@@all
end

def self.all
  @@all
end
def self.reset_all
  @@count = 0
end
def species
  @species = "human"
end
def say_species
 "I am a human."
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
      pets.each do |type, all_pet|
        all_pet.each do |friend|
          friend.mood = "nervous"
end
all_pet.clear
end
end
def list_pets
  fish_count = pets[:fishes].count
  cat_count = pets[:cats].count
  dog_count = pets[:dogs].count
  "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
end
end
