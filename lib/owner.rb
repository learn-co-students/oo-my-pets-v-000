class Owner
  # code goes here

  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

def initialize(name)
  @species = "human"
  @name = name
@@all << self
 @pets = {:fishes => [], :dogs => [], :cats => []}
end


def say_species
  "I am a #{@species}."
end


def self.all
  @@all
end



def self.count
  @@all.length
end

def self.reset_all
  @@all.clear
end

def buy_cat(cat_name)
   new_cat = Cat.new(cat_name)
    @pets[:cats]<<new_cat
 end

def buy_dog(dog_name)
  new_dog = Dog.new(dog_name)
  @pets[:dogs]<<new_dog
end

def buy_fish(fish_name)
  new_fish = Fish.new(fish_name)
  @pets[:fishes]<<new_fish
end

def walk_dogs
     @pets[:dogs].collect do |dog|
       dog.mood = "happy"
     end
   end

   def play_with_cats
     @pets[:cats].collect do |cat|
       cat.mood = "happy"
     end
   end

   def feed_fish
     @pets[:fishes].collect do |fish|
       fish.mood = "happy"
     end
   end

   def sell_pets
  @pets[:fishes].each do |fish|
     fish.mood = "nervous"
  end
   @pets[:fishes].clear

   @pets[:dogs].each do |dog|
     dog.mood = "nervous"
   end
   @pets[:dogs].clear

   @pets[:cats].each do |cat|
     cat.mood = "nervous"
   end
   @pets[:cats].clear
 end

   def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

def name
  @name
end


end
