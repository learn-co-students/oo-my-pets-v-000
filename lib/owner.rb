class Owner
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
    self.class.all << self unless self.class.all.include?(self)
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish unless self.pets[:fishes].include?(fish)
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat unless self.pets[:cats].include?(cat)
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog unless self.pets[:dogs].include?(dog)
  end

  def set_pets_mood(species, mood)
    # species should be a symbol (:dogs, :cats, :fishes) and mood a string
    self.pets[species].each {|pet| pet.mood = mood}
  end

  def walk_dogs
    self.set_pets_mood(:dogs, "happy")
  end

  def play_with_cats
    self.set_pets_mood(:cats, "happy")
  end

  def feed_fish
    self.set_pets_mood(:fishes, "happy")
  end

  def sell_pets
    self.pets.each do |species, pets|
      self.set_pets_mood(species, "nervous")
      pets.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

end

# class Car
#   attr_accessor :gas, :speed, :nickname
#   attr_reader :make, :model
#
#   @@all = []
#
#   def initialize(make, model)
#     @make = make
#     @model = model
#   end
#
#   def self.manufacture(make="Prototype", model="Test Model")
#     car = self.new(make, model)
#     car.save
#     car
#   end
#
#   def drive(distance)
#     puts "You got there in #{distance / self.speed} hours."
#   end
#
#   private
#
#   def save
#     @@all << self unless @@all.include?(self)
#   end
# end
