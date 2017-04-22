class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all_instances = []

  ###Class methods###

  def self.all
    @@all_instances
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  ###Object methods###

  def initialize(name)
    @name = name
    @pets = {fishes:[],cats:[],dogs:[]}
    @species = "human"

    Owner.all << self
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    new_fish.set_owner = self
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    new_cat.set_owner = self
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    new_dog.set_owner = self
    self.pets[:dogs] << new_dog
  end

  def say_species
    "I am a #{@species}."
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.walk}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.play}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.fed}
  end

  def sell_pets
    self.pets.each do |pet_type,pet_array|
      pet_array.each do |pet|
        pet.sold
      end
      pet_array.clear
    end
  end

  def list_pets
    out_string = "I have "
    out_string += "#{self.pets[:fishes].count} fish, "
    out_string += "#{self.pets[:dogs].count} dog(s), "
    out_string += "and #{self.pets[:cats].count} cat(s)."
  end

end
