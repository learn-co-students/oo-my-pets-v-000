class Owner

  attr_accessor :name, :pets
  attr_reader :species
  
  @@owners = []

  def initialize(species, pets = {fishes: [], cats: [], dogs: []})
    @species = species
    @pets = pets
    @@owners << self
  end
  
  def say_species(species)
    "I am a #{species}."
  end
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end
  
  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end
  
  def buy_fish(fish_name)
    @pets[:fish] << Fish.new(fish_name)
  end
  
  def walk_dogs
    @pets[:dogs].each do {| mood | dog.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].each do {| mood | cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fish].each do {| mood | fish.mood = "happy"}
  end
  
  def sell_pets
    @pets.each do {| type, name_array | name.array.each do | pet | pet.mood = "nervous"}
    @pets = {}
  end
      
  
#  def buy_cat/dog/fish(name)
#    @name = name
#    @pets << name
#  end


end