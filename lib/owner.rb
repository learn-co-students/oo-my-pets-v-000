class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@Owners = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@Owners << self
  end

  def self.count
    @@Owners.size
  end

  def say_species
     "I am a #{@species}."
  end

  def self.all
    @@Owners
  end

  def self.reset_all
    @@Owners.clear
  end

  def buy_fish(name)
    pet = Fish.new(name)
    @pets[:fishes] << pet
  end

  def buy_cat(name)
		pet = Cat.new(name)
		@pets[:cats] << pet
	end

	def buy_dog(name)
		pet = Dog.new(name)
		@pets[:dogs] << pet
	end

  def walk_dogs
    self.pets[:dogs].map! { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].map! { |dog| dog.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].map! { |dog| dog.mood = "happy"}
  end

  def sell_pets
    self.pets.map do |species, pets|
      pets.map! { |pet| pet.mood = "nervous" }
    end
    self.pets.clear
  end

  def list_pets
     "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
