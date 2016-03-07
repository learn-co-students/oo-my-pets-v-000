class Owner
  attr_accessor :name, :pets
  attr_reader :species
  OWNERS = []

  def initialize(species)
    @species = species
    self.class.all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
#///CLASS METHODS ///#
  def self.all
    OWNERS
  end
  def self.reset_all
    OWNERS.clear
  end
  def self.count
    OWNERS.length
  end

#///INSTANCE METHODS ///#
  def say_species
    "I am a #{@species}."
  end
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end
  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood="happy"}
  end
  def sell_pets
    @pets.each do |type, pets|
      pets.each {|i_pet| i_pet.mood = "nervous"}
      pets.clear
    end
  end
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end