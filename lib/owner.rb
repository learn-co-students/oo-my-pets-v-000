class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  #instance methods

  def initialize(name)
    self.name = name
    @species = "human"
    self.pets = {:fishes => [], :dogs => [], :cats => []}
    self.save
  end

  def save
    self.class.all.push(self)
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    self.pets[:fishes].push(Fish.new(fish))
  end

  def buy_cat(cat)
    self.pets[:cats].push(Cat.new(cat))
  end

  def buy_dog(dog)
    self.pets[:dogs].push(Dog.new(dog))
  end

  def walk_dogs
    self.pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |species, pets_array|
      pets_array.each{|pet| pet.mood = "nervous"}
      pets_array.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

  #class methods

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

end
