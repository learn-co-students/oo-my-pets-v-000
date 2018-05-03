class Owner

  attr_accessor :name, :pets, :say_species, :buy_fish, :buy_cat, :buy_dog, :walk_dogs, :play_with_cats, :feed_fish, :sell_pets, :list_pets
  attr_reader :species

@@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end

def self.all
  @@all
end

def save
  @@all << self
end

def reset_all
  @@all.clear
end

end
