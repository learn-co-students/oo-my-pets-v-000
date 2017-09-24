class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count   #returns counter for number of owners
    self.all.count
  end

  def self.reset_all #returns
    self.all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    fish = 0
    dogs = 0
    cats = 0
    self.pets.each do |type, pets|
      if type == :fishes
        fish = pets.each.count
      elsif type == :dogs
        dogs = pets.each.count
      elsif type == :cats
        cats = pets.each.count
      end
    end
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

  #### ALTERNATIVE ####
  # def list_pets
  #   "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  # end

end
