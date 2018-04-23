class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = { :fishes => [], :cats => [], :dogs => [] }
    @@all << self
  
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.size
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(pet)
    pets[:fishes] << Fish.new(pet)
  end
  
  def buy_cat(pet)
    pets[:cats] << Cat.new(pet)
  end
  
  def buy_dog(pet)
    pets[:dogs] << Dog.new(pet)
  end
  
  def walk_dogs
    pets[:dogs].each do | dog |
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    pets[:cats].each do | cat |
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    pets[:fishes].each do | fish |
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    pets.each do | species, animal |
      animal.each do | name |
        name.mood = "nervous"
      end
      animal.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  
end