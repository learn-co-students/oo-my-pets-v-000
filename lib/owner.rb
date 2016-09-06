class Owner
  @@all = []
  attr_accessor:name, :pets
  attr_reader:species
  
  def initialize(species)
      @species = species
      @@all << self
      @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
      @@all
  end
  
  def self.reset_all
      self.all.clear
  end
  
  def self.count
      self.all.size
  end
  
  def say_species
      return "I am a #{@species}."
  end
  
  def buy_fish(fish)
      new_fish = Fish.new(fish)
      self.pets[:fishes] << new_fish
  end
  
  def buy_cat(cat)
      new_cat = Cat.new(cat)
      self.pets[:cats] << new_cat
  end
  
  def buy_dog(dog)
      new_dog = Dog.new(dog)
      self.pets[:dogs] << new_dog
  end
  
  def walk_dogs
      self.pets[:dogs].collect do |dog|
          dog.mood = "happy"
      end
  end
  
  def play_with_cats
      self.pets[:cats].collect do |cat|
          cat.mood = "happy"
      end
  end
  
  def feed_fish
      self.pets[:fishes].collect do |fish|
          fish.mood = "happy"
      end
  end
  
  def sell_pets
      self.pets.collect do |animal_type, animals_array|
          animals_array.collect do |pet|
              pet.mood = "nervous"
          end
          animals_array.clear
      end
  end
  
  def list_pets
      return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
      
end