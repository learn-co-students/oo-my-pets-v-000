class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets, :mood
  @@Owners=[]
  
  def initialize(species="human")
    @species = species
    @name = name
    @@Owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
    return @@Owners
  end
  
  def self.reset_all
    @@Owners.clear
  end
  
  def self.count
    return @@Owners.count
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end
  
  def buy_dog(dog)
    @dog = dog
    @pets[:dogs] << Dog.new(dog)
  end
  
  def walk_dogs
    dogs = @pets[:dogs]
    dogs.each do |dog|
      dog.mood = "happy"
    end
    return dogs
  end
  
  def play_with_cats
    cats = @pets[:cats]
    cats.each do |cat|
      cat.mood = "happy"
    end
    return cats
  end
  
  def feed_fish
    fishes = @pets[:fishes]
    fishes.each do |fish|
      fish.mood = "happy"
    end
    return fishes
  end
  
  def sell_pets
    @pets.each do |type_of_pet, array_of_pets| 
      array_of_pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
    return @pets
  end
  
  def list_pets
    num_of_fishes = 0
    num_of_dogs = 0
    num_of_cats = 0
    
    @pets.each do |type_of_pet, array_of_pets| 
      if type_of_pet == :fishes
        num_of_fishes = array_of_pets.count
      end
      if type_of_pet == :dogs
        num_of_dogs  = array_of_pets.count
      end
      if type_of_pet == :cats
        num_of_cats = array_of_pets.count
      end
    end
    return "I have #{num_of_fishes} fish, #{num_of_dogs} dog(s), and #{num_of_cats} cat(s)."
  end
end