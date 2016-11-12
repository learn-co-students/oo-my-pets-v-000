class Owner
  # code goes here
@@owners = []

attr_accessor :pets, :owner, :fish, :name, :count
attr_reader :species

def species
  @species = "human"
end

def say_species
  "I am a #{species}."
end

  def initialize(owner)
    @owner = owner
    @@owners << self
  @pets =  {fishes: [], cats: [], dogs: []}

end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end


  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def walk_dogs
@pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def sell_pets
    @pets.each do |key, value|
      value.each do |animal|
        animal.mood = "nervous"
      end
    value.clear
      end
  end

  def self.count
    @@owners.count
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
