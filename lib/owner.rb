class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []
  @@owners_count = 0

def initialize(name)
  @name = name
  @@owners << self
  @@owners_count += 1
  @pets = {fishes: [], cats: [], dogs: []}
end

def self.all
  @@owners
end

def pets
  @pets
end

def species(species)
  if owner
    species = "human"
  end 
end

def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes][0] = fish
    fish.owner = self
end

def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats][0] = cat
    cat.owner = self
end

def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs][0] = dog
    dog.owner = self
end

end
