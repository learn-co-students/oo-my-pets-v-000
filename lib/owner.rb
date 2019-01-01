class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
end

  def say_species
  "I am a human."
  end

  def buy_fish(name_of_fish)
    fish = Fish.new(name_of_fish)
    @pets[:fishes] << fish
  end

  def buy_cat(name_of_cat)
    cat = Cat.new(name_of_cat)
    @pets[:cats] << cat
  end

  def buy_dog(name_of_dog)
    dog = Dog.new(name_of_dog)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.collect do |species, pet_instances|
       pet_instances.each do |pet|
         pet.mood = "nervous"
       end
       pet_instances.clear
     end
  end

  def list_pets
     "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
   end

end
