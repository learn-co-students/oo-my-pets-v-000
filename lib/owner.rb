class Owner
  # Class Methods
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all_owners << self
  end
  
  @@all_owners = []
  
  def self.all
    @@all_owners
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  # Instance Methods
  attr_reader :species
  
  def say_species
    return "I am a #{@species}."
  end
  
  attr_accessor :name, :pets
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def walk_dogs
    @pets[:dogs].collect! {|dog| dog.mood = "happy"}
  end
    
  def play_with_cats
    @pets[:cats].collect! {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].collect! {|fish| fish.mood = "happy"}
  end
    
  def sell_pets
    @pets.collect do |pet_key, pet_array|
      pet_array.collect do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.collect do |pet_key, pet_array|
      pet_array.clear
    end
  end
    
  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end