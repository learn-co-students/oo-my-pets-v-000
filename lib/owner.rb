class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self

  end

def self.all
  @@all
end

def self.reset_all
  self.all.clear
end

def self.count
  total_owners = self.all
  total_owners.count
end

def say_species
  "I am a #{@species}."
end

def buy_fish(fish)
  new_fish = Fish.new(fish)
  @pets[:fishes] << new_fish

end

def buy_cat(cat)
  new_cat = Cat.new(cat)
  @pets[:cats] << new_cat

end

def buy_dog(dog)
  new_dog = Dog.new(dog)
  @pets[:dogs] << new_dog

end

def walk_dogs
  walked_dog = @pets[:dogs]
  walked_dog.each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  cats = @pets[:cats]
  cats.each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  fish = @pets[:fishes]
  fish.each do |fish|
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
    fish_count = @pets[:fishes].length
    cat_count = @pets[:cats].length
    dog_count = @pets[:dogs].length

    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."

  end

end
