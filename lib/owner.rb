class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def species
    @species = "human"
  end
  
  def say_species
    return "I am a #{species}."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
  end
  
  def walk_dogs
    pets[:dogs].map {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    pets[:cats].map {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].map {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    pets.map do |type, pets_of_type|
      pets_of_type.map do |pet| 
        pet.mood = "nervous"
      end
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end