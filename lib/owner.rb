require 'pry'
class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def species(species = "human")
    @species = species
  end

  def say_species
    return "I am a #{self.species}."
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

  def change_mood(pet_kind, mood)
    self.pets[pet_kind].each {|pet| pet.mood=mood}
  end

  def walk_dogs
    change_mood(:dogs, "happy")
  end

  def play_with_cats
    change_mood(:cats, "happy")
  end

  def feed_fish
    change_mood(:fishes, "happy")
  end

  def reset_pets
    self.pets.each_key{|pet_kind| self.pets[:"#{pet_kind}"].clear}
  end

  def sell_pets
    self.pets.each_key{|pet_kind| change_mood(:"#{pet_kind}", "nervous")}
    reset_pets
  end

  def pet_count
    pet_count = []
    self.pets.each_key{|pet_kind| pet_count << self.pets[:"#{pet_kind}"].count}
    pet_count
  end

  def list_pets
    pet_count = self.pet_count
    return "I have #{pet_count[0]} fish, #{pet_count[1]} dog(s), and #{pet_count[2]} cat(s)."
  end

end
