class Owner
  OWNERS = []
  attr_accessor :name, :pets
  attr_reader :species, :mood


#class methods

  def self.all
    OWNERS
  end

  def self.count
      OWNERS.size
  end

  def initialize(species)
      @species = species
      OWNERS << self
      @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.reset_all
    OWNERS.clear
  end

   #instance methods

  def mood=(mood)
      @mood = mood
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
        pets[:fishes] << Fish.new(name)
  end

  def feed_fish
      pets[:fishes].each do |fishes|
      fishes.mood = "happy"
    end
  end

  def buy_cat(name)
        pets[:cats] << Cat.new(name)
  end

  def play_with_cats
    pets[:cats].each do |cats|
      cats.mood = "happy"
    end
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dogs|
      dogs.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animal|
      animal.each do |animal|
        animal.mood = "nervous"
      end
      animal.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end
