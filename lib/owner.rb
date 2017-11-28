class Owner
  # code goes here
  attr_accessor :name, :species, :pets

  @@owners = []

  def initialize(name)
    @name = name
    @@owners << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    @@owners.count
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def species=(species)
    raise NoMethodError if species != "human"
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish_name)
      pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
      pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
      pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each_value {|pet| pet.each {|name| name.mood = "nervous"}}
    pets.each_value {|pet| pet.clear}
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
