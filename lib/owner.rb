class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(name)
    @@owners << self
    @species = "human"
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@owners
  end


  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a human."
  end

  def buy_fish(new_fish)
    @pets[:fishes] <<  Fish.new(new_fish)
  end

   def buy_cat(new_cat)
    @pets[:cats] <<  Cat.new(new_cat)
  end

  def buy_dog(new_dog)
    @pets[:dogs] <<  Dog.new(new_dog)
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each{|pet| pet.mood = "nervous"}
      pets.clear
    end
  end


  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end



end