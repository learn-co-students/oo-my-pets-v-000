require 'pry'
class Owner
attr_accessor :pets, :name, :owner
attr_reader  :species
@@o_instances = []
@@count = 0
@@all = []


  def initialize(owner)

    @species = "human"
    @pets = {fishes: [], cats: [], dogs:[]}
    @@o_instances << self
  end


  def self.all
    @@o_instances
  end

def self.count
  @@o_instances.size

end


def self.reset_all
self.all.clear

end

def say_species
    "I am a human."
end



def buy_fish(name)
fish = Fish.new(name)

@pets[:fishes] << fish

end

def buy_cat(name)
  cat = Cat.new(name)
  @pets[:cats] << cat
end

def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
end

  def walk_dogs
   @pets[:dogs][0].mood = "happy"

end

  def play_with_cats
   @pets[:cats][0].mood = "happy"
  end

  def feed_fish
  @pets[:fishes][0].mood = "happy"
  end

  def sell_pets
  no_pets =  @pets.each do |type, pets|

    pets.each{ |a| a.mood = "nervous"}
  end
   no_pets.clear
end

  def list_pets
    fish = @pets[:fishes].size
    dog = @pets[:dogs].size
    cat = @pets[:cats].size

     "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
end


end
