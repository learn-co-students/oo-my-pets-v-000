class Owner
  attr_reader :species
  attr_accessor :name
  attr_accessor :pets
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    self.class.all << self
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    pets[:dogs].each do |pet|
      pet_mood(pet, 'happy')
    end
  end

  def play_with_cats
    pets[:cats].each do |pet|
      pet_mood(pet, 'happy')
    end
  end

  def feed_fish
    pets[:fishes].each do |pet|
      pet_mood(pet, 'happy')
    end
  end
  
  def list_pets
    fish = pets[:fishes].size
    cats = pets[:cats].size
    dogs = pets[:dogs].size
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
  
  def sell_pets
    pets.each do |type, pets|
      pets.each { |pet| pet_mood(pet, 'nervous') }
      pets.clear
    end
  end
  
  def pet_mood(pet, mood)
    pet.mood = mood
  end
  
  class << self
    def all
      @@all
    end
    
    def reset_all
      @@all.clear
    end
    
    def count
      all.length
    end
  end
  
  private :pet_mood
end